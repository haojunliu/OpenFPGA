#include "htif_phy.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <map>
#include "common.h"
#include "emulator.h"
#include "mm_emulator.cc"
#include "Top.h" // chisel-generated code...
#include "disasm.h"

int main(int argc, char** argv)
{
  int fromhost_fd = -1, tohost_fd = -1;
  unsigned random_seed = (unsigned)time(NULL) ^ (unsigned)getpid();
  uint64_t max_cycles = 0;
  uint64_t trace_count = 0;
  int start = 0;
  bool log = false;
  bool quiet = false;
  const char* vcd = NULL;
  const char* loadmem = NULL;
  FILE *vcdfile = NULL, *logfile = stderr;
  const char* failure = NULL;

  // for disassembly
  disassembler disasm;
  char if_inst_str[1024];
  char id_inst_str[1024];
  char ex_inst_str[1024];
  char mem_inst_str[1024];
  char wb_inst_str[1024];

  // used to register values from EX stage for trace
  uint64_t mem_reg_raddr1 = 0, mem_reg_raddr2 = 0;
  uint64_t wb_reg_raddr1 = 0, wb_reg_raddr2 = 0;
  uint64_t mem_reg_rs1 = 0, mem_reg_rs2 = 0, mem_reg_inst = 0, ex_reg_inst = 0;
  uint64_t wb_reg_rs1 = 0, wb_reg_rs2 = 0, wb_reg_inst = 0;
  uint64_t id_icache_miss = 0, if_icache_req = 0, id_itlb_miss = 0;

  for (int i = 1; i < argc; i++)
  {
    std::string arg = argv[i];
    if (arg == "-l")
      log = true;
    else if (arg == "-q")
      quiet = true;
    else if (arg.substr(0, 2) == "-v")
      vcd = argv[i]+2;
    else if (arg.substr(0, 2) == "-m")
      max_cycles = atoll(argv[i]+2);
    else if (arg.substr(0, 2) == "-s")
      random_seed = atoi(argv[i]+2);
    else if (arg.substr(0, 10) == "+fromhost=")
      fromhost_fd = atoi(argv[i]+10);
    else if (arg.substr(0, 8) == "+tohost=")
      tohost_fd = atoi(argv[i]+8);
    else if (arg.substr(0, 9) == "+loadmem=")
      loadmem = argv[i]+9;
    else
    {
      fprintf(stderr, "unknown option: %s\n", argv[i]);
      exit(1);
    }
  }

  demand(fcntl(fromhost_fd,F_GETFD) >= 0, "fromhost file not open");
  demand(fcntl(tohost_fd,F_GETFD) >= 0, "tohost file not open");

  if (vcd)
  {
    // Create a VCD file
    vcdfile = strcmp(vcd, "-") == 0 ? stdout : fopen(vcd, "w");
    assert(vcdfile);
    fprintf(vcdfile, "$scope module Testbench $end\n");
    fprintf(vcdfile, "$var reg 256 NDISASM_IF if_instruction $end\n");
    fprintf(vcdfile, "$var reg 256 NDISASM_ID id_instruction $end\n");
    fprintf(vcdfile, "$var reg 256 NDISASM_EX ex_instruction $end\n");
    fprintf(vcdfile, "$var reg 256 NDISASM_MEM mem_instruction $end\n");
    fprintf(vcdfile, "$var reg 16 NCYCLE cycle $end\n");
    fprintf(vcdfile, "$upscope $end\n");
  }

  // basic fixed latency memory model
  uint64_t* mem = mm_init();
  if (loadmem != NULL)
  {
    load_mem(mem, loadmem);
  }

  // The chisel generated code
  Top_t tile;
  srand(random_seed);
  tile.init(random_seed != 0);

  // reset for a few cycles to support pipelined reset
  tile.Top__io_host_in_valid = LIT<1>(0);
  tile.Top__io_host_out_ready = LIT<1>(0);
  for (int i = 0; i < 10; i++)
  {
    tile.clock_lo(LIT<1>(1));
    tile.clock_hi(LIT<1>(1));
  }

  htif_phy_t htif_phy(tile.Top__io_host_in_bits.width(), fromhost_fd, tohost_fd);

  while (max_cycles == 0 || trace_count < max_cycles)
  {
    // memory model
    mm_tick_emulator (
      tile.Top__io_mem_req_cmd_valid.lo_word(),
      &tile.Top__io_mem_req_cmd_ready.values[0],
      tile.Top__io_mem_req_cmd_bits_rw.lo_word(),
      tile.Top__io_mem_req_cmd_bits_addr.lo_word(),
      tile.Top__io_mem_req_cmd_bits_tag.lo_word(),

      tile.Top__io_mem_req_data_valid.lo_word(),
      &tile.Top__io_mem_req_data_ready.values[0],
      &tile.Top__io_mem_req_data_bits_data.values[0],

      &tile.Top__io_mem_resp_valid.values[0],
      &tile.Top__io_mem_resp_bits_tag.values[0],
      &tile.Top__io_mem_resp_bits_data.values[0]
    );


    tile.Top__io_host_in_valid = LIT<1>(htif_phy.in_valid());
    tile.Top__io_host_in_bits = LIT<64>(htif_phy.in_bits());
    tile.Top__io_host_out_ready = LIT<1>(htif_phy.out_ready());

    tile.clock_lo(LIT<1>(0));

    htif_phy.tick(tile.Top__io_host_in_ready.lo_word(),
                  tile.Top__io_host_out_valid.lo_word(),
                  tile.Top__io_host_out_bits.lo_word());

  
    if (tile.Top__io_debug_error_mode.lo_word())
    {
      failure = "entered error mode";
      break;
    }

    if (log || (quiet && trace_count % 10000 == 0))
    {
      insn_t insn;
      insn.bits = tile.Top_SodorTile_cpu_d__io_dat_inst.lo_word();
      strcpy(if_inst_str, disasm.disassemble(insn).c_str());


      fprintf(logfile, "Cyc=%5lu  ", trace_count);
      fprintf(logfile, "PC= 0x%3lx: ", (uint64_t) tile.Top_SodorTile_cpu_d__pc_reg.lo_word());
      fprintf(logfile, "s=%d ", (uint64_t) tile.Top_SodorTile_cpu_d__io_ctl_stall.lo_word());
//      fprintf(logfile, "IC resp=%d ", (uint64_t) tile.Top_SodorTile_icache__io_cpu_resp_val.lo_word());
//      fprintf(logfile, " %8x  ", insn.bits);
      fprintf(logfile, "  %-32s ", if_inst_str);



      fprintf(logfile, " %s ", tile.Top_SodorTile_cpu_c__io_ctl_pc_sel.lo_word() == 0 ? "  "
                             : tile.Top_SodorTile_cpu_c__io_ctl_pc_sel.lo_word() == 1 ? "BR"
                             : tile.Top_SodorTile_cpu_c__io_ctl_pc_sel.lo_word() == 2 ? "J "
                             : tile.Top_SodorTile_cpu_c__io_ctl_pc_sel.lo_word() == 3 ? "JR"
                             : tile.Top_SodorTile_cpu_c__io_ctl_pc_sel.lo_word() == 4 ? "EX"
                             : "???"
                             );

      fprintf(logfile, "c: %d ", tile.Top_SodorTile_cpu_c__io_ctl_exc_cause.lo_word());
      fprintf(logfile, "e: %d ", tile.Top_SodorTile_cpu_c__exception.lo_word());
//      fprintf(logfile, "sys: %d ", tile.Top_SodorTile_cpu_c__cs_syscall.lo_word());
//      fprintf(logfile, "ill: %d ", tile.Top_SodorTile_cpu_c__exc_illegal.lo_word());



//      fprintf(logfile, "ra=[ 0x%lx ] ",(uint64_t) tile.Top_SodorTile_cpu_d__regfile.get(LIT<5>(1)).to_ulong());
//      fprintf(logfile, "v0=[ 0x%lx ] ",(uint64_t) tile.Top_SodorTile_cpu_d__regfile.get(LIT<5>(2)).to_ulong());
//      fprintf(logfile, "v1=[ 0x%lx ] ",(uint64_t) tile.Top_SodorTile_cpu_d__regfile.get(LIT<5>(3)).to_ulong());
//    fprintf(logfile, "RS1=[ 0x%8lu ] ",(uint64_t) tile.Top_SodorTile_cpu_d__rs1_data.to_ulong());
//    fprintf(logfile, "RS2=[ 0x%8lu ] ",(uint64_t) tile.Top_SodorTile_cpu_d__rs2_data.to_ulong());
//    fprintf(logfile, "WR[ %2llu= 0x%8llu ]  ", (uint64_t) tile.Top_SodorTile_cpu_d__wb_addr.to_ulong(),
//    (uint64_t) tile.SodorTile_cpu_d__wb_data.to_ulong());
//    fprintf(logfile, "Mem.rdata=[ 0x%8lx ] ", (uint64_t) tile.Top_SodorTile_cpu__dmem_rdata.to_ulong());
//    fprintf(logfile, "Mem.wdata=[ 0x%8lx ]  ", (uint64_t) tile.Top_SodorTile_cpu__dmem_wdata.to_ulong());
//      fprintf(logfile, "To-Host: %x  ", (uint32_t) tile.Top_SodorTile_cpu_d_pcr__reg_tohost.to_ulong());
      fprintf(logfile, "H:%x ", (uint32_t) tile.Top_SodorTile_cpu_d_pcr__reg_tohost.to_ulong());
      fprintf(logfile, "F:%x ", (uint32_t) tile.Top_SodorTile_cpu_d_pcr__reg_fromhost.to_ulong());
      
      fprintf(logfile, "DC-[ addr:0x%8x ] ", tile.Top_SodorTile_dcache__io_cpu_req_addr.lo_word());
//      fprintf(logfile, "(tag:0x%5x ", tile.Top_SodorTile_dcache__req_tag.lo_word());
//      fprintf(logfile, "ridx:%2d ", tile.Top_SodorTile_dcache__req_idx.lo_word());
//      fprintf(logfile, "sidx:%2d ", tile.Top_SodorTile_dcache__cpu_rw_idx.lo_word());
//      fprintf(logfile, "bshft:%3d ) ", tile.Top_SodorTile_dcache__bit_shift_amt.lo_word());
//      fprintf(logfile, "val:%d ", tile.Top_SodorTile_dcache__io_cpu_req_val.lo_word());
//      fprintf(logfile, "rw:%d ", tile.Top_SodorTile_dcache__io_cpu_req_rw.lo_word());
//      fprintf(logfile, "rw:%d ", tile.Top_SodorTile_dcache__io_cpu_req_type.lo_word());
      fprintf(logfile, "resp:%d ", (uint64_t) tile.Top_SodorTile_dcache__io_cpu_resp_val.lo_word());
      fprintf(logfile, "rdat:0x%8x ", tile.Top_SodorTile_cpu_d__io_dmem_resp_data.lo_word());
      fprintf(logfile, "wdat:0x%8x ", tile.Top_SodorTile_cpu_d__io_dmem_req_wdata.lo_word());
//      fprintf(logfile, "wdat:0x%8x ", tile.Top_SodorTile_dcache__wdata.lo_word());
//      fprintf(logfile, "msk:0x%x ", tile.Top_SodorTile_dcache__wmask.lo_word());

      fprintf(logfile, "p.re:%d ", tile.Top_SodorTile_cpu_d_pcr__io_r_en.lo_word());
      fprintf(logfile, "wa:%d ", tile.Top_SodorTile_cpu_d_pcr__waddr.lo_word());
      fprintf(logfile, "hr:%d ", tile.Top_SodorTile_cpu_d_pcr__io_host_pcr_req_valid.lo_word());
      fprintf(logfile, "rw %d ", tile.Top_SodorTile_cpu_d_pcr__io_host_pcr_req_bits_rw.lo_word());
      
      dat_t<128> cache_line;
      cache_line.values[0] = tile.Top_SodorTile_icache__data_array.get(0, 0); 
      cache_line.values[1] = tile.Top_SodorTile_icache__data_array.get(0, 1); 
//      fprintf(logfile, "IC[0]:");
//      fprintf(logfile, " 0x%lx ", cache_line.values[0]);
//      fprintf(logfile, " 0x%lx ", cache_line.values[1]);
//      fprintf(logfile, "IC[1]:");
      cache_line.values[0] = tile.Top_SodorTile_icache__data_array.get(1, 0); 
      cache_line.values[1] = tile.Top_SodorTile_icache__data_array.get(1, 1); 
//      fprintf(logfile, " 0x%lx ", cache_line.values[0]);
//      fprintf(logfile, " 0x%lx ", cache_line.values[1]);
      
      fprintf(logfile, " IC:%s "
               , tile.Top_SodorTile_icache__state.lo_word() == 0x0 ? "RST"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x1 ? "RDY"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x2 ? "REQ"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x3 ? "RWT"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x4 ? "RFL"
               : "????"
               );
      
      fprintf(logfile, " DC:%s "
               , tile.Top_SodorTile_dcache__state.lo_word() == 0x0 ? "RST"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x1 ? "RDY"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x2 ? "REQ"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x3 ? "WBK"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x4 ? "WWT"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x5 ? "RWT"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x6 ? "RFL"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x7 ? "FLS" 
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x8 ? "FLE"
               : "????"
               );

//      fprintf(logfile, "eb:0x%x ", tile.Top_SodorTile_cpu_d_pcr__reg_ebase.lo_word());
//      fprintf(logfile, "f:%d ", tile.Top_SodorTile_dcache__performing_flush.lo_word());
//      fprintf(logfile, "v:0x%x ", tile.Top_SodorTile_dcache__valid_array.lo_word());
//      fprintf(logfile, "d:0x%x ", tile.Top_SodorTile_dcache__dirty_array.lo_word());
//      fprintf(logfile, "msk:%d", tile.Top_SodorTile_dcache__io_cpu_req_mask.lo_word());
//      fprintf(logfile, "exc:%d", tile.Top_SodorTile_cpu_d_pcr__io_exception.lo_word());
//      fprintf(logfile, "wbc:%d ", tile.Top_SodorTile_dcache__wb_counter.lo_word());
//      fprintf(logfile, "wbi:%d ", tile.Top_SodorTile_dcache__wb_idx.lo_word());
//      fprintf(logfile, "rfi:%d ", tile.Top_SodorTile_dcache__refill_idx.lo_word());
//      fprintf(logfile, "fq_r:%d ", tile.Top_SodorTile_dcache_finish_queue__io_enq_ready.lo_word());
//      fprintf(logfile, "xr_val:%d ", tile.Top_SodorTile_dcache__io_mem_xact_rep_valid.lo_word());
      
//      fprintf(logfile, "%s", tile.Top_SodorTile__io_host_debug_error_mode.lo_word() == 1 ? " E" : "");

      fprintf(logfile, "\n");

//      if (cycles == 20)
//      {
//         for (int i=0; i < 4; i++)
//         {
//            fprintf(logfile, "tag[%d]=%d\n" 
//            , i 
//            , tile.Top_SodorTile_dcache__tag_array.get(LIT<2>(i), 0));
//         }
//      }

    }

    if (vcd)
    {
      tile.dump(vcdfile, trace_count); // dump all signals to vcd
      
      #define dump_disasm(inst, name) do { \
        insn_t insn; \
        insn.bits = inst; \
        std::string dasm = disasm.disassemble(insn); \
        int namelen = strlen(name), pos = 0; \
        char str[1 + dasm.length()*8 + 1 + namelen + 1 + 1]; \
        str[pos++] = 'b'; \
        for (size_t i = 0; i < dasm.length()*8; i++) \
          str[pos++] = ((dasm[i/8] >> (7-(i%8))) & 1) + '0'; \
        str[pos++] = ' '; \
        memcpy(str + pos, name, namelen); pos += namelen; \
        str[pos++] = '\n'; \
        str[pos] = 0; \
        fputs(str, vcdfile); \
      } while(0)
//      dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst_shadow.lo_word(), "NDISASM_IF");
//      dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst.lo_word(), "NDISASM_ID");
      dump_disasm(tile.Top_SodorTile_cpu_d__inst.lo_word(), "NDISASM_EX");
//      dump_disasm(tile.Top_SodorTile_cpu_d__inst.lo_word(), "NDISASM");
//      dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst.lo_word(), "NDISASM_ID");
//      dump_disasm(ex_reg_inst, "NDISASM_EX");
//      dump_disasm(mem_reg_inst, "NDISASM_MEM");

      dat_dump(vcdfile, dat_t<64>(trace_count), "NCYCLE\n");
    }

    // delay values from ex stage for trace output on the following cycle
    wb_reg_inst = mem_reg_inst;
    wb_reg_raddr1 = mem_reg_raddr1;
    wb_reg_raddr2 = mem_reg_raddr2;
    wb_reg_rs1 = mem_reg_rs1;
    wb_reg_rs2 = mem_reg_rs2;

    mem_reg_inst = ex_reg_inst;
    mem_reg_raddr1 = (mem_reg_inst >> 22) & 0x1f;
    mem_reg_raddr2 = (mem_reg_inst >> 17) & 0x1f;
//    mem_reg_rs1 = tile.Top_Tile_cpu_dpath__ex_reg_rs1.lo_word();
//    mem_reg_rs2 = tile.Top_Tile_cpu_dpath__ex_reg_rs2.lo_word();

//    ex_reg_inst = tile.Top_Tile_cpu_dpath__id_reg_inst.lo_word();
    ex_reg_inst = tile.Top_SodorTile_cpu_d__inst.lo_word();

    tile.clock_hi(LIT<1>(0));
    trace_count++;

    if (trace_count == max_cycles)
    {
      failure = "timeout";
      break;
    }
  }

  if (vcd)
    fclose(vcdfile);

  if (failure)
  {
    fprintf(logfile, "*** FAILED *** (%s) after %lld cycles\n", failure, (long long)trace_count);
    return -1;
  }

  close(tohost_fd);
  close(fromhost_fd);

  return 0;
}
