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
  char inst_str[1024];

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



   if (log)
   {
      fprintf(logfile, "\n***** HTIF start *****\n\n");
   }


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
         strcpy(inst_str, disasm.disassemble(insn).c_str());
         char op_str[6];
         memcpy(op_str, inst_str, 5);
         op_str[5] = '\0';
            
         uint32_t pc  = ((uint32_t) tile.Top_SodorTile_cpu_d__regfile_32.lo_word());
         uint32_t upc =  tile.Top_SodorTile_cpu_c__upc_state.lo_word();

         // Micro-PC == 0 is Fetch0 (when we start fetching a new instruction)
         if (upc == 0)
            fprintf(logfile, "\n");

         fprintf(logfile, "Cycle=%5d  ", trace_count);
         
         fprintf(logfile, "PCReg=( 0x%3x ) InstReg=[ 0x%8x : %-30s ] ", pc, insn.bits, inst_str);
         fprintf(logfile, "UPC=%3d ", upc);
         
         fprintf(logfile, "(MA=%04llx) ", (uint64_t) tile.Top_SodorTile_cpu_d__reg_ma.to_ulong());
         fprintf(logfile, "EnM=%d ",      (uint32_t) tile.Top_SodorTile_cpu_d__io_ctl_en_mem.lo_word());
         fprintf(logfile, "RegAddr=%2d ", (uint32_t) tile.Top_SodorTile_cpu_d__reg_addr.lo_word());
         fprintf(logfile, "Bus=0x%08llx ",(uint64_t) tile.Top_SodorTile_cpu_d__bus.to_ulong());
         fprintf(logfile, "A=0x%08llx ",  (uint64_t) tile.Top_SodorTile_cpu_d__reg_a.to_ulong());
         fprintf(logfile, "B=0x%08llx ",  (uint64_t) tile.Top_SodorTile_cpu_d__reg_b.to_ulong());
         fprintf(logfile, "To-Host: %x  ", (uint32_t) tile.Top_SodorTile_cpu_d_pcr__reg_tohost.to_ulong());
      
         fprintf(logfile, " DC:%s "
            , tile.Top_SodorTile_cache__state.lo_word() == 0x0 ? "RESET"
            : tile.Top_SodorTile_cache__state.lo_word() == 0x1 ? "READY"
            : tile.Top_SodorTile_cache__state.lo_word() == 0x2 ? "REQ  "
            : tile.Top_SodorTile_cache__state.lo_word() == 0x3 ? "WRBCK"
            : tile.Top_SodorTile_cache__state.lo_word() == 0x4 ? "WWAIT"
            : tile.Top_SodorTile_cache__state.lo_word() == 0x5 ? "RWAIT"
            : tile.Top_SodorTile_cache__state.lo_word() == 0x6 ? "REFIL"
            : "????"
            );

         fprintf(logfile, "\n");
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

         dat_dump(vcdfile, dat_t<64>(trace_count), "NCYCLE\n");
      }


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
