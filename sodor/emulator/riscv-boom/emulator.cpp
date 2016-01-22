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
#include "oootracer.h"
 

//#define BR_STATS
#define DEBUG

//#define WBSTUFF
#ifdef DEBUG
   #define FREELIST
   #define IW
   #define RENAME
   
   #define FETCH_BUFFER
   #define ROB
   #define IW_4
   //#define IW_8
   #define LSQ

   // these are pretty much mutually exclusive
   #define DC_WRAPPER
   #define RENAME_TABLE
   // aka the register file
//   #define ICACHE
//   #define DCACHE
   
//   #define PREDICTIONQUEUE
#endif

         
 
static const char* xpr_to_string[] = {
  "x0", "ra", "v0", "v1", "a0", "a1", "a2", "a3",
  "a4",   "a5", "a6", "a7", "t0", "t1", "t2", "t3",
  "t4",   "t5", "t6", "t7", "s0", "s1", "s2", "s3",
  "s4",   "s5", "s6", "s7", "s8", "s9", "sp", "tp"
};


// map from isa register to physical, then get bsy
// because of how Chisel generates vectors, requires some wonkiness to access them
#define GET_LREG_TO_PREG_MAPPING(_a) ((int) tile->Top_SodorTile_cpu_d__map_table_elements_##_a.lo_word()) 
#define IS_PREG_BSY(_a) ((bool) tile->Top_SodorTile_cpu_d_bsy_table__table_bsy_##_a.lo_word())

bool isISARegBusy(const int isareg, Top_t *tile)
{
//   if (isareg != 26)
//      return 0;

//   fprintf(stderr, "\nisareg: %d\n", isareg);

   int physreg = -1;
   switch (isareg)
   {
      case 0: physreg = GET_LREG_TO_PREG_MAPPING(0)  ; break;
      case 1: physreg = GET_LREG_TO_PREG_MAPPING(1)  ; break;
      case 2: physreg = GET_LREG_TO_PREG_MAPPING(2)  ; break;
      case 3: physreg = GET_LREG_TO_PREG_MAPPING(3)  ; break;
      case 4: physreg = GET_LREG_TO_PREG_MAPPING(4)  ; break;
      case 5: physreg = GET_LREG_TO_PREG_MAPPING(5)  ; break;
      case 6: physreg = GET_LREG_TO_PREG_MAPPING(6)  ; break;
      case 7: physreg = GET_LREG_TO_PREG_MAPPING(7)  ; break;
      case 8: physreg = GET_LREG_TO_PREG_MAPPING(8)  ; break;
      case 9: physreg = GET_LREG_TO_PREG_MAPPING(9)  ; break;
      case 10: physreg = GET_LREG_TO_PREG_MAPPING(10); break;
      case 11: physreg = GET_LREG_TO_PREG_MAPPING(11); break;
      case 12: physreg = GET_LREG_TO_PREG_MAPPING(12); break;
      case 13: physreg = GET_LREG_TO_PREG_MAPPING(13); break;
      case 14: physreg = GET_LREG_TO_PREG_MAPPING(14); break;
      case 15: physreg = GET_LREG_TO_PREG_MAPPING(15); break;
      case 16: physreg = GET_LREG_TO_PREG_MAPPING(16); break;
      case 17: physreg = GET_LREG_TO_PREG_MAPPING(17); break;
      case 18: physreg = GET_LREG_TO_PREG_MAPPING(18); break;
      case 19: physreg = GET_LREG_TO_PREG_MAPPING(19); break;
      case 20: physreg = GET_LREG_TO_PREG_MAPPING(20); break;
      case 21: physreg = GET_LREG_TO_PREG_MAPPING(21); break;
      case 22: physreg = GET_LREG_TO_PREG_MAPPING(22); break;
      case 23: physreg = GET_LREG_TO_PREG_MAPPING(23); break;
      case 24: physreg = GET_LREG_TO_PREG_MAPPING(24); break;
      case 25: physreg = GET_LREG_TO_PREG_MAPPING(25); break;
      case 26: physreg = GET_LREG_TO_PREG_MAPPING(26); break;
      case 27: physreg = GET_LREG_TO_PREG_MAPPING(27); break;
      case 28: physreg = GET_LREG_TO_PREG_MAPPING(28); break;
      case 29: physreg = GET_LREG_TO_PREG_MAPPING(29); break;
      case 30: physreg = GET_LREG_TO_PREG_MAPPING(30); break;
      case 31: physreg = GET_LREG_TO_PREG_MAPPING(31); break;
   }

//   fprintf(stderr, "\n  preg: %d ", physreg);
//   int is_bsy = 0;

//   fprintf(stderr, "p5:%d, p6:%d, p7:%d\n", IS_PREG_BSY(5), 
//      IS_PREG_BSY(6),
//      IS_PREG_BSY(7));


   switch (physreg)
   {
      case 0: return IS_PREG_BSY(0);
      case 1: return IS_PREG_BSY(1);
      case 2: return IS_PREG_BSY(2);
      case 3: return IS_PREG_BSY(3);
      case 4: return IS_PREG_BSY(4);
      case 5: return IS_PREG_BSY(5);
      case 6: return IS_PREG_BSY(6);
      case 7: return IS_PREG_BSY(7);
      case 8: return IS_PREG_BSY(8);
      case 9: return IS_PREG_BSY(9);
      case 10: return IS_PREG_BSY(10);
      case 11: return IS_PREG_BSY(11);
      case 12: return IS_PREG_BSY(12);
      case 13: return IS_PREG_BSY(13);
      case 14: return IS_PREG_BSY(14);
      case 15: return IS_PREG_BSY(15);
      case 16: return IS_PREG_BSY(16);
      case 17: return IS_PREG_BSY(17);
      case 18: return IS_PREG_BSY(18);
      case 19: return IS_PREG_BSY(19);
      case 20: return IS_PREG_BSY(20);
      case 21: return IS_PREG_BSY(21);
      case 22: return IS_PREG_BSY(22);
      case 23: return IS_PREG_BSY(23);
      case 24: return IS_PREG_BSY(24);
      case 25: return IS_PREG_BSY(25);
      case 26: return IS_PREG_BSY(26);
      case 27: return IS_PREG_BSY(27);
      case 28: return IS_PREG_BSY(28);
      case 29: return IS_PREG_BSY(29);
      case 30: return IS_PREG_BSY(30);
      case 31: return IS_PREG_BSY(31);
      case 32: return IS_PREG_BSY(32);
      case 33: return IS_PREG_BSY(33);
      case 34: return IS_PREG_BSY(34);
      case 35: return IS_PREG_BSY(35);
      case 36: return IS_PREG_BSY(36);
      case 37: return IS_PREG_BSY(37);
      case 38: return IS_PREG_BSY(38);
      case 39: return IS_PREG_BSY(39);
      case 40: return IS_PREG_BSY(40);
      case 41: return IS_PREG_BSY(41);
      case 42: return IS_PREG_BSY(42);
      case 43: return IS_PREG_BSY(43);
      case 44: return IS_PREG_BSY(44);
      case 45: return IS_PREG_BSY(45);
      case 46: return IS_PREG_BSY(46);
      case 47: return IS_PREG_BSY(47);
      case 48: return IS_PREG_BSY(48);
      case 49: return IS_PREG_BSY(49);
      case 50: return IS_PREG_BSY(50);
      case 51: return IS_PREG_BSY(51);
      case 52: return IS_PREG_BSY(52);
      case 53: return IS_PREG_BSY(53);
      case 54: return IS_PREG_BSY(54);
      case 55: return IS_PREG_BSY(55);
      case 56: return IS_PREG_BSY(56);
      case 57: return IS_PREG_BSY(57);
      case 58: return IS_PREG_BSY(58);
      case 59: return IS_PREG_BSY(59);
      case 60: return IS_PREG_BSY(60);
      case 61: return IS_PREG_BSY(61);
      case 62: return IS_PREG_BSY(62);
      case 63: return IS_PREG_BSY(63);
      default: return 0;
   }
}



                    
 
static const char* genMask(int mask)
{
   switch(mask)
   {
      case 0: return "0000";
      case 1: return "0001";
      case 2: return "0010";
      case 3: return "0011";
      case 4: return "0100";
      case 5: return "0101";
      case 6: return "0110";
      case 7: return "0111";
      case 8: return "1000";
      case 9: return "1001";
      case 10: return "1010";
      case 11: return "1011";
      case 12: return "1100";
      case 13: return "1101";
      case 14: return "1110";
      case 15: return "1111";
      default: return "????";
   }
}
  
static const char* getUopStr(int uopc)
{
   switch(uopc)
   {
      case 0: return  "NOP ";
      case 1: return  "LD";
      case 2: return  "STA";
      case 3: return  "STD";
      case 4: return  "LUI";
      case 5: return  "ADDI";
      case 6: return  "ANDI";
      case 7: return  "ORI";
      case 8: return  "XORI";
      case 9: return  "SLTI";
      case 10: return  "SLTIU";
      case 11: return "SLLI";
      case 12: return "SRAI";
      case 13: return "SRLI";
      case 14: return "SLL";
      case 15: return "ADD";
      case 16: return "SUB";
      case 17: return "SLT";
      case 18: return "SLTU";
      case 19: return "AND";
      case 20: return "OR";
      case 21: return "XOR";
      case 22: return "SRA";
      case 23: return "SRL";
      case 24: return "BEQ";
      case 25: return "BNE";
      case 26: return "BGE";
      case 27: return "BGEU";
      case 28: return "BLT";
      case 29: return "BLTU";
      case 30: return "MTPCR";
      case 31: return "MFPCR";
      case 32: return "CLPCR";
      case 33: return "STPCR";
      case 34: return "J  ";
      case 35: return "JAL";
      case 36: return "JALR";
      case 37: return "RDNPC";
      case 38: return "ERET";
      case 39: return "CFLSH";
      case 40: return "FENCE";
      case 41: return "RDCYC";
      case 42: return "RDIST";
      case 43: return "ADDIW";
      case 44: return "ADDW";
      case 45: return "SUBW";
      case 46: return "SLLIW";
      case 47: return "SLLW";
      case 48: return "SRAIW";
      case 49: return "SRAW";
      case 50: return "SRLIW";
      case 51: return "SRLW";
      default: return "????";
   }
}
 

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
  const char* commitlog = NULL;
  const char* loadmem = NULL;
  FILE *vcdfile = NULL, *logfile = stderr, *commitlogfile = NULL;
  const char* failure = NULL;

   // for disassembly
   disassembler disasm;
   char if_inst_str[1024];
   char id_inst_str[1024];
   char rrd_inst_str[1024];
   char ex_inst_str[1024];
   char mem_inst_str[1024];
   char wb_inst_str[1024];
   char com_inst_str[1024];
   //char mem_inst_str[1024];
   //char wb_inst_str[1024];
   char if_op_str[6];
   char id_op_str[6];
   char rrd_op_str[6];
   char ex_op_str[6];
   char mem_op_str[6] = "";
   char wb_op_str[6] = "";
   char com_op_str[6] = "";
   uint32_t if_pc = 0;
   uint32_t id_pc = 0;
   uint32_t rrd_pc = 0;
   uint32_t ex_pc = 0;
   uint32_t mem_pc = 0;
   uint32_t wb_pc = 0;
   uint32_t com_pc = 0;
   uint64_t retired_inst_count = 0;
   
    



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
    else if (arg.substr(0, 2) == "-o")
      commitlog = argv[i]+2;
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
   
  if (commitlog)
  {
    // Create a commit log file
    printf("Creating commit log file\n");
    commitlogfile= strcmp(commitlog, "-") == 0 ? stdout : fopen(commitlog, "w");
    assert(commitlogfile);
    fprintf(commitlogfile, "Commit Log of BOOM\n");
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
//  tile.init(random_seed != 0);
  tile.init(0);


   Tracer_t tracer(&tile.Top_SodorTile_cpu_d__comUop_inst,  logfile);

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
      fprintf(logfile, 
         "---------|               Program Counter                  |          Instruction                    | Issue? | | -----------------------------------------|  Dec Stage | Dec St |---------\n");
      fprintf(logfile, 
         "---------|    IF  De/R/Dis Is/Rrd  EXE     MEM      WB    |  IF  De/RR/Ds Iss/Rrd  EXE   MEM    WB  |        | | -----------------------------------------|  RS1,  RS2 |  OEn   |---------\n\n");
   }

   tracer.start();
   bool reset = true;
   bool in_test_segment = false; // let's assume we are running a benchmark where we execute RDINST twice - once to start the test segment, and once to mark the end of the test segment.

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


       
      // look for RETINST instruction
      if (tile.Top_SodorTile_cpu_d__com_valid.lo_word() && 
          (tile.Top_SodorTile_cpu_d__comUop_inst.lo_word() & 0x07ffffff) == 0xa77)
      {
         // reset tracer stats (we don't have a stats register anymore, so this is the best we can do)
         if (in_test_segment)
         {
            tracer.stop();
            in_test_segment = false;
         }
         else
         {
            tracer.start();
            in_test_segment = true;
         }
      }

      bool correct_prediction = (tile.Top_SodorTile_cpu_d__exe_reg_br_val.lo_word() == 1)
                              && (tile.Top_SodorTile_cpu_d__exe_br_mispredict.lo_word() != 1);
      tracer.tick(tile.Top_SodorTile_cpu_d__com_valid.lo_word()
         , correct_prediction
         , tile.Top_SodorTile_cpu_d__exe_reg_br_val.lo_word()
         , &tile
      );


  
      if (tile.Top__io_debug_error_mode.lo_word())
      {
         failure = "entered error mode";
         break;
      }

//      if ((log && (trace_count < 90291 && trace_count > 85390)) || (quiet && trace_count % 10000 == 0))
//      if ((log && (trace_count >= 595000)) || (quiet && trace_count % 10000 == 0))
      if ((log && (trace_count >= 0)) || (quiet && trace_count % 10000 == 0))
      {


            insn_t insn;
            insn.bits = tile.Top_SodorTile_icache__io_cpu_resp_data.lo_word();

//            uint64_t debug = tile.Top_SodorTile__io_host_debug_output.lo_word();
//            uint32_t dec_inst =  debug & 0xffffffff;
            uint32_t dec_inst =  tile.Top_SodorTile_cpu_d_FetchBuffer__io_deq_bits.lo_word() & 0xffffffff;
//            uint32_t dec_pc =  (debug >> 32);
            uint32_t dec_pc =  tile.Top_SodorTile_cpu_d__decUop_pc.lo_word();
            
            insn_t if_insn;
            insn_t id_insn;
            insn_t rrd_insn;
            insn_t ex_insn;
            insn_t mem_insn;
            insn_t wb_insn;
            insn_t com_insn;
            if_insn.bits = tile.Top_SodorTile_cpu_d__io_imem_resp_data.lo_word();
            id_insn.bits = dec_inst;
            rrd_insn.bits = tile.Top_SodorTile_cpu_d__rrdUop_inst.lo_word();
            ex_insn.bits = tile.Top_SodorTile_cpu_d__exeUop_inst.lo_word();
            mem_insn.bits = tile.Top_SodorTile_cpu_d__memUop_inst.lo_word();
            wb_insn.bits = tile.Top_SodorTile_cpu_d__wbUop_inst.lo_word();
            com_insn.bits = tile.Top_SodorTile_cpu_d__comUop_inst.lo_word();
            strcpy(if_inst_str, disasm.disassemble(if_insn).c_str());
            strcpy(id_inst_str, disasm.disassemble(id_insn).c_str());
            strcpy(rrd_inst_str, disasm.disassemble(rrd_insn).c_str());
            strcpy(ex_inst_str, disasm.disassemble(ex_insn).c_str());
            strcpy(mem_inst_str, disasm.disassemble(mem_insn).c_str());
            strcpy(wb_inst_str, disasm.disassemble(wb_insn).c_str());
            strcpy(com_inst_str, disasm.disassemble(com_insn).c_str());

            // only show operation (short form of the instruction)
            memcpy(if_op_str, if_inst_str, 5);
            memcpy(id_op_str, id_inst_str, 5);
            memcpy(rrd_op_str, rrd_inst_str, 5);
            memcpy(ex_op_str, ex_inst_str, 5);
            memcpy(mem_op_str, mem_inst_str, 5);
            memcpy(wb_op_str, wb_inst_str, 5);
            if_op_str[5] = '\0';
            id_op_str[5] = '\0';
            rrd_op_str[5] = '\0';
            ex_op_str[5] = '\0';
            mem_op_str[5] = '\0';
            wb_op_str[5] = '\0';

            if_pc = tile.Top_SodorTile_cpu_d__if_reg_pc.lo_word();
            id_pc = dec_pc;
            rrd_pc = tile.Top_SodorTile_cpu_d__rrdUop_pc.lo_word();
            ex_pc = tile.Top_SodorTile_cpu_d__exeUop_pc.lo_word();
            mem_pc = tile.Top_SodorTile_cpu_d__memUop_pc.lo_word();
            wb_pc = tile.Top_SodorTile_cpu_d__wbUop_pc.lo_word();


#ifdef DEBUG
            fprintf(logfile, "-- Cyc=%2lu ---------------------------------------------", trace_count);
            fprintf(logfile, "-------------------------------------------------------------");
            fprintf(logfile, "-------------------------------------------------------------\n");
#else
            fprintf(logfile, "Cyc=%2lu", trace_count);
#endif
            
#ifdef FETCH_BUFFER

            uint64_t f_inst;
            uint64_t f_pc;
            f_inst = (uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(0)).lo_word() & 0xffffffff;
            f_pc   = ((uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(0)).lo_word() >> 32) & 0xffffffff;
            insn_t f_insn;
            f_insn.bits = f_inst;
            char f_op_str[6] = "";
            f_op_str[5] = '\0';
            char f_inst_str[1024];
            strcpy(f_inst_str, disasm.disassemble(f_insn).c_str());
            memcpy(f_op_str, f_inst_str, 5);
            fprintf(logfile,"                                    ");
            fprintf(logfile,"FetchBuffer([%s,%s,%s] %5s %4s):  [%5s: 0x%x] %11s %11s" 
               , tile.Top_SodorTile_cpu_d_FetchBuffer__io_enq_val.lo_word() == 1 ? "EnqV" : " -  "
               , tile.Top_SodorTile_cpu_d_FetchBuffer__io_deq_val.lo_word() == 1 ? "DeqV" : " -  "
               , tile.Top_SodorTile_cpu_d__dec_rdy.lo_word() == 1 ? "DecRdy" : "  -   "
               , tile.Top_SodorTile_cpu_d_FetchBuffer__full.lo_word() == 1 ? "FULL " 
               : tile.Top_SodorTile_cpu_d_FetchBuffer__empty.lo_word() == 1 ? "empty"
               : " "                                                   
               , tile.Top_SodorTile_cpu_d_FetchBuffer__io_kill.lo_word() == 1 ? "KILL" : "    "
               , f_op_str
               , (uint32_t) f_pc
               , tile.Top_SodorTile_cpu_d_FetchBuffer__w_ptr.lo_word() == 0 ? "<<--- w_ptr" : ""
               , tile.Top_SodorTile_cpu_d_FetchBuffer__r_ptr.lo_word() == 0 ? "<<--- r_ptr" : ""
               );


            fprintf(logfile, "%14s I$:%11s   ", ""
               , tile.Top_SodorTile_icache__state.lo_word() == 0x0 ? "RESET"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x1 ? "READY"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x2 ? "REQUEST"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x3 ? "REFILL_WAIT"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x4 ? "REFILL"
               : "???"
               );
#if 0         
            fprintf(logfile, "D$:%s"
               , tile.Top_SodorTile_dcache__state.lo_word() == 0x0 ? "RESET"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x1 ? "READY"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x2 ? "REQUEST"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x3 ? "WRITEBACK"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x4 ? "WRBACK_WAIT"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x5 ? "REFILL_WAIT"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x6 ? "REFILL"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x7 ? "FLUSHLS"
               : tile.Top_SodorTile_dcache__state.lo_word() == 0x8 ? "FLUSHLE"
               : "???"
               );
#endif

            fprintf(logfile, "  fencei=%s", tile.Top_SodorTile_cpu_d__fencei_in_progress.lo_word() ? "Y":"n");
            fprintf(logfile, "\n");
    


              
            f_inst = (uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(1)).lo_word() & 0xffffffff;
            f_pc   = ((uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(1)).lo_word() >> 32) & 0xffffffff;
            f_insn.bits = f_inst;
            strcpy(f_inst_str, disasm.disassemble(f_insn).c_str());
            memcpy(f_op_str, f_inst_str, 5);

            fprintf(logfile,"    retinst: %5lu                       ", retired_inst_count);
//            fprintf(logfile,"                                        ");
            fprintf(logfile,"                      [%5s: 0x%x] %11s %11s\n" , f_op_str, (uint32_t) f_pc
               , tile.Top_SodorTile_cpu_d_FetchBuffer__w_ptr.lo_word() == 1 ? "<<--- w_ptr" : ""
               , tile.Top_SodorTile_cpu_d_FetchBuffer__r_ptr.lo_word() == 1 ? "<<--- r_ptr" : "");
            
            f_inst = (uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(2)).lo_word() & 0xffffffff;
            f_pc   = ((uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(2)).lo_word() >> 32) & 0xffffffff;
            f_insn.bits = f_inst;
            strcpy(f_inst_str, disasm.disassemble(f_insn).c_str());
            memcpy(f_op_str, f_inst_str, 5);
            fprintf(logfile,"                                        ");
            fprintf(logfile,"                      [%5s: 0x%4x] %11s %11s\n" , f_op_str, (uint32_t) f_pc
               , tile.Top_SodorTile_cpu_d_FetchBuffer__w_ptr.lo_word() == 2 ? "<<--- w_ptr" : ""
               , tile.Top_SodorTile_cpu_d_FetchBuffer__r_ptr.lo_word() == 2 ? "<<--- r_ptr" : "");
            
            f_inst = (uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(3)).lo_word() & 0xffffffff;
            f_pc   = ((uint64_t) tile.Top_SodorTile_cpu_d_FetchBuffer__fifo_data.get(LIT<2>(3)).lo_word() >> 32) & 0xffffffff;
            f_insn.bits = f_inst;
            strcpy(f_inst_str, disasm.disassemble(f_insn).c_str());
            memcpy(f_op_str, f_inst_str, 5);
            fprintf(logfile,"                                        ");
            fprintf(logfile,"                      [%5s: 0x%4x] %11s %11s\n" , f_op_str , (uint32_t) f_pc
               , tile.Top_SodorTile_cpu_d_FetchBuffer__w_ptr.lo_word() == 3 ? "<<--- w_ptr" : ""
               , tile.Top_SodorTile_cpu_d_FetchBuffer__r_ptr.lo_word() == 3 ? "<<--- r_ptr" : "");
                  
#endif

            if (tile.Top_SodorTile_cpu_d_bsy_table__io_new_val.lo_word() == 1
               && tile.Top_SodorTile_cpu_d_bsy_table__io_new_pdst.lo_word() == 0)
               fprintf(logfile, "\n\n\n ERROR new PDST is x0\n\n\n");



            fprintf(logfile, " (0x%5x |",if_pc);
            fprintf(logfile, " 0x%5x |", id_pc);
            fprintf(logfile, " 0x%5x,", rrd_pc);
            fprintf(logfile, " 0x%5x,", ex_pc);
            fprintf(logfile, " 0x%5x,", mem_pc);
            fprintf(logfile, " 0x%5x) ",wb_pc);
            fprintf(logfile, " [%-5s |", if_op_str);
            fprintf(logfile, " %-5s |",  id_op_str);
            fprintf(logfile, " %-5s,",  rrd_op_str);
            fprintf(logfile, " %-5s,",  ex_op_str);
            fprintf(logfile, " %-5s,",  mem_op_str);
            fprintf(logfile, " %-5s] ", wb_op_str);
            fprintf(logfile, "(%s)", tile.Top_SodorTile_cpu_d__rrd_valid.lo_word() == 1 ? "ISSUE" : "     ");
            fprintf(logfile, "%s", tile.Top_SodorTile_cpu_d__iss_rdy.lo_word() == 1 ? "    " : "IFUL");
            
            fprintf(logfile, "%s ", tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 0 ? "  "
                                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 1 ? "BR"
                                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 2 ? "J "
                                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 3 ? "JR"
                                    : "  "
                                    );
            

#ifdef BR_STATS
//            fprintf(logfile, "(BP:%s %s Ex:%s %s %s %s)"
            fprintf(logfile, "(BP:%s %s Ex:%s %s %s %s, (A=%d,G=%d,L=%d, idx=%dA[0]=%d,A[1]=%d,%d)"
                  , tile.Top_SodorTile_cpu_d__dec_br_val.lo_word() == 1 ? "isBr" : " -- "
                  , tile.Top_SodorTile_cpu_d__dec_br_prediction.lo_word() == 1 ? "T" : "N"
//                  , tile.Top_SodorTile_cpu_d__dec_predict_taken.lo_word() == 1 ? "T" : "N"
                  
                  , tile.Top_SodorTile_cpu_d__exe_reg_br_val.lo_word() == 1 ? "V" : "-"
                  , tile.Top_SodorTile_cpu_d__exe_br_taken.lo_word() == 1 ? "T" : "N"
                  , tile.Top_SodorTile_cpu_d__exeUop_br_prediction.lo_word() == 1 ? "T" : "N"
                  , tile.Top_SodorTile_cpu_d__exe_br_mispredict.lo_word() == 1 ? "MISS" 
                   : tile.Top_SodorTile_cpu_d__exe_reg_br_val.lo_word() == 1 ? "CORR" 
                   : " __ "
                  , tile.Top_SodorTile_cpu_d_br_predictor__arbiter_prediction.lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor__global_prediction.lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor__local_prediction.lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor_a_counter_table__io_predict_index.lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor_a_counter_table__counter_table.get(LIT<2>(0)).lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor_a_counter_table__counter_table.get(LIT<2>(1)).lo_word()
                  , tile.Top_SodorTile_cpu_d_br_predictor_a_counter_table__io_correct_wen.lo_word()
                  );
#else
            id_inst_str[20] = '\0';
            fprintf(logfile, "Dec: %-20s", id_inst_str);
#ifndef DEBUG
            com_inst_str[20] = '\0';
            fprintf(logfile, "Com: %-20s", com_inst_str);

            fprintf(logfile, "I:%s " 
               , tile.Top_SodorTile_icache__state.lo_word() == 0x0 ? "RST"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x1 ? "RDY"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x2 ? "REQ"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x3 ? "RFW"
               : tile.Top_SodorTile_icache__state.lo_word() == 0x4 ? "RFL"
               : "???"
               );
#if 0    
             fprintf(logfile, "D:%s"
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
#endif

#endif

 

#endif
            
#ifdef RENAME            
            fprintf(logfile, "[ISA:%2d,", (uint32_t) tile.Top_SodorTile_cpu_d__decUop_ldst.lo_word());
            fprintf(logfile, "%2d,", (uint32_t) tile.Top_SodorTile_cpu_d__decUop_lrs1.lo_word());

            fprintf(logfile, "%2d]", (uint32_t) tile.Top_SodorTile_cpu_d__decUop_lrs2.lo_word());
            
            
            fprintf(logfile, "[Phs:%2d", (uint32_t) tile.Top_SodorTile_cpu_d__disUop_pdst.lo_word());
            
            fprintf(logfile, "(%s),",
                          tile.Top_SodorTile_cpu_d__decUop_ldst_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d__decUop_ldst_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d__decUop_ldst_rtype.lo_word() == 1 ? "C" 
                        : "?");
//            fprintf(logfile, "%2d", (uint32_t) tile.Top_SodorTile_cpu_d__dis_rs1.lo_word());
            fprintf(logfile, "%2d", (uint32_t) tile.Top_SodorTile_cpu_d__disUop_pop1.lo_word());
            fprintf(logfile, "(%s),",
                          tile.Top_SodorTile_cpu_d__decUop_lrs1_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d__decUop_lrs1_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d__decUop_lrs1_rtype.lo_word() == 1 ? "C" 
                        : "?"
                        );
//            fprintf(logfile, "%2d", (uint32_t) tile.Top_SodorTile_cpu_d__dis_rs2.lo_word());
            fprintf(logfile, "%2d", (uint32_t) tile.Top_SodorTile_cpu_d__disUop_pop2.lo_word());
            fprintf(logfile, "(%s)]",
                          tile.Top_SodorTile_cpu_d__decUop_lrs2_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d__decUop_lrs2_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d__decUop_lrs2_rtype.lo_word() == 1 ? "C" 
                        : "?"
                        );
#endif
            
//            fprintf(logfile, "To-Host:%x", (uint32_t) tile.Top_SodorTile_cpu__io_host_htif_tohost.to_ulong());
//            fprintf(logfile, "\n");

#ifdef DEBUG
            if(1)
#else
            if(0)
#endif
            {
#ifdef IW
               // integer_issue_slot:                
               char inst_str[1024];
               insn.bits = tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "\n   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        0,
                        (tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot__io_request.lo_word() == 1 ? "R" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slot_p1.lo_word() == 0 ? " " : "!",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pop1.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pop2.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pdst.lo_word(),
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str
                        , (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_pc.lo_word()
                        , getUopStr(tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_uopc.lo_word())
                        , (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_rob_idx.lo_word()
                        , genMask(tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_br_mask.lo_word())
                        , (uint64_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot__slotUop_imm.lo_word()
                     );

             

               insn.bits = tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        1,
                        (
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__io_request.lo_word() == 1 ? "R" : "-",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__io_in_wen.lo_word() == 1 ? "W" : " ",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slot_p1.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pop1.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pop2.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pdst.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_pc.lo_word()
                        , getUopStr(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_uopc.lo_word())
                        , (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_rob_idx.lo_word()
                        , genMask(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_br_mask.lo_word())
                        , (uint64_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_1__slotUop_imm.lo_word()
                     );
            
#ifdef IW_4
               insn.bits = tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5lx: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        2,
                        (
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__io_request.lo_word() == 1 ? "R" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slot_p1.lo_word() == 0 ? " " : "!",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pop1.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pop2.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pdst.lo_word(),
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        (uint64_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_pc.lo_word()
                        , getUopStr(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_uopc.lo_word())
                        , (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_rob_idx.lo_word()
                        , genMask(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_br_mask.lo_word())
                        , (uint64_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_2__slotUop_imm.lo_word()
                     );
            

               insn.bits = tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        3,
                        (
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__io_request.lo_word() == 1 ? "R" : "-",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slot_p1.lo_word() == 0 ? " " : "!",
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pop1.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pop2.lo_word(),
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pdst.lo_word(),
                        tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_pc.lo_word()
                        , getUopStr(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_uopc.lo_word())
                        , (uint32_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_rob_idx.lo_word()
                        , genMask(tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_br_mask.lo_word())
                        , (uint64_t) tile.Top_SodorTile_cpu_d_IntegerIssueSlot_3__slotUop_imm.lo_word()
                     );
           
#endif
#ifdef IW_8
            
               insn.bits = tile->IntegerIssueSlot_4__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        4,
                        (
                        tile->IntegerIssueSlot_4__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile->IntegerIssueSlot_4__io_request.lo_word() == 1 ? "R" : "-",
                        tile->IntegerIssueSlot_4__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile->IntegerIssueSlot_4__slot_p1.lo_word() == 0 ? " " : "!",
                        tile->IntegerIssueSlot_4__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile->IntegerIssueSlot_4__slotUop_pop1.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_4__slotUop_pop2.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_4__slotUop_pdst.lo_word(),
                        tile->IntegerIssueSlot_4__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile->IntegerIssueSlot_4__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile->IntegerIssueSlot_4__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        tile->IntegerIssueSlot_4__slotUop_pc.lo_word()
                        , getUopStr(tile->IntegerIssueSlot_4__slotUop_uopc.lo_word())
                        , tile.Top_SodorTile_cpu_d_IntegerIssueSlot_4__slotUop_rob_idx.lo_word()
                        , genMask(tile->IntegerIssueSlot_4__slotUop_br_mask.lo_word())
                        , tile->IntegerIssueSlot_4__slotUop_imm.lo_word()
                     );
            
               insn.bits = tile->IntegerIssueSlot_5__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        5,
                        (
                        tile->IntegerIssueSlot_5__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile->IntegerIssueSlot_5__io_request.lo_word() == 1 ? "R" : "-",
                        tile->IntegerIssueSlot_5__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile->IntegerIssueSlot_5__slot_p1.lo_word() == 0 ? " " : "!",
                        tile->IntegerIssueSlot_5__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile->IntegerIssueSlot_5__slotUop_pop1.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_5__slotUop_pop2.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_5__slotUop_dst.lo_word(),
                        tile->IntegerIssueSlot_5__slotUop_dst_rtype.lo_word() == 0 ? "X" 
                        : tile->IntegerIssueSlot_5__slotUop_dst_rtype.lo_word() == 3 ? "-" 
                        : tile->IntegerIssueSlot_5__slotUop_dst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        tile->IntegerIssueSlot_5__slotUop_pc.lo_word()
                        , getUopStr(tile->IntegerIssueSlot_5__slotUop_uopc.lo_word())
                        , tile.Top_SodorTile_cpu_d_IntegerIssueSlot_5__slotUop_rob_idx.lo_word()
                        , genMask(tile->IntegerIssueSlot_5__slotUop_br_mask.lo_word())
                        , tile->IntegerIssueSlot_5__slotUop_imm.lo_word()
                     );
            
               insn.bits = tile->IntegerIssueSlot_6__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        6,
                        (
                        tile->IntegerIssueSlot_6__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile->IntegerIssueSlot_6__io_request.lo_word() == 1 ? "R" : "-",
                        tile->IntegerIssueSlot_6__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile->IntegerIssueSlot_6__slot_p1.lo_word() == 0 ? " " : "!",
                        tile->IntegerIssueSlot_6__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile->IntegerIssueSlot_6__slotUop_pop1.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_6__slotUop_pop2.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_6__slotUop_dst.lo_word(),
                        tile->IntegerIssueSlot_6__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile->IntegerIssueSlot_6__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile->IntegerIssueSlot_6__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        tile->IntegerIssueSlot_6__slotUop_pc.lo_word()
                        , getUopStr(tile->IntegerIssueSlot_6__slotUop_uopc.lo_word())
                        , tile.Top_SodorTile_cpu_d_IntegerIssueSlot_6__slotUop_rob_idx.lo_word()
                        , genMask(tile->IntegerIssueSlot_6__slotUop_br_mask.lo_word())
                        , tile->IntegerIssueSlot_6__slotUop_imm.lo_word()
                     );
           
               insn.bits = tile->IntegerIssueSlot_7__slotUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               fprintf(logfile,
                     "   integer_issue_slot[%d](%s)(Req:%s):wen=%s: (P:%s,%s),OP:(%2d,%2d), PDST:%2d %s [[%30s] 0x%5x: %5s] ri:%d bm=%4s imm=0x%lx\n",
                        7,
                        (
                        tile->IntegerIssueSlot_7__slot_valid.lo_word() & 0x1) == 1 ? "V" : "-",
                        tile->IntegerIssueSlot_7__io_request.lo_word() == 1 ? "R" : "-",
                        tile->IntegerIssueSlot_7__io_in_wen.lo_word() == 1 ? "W" : " ",
                        tile->IntegerIssueSlot_7__slot_p1.lo_word() == 0 ? " " : "!",
                        tile->IntegerIssueSlot_7__slot_p2.lo_word() == 0 ? " " : "!",
                        (uint32_t) tile->IntegerIssueSlot_7__slotUop_pop1.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_7__slotUop_pop2.lo_word(),
                        (uint32_t) tile->IntegerIssueSlot_7__slotUop_dst.lo_word(),
                        tile->IntegerIssueSlot_7__slotUop_pdst_rtype.lo_word() == 0 ? "X" 
                        : tile->IntegerIssueSlot_7__slotUop_pdst_rtype.lo_word() == 3 ? "-" 
                        : tile->IntegerIssueSlot_7__slotUop_pdst_rtype.lo_word() == 1 ? "C" 
                        : "?",
                        inst_str,
                        tile->IntegerIssueSlot_7__slotUop_pc.lo_word()
                        , getUopStr(tile->IntegerIssueSlot_7__slotUop_uopc.lo_word())
                        , tile.Top_SodorTile_cpu_d_IntegerIssueSlot_7__slotUop_rob_idx.lo_word()
                        , genMask(tile->IntegerIssueSlot_7__slotUop_br_mask.lo_word())
                        , tile->IntegerIssueSlot_7__slotUop_imm.lo_word()
                     );
           
#endif
#endif
            }
#ifdef DEBUG
               fprintf(logfile, "    memrdata(%s)[rob:%lu][p%lu]: 0x%16lx "
               , (uint64_t) tile.Top_SodorTile_cpu_d__memresp_val.lo_word() == 1 ? "V" : "-"
               , (uint64_t) tile.Top_SodorTile_cpu_d__io_dmem_resp_bits_uop_ldq_idx.lo_word()
               , (uint64_t) tile.Top_SodorTile_cpu_d__memresp_rf_pdst.lo_word()
               , (uint64_t) tile.Top_SodorTile_cpu_d__memresp_data.lo_word()
               );
               
               
               fprintf(logfile, "rs2d: 0x%8lx op1d: 0x%8lx op2d: 0x%8lx alu:0x%8lx dst:(p%d) "
               , tile.Top_SodorTile_cpu_d__exe_reg_rs2_data.lo_word()
               , tile.Top_SodorTile_cpu_d__exe_reg_op1_data.lo_word()
               , tile.Top_SodorTile_cpu_d__exe_reg_op2_data.lo_word()
               , tile.Top_SodorTile_cpu_d_alu__io_out.lo_word()
               , (uint32_t) tile.Top_SodorTile_cpu_d__exeUop_pdst.lo_word()
               );                                      

               fprintf(logfile, " wb_rob=(%d,%s)(%d,%s) "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__io_wb_rob_idx0.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__io_wb_val0.lo_word() == 1 ? "V" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__io_wb_rob_idx1.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__io_wb_val1.lo_word() == 1 ? "V" : "-"
                  );
                                   
               fprintf(logfile, " mem_req=(%s %s)(%d,%s) "
                  , (uint32_t) tile.Top_SodorTile_cpu_d__io_dmem_req_valid.lo_word() ? "V" : "-"
                  , getUopStr(tile.Top_SodorTile_cpu_d__io_dmem_req_bits_uop_uopc.lo_word())
                  );
                                                       

//               fprintf(logfile, " dec_imm: 0x%lx"
//                  , (uint64_t) tile.Top_SodorTile_cpu_d__dec_imm.lo_word()
//                  );

//               fprintf(logfile, " dec_st_msk(%d): %4s\n"
//               fprintf(logfile, " dec_st_set(%d)\n" //: %4s\n"
//                  , (uint32_t) tile.Top_SodorTile_cpu_d__dec_stq_idx.lo_word()
//                  , genMask(tile.Top_SodorTile_cpu_d__dec_st_mask.lo_word())
//                  );
               
                     
               
               fprintf(logfile, "\n    dec_state:[%s]   dis_rob_idx:%d   DecBrPred(%s,Pred:%s)  Exe:[%s]  %s  "
                  , tile.Top_SodorTile_cpu_d__dec_state.lo_word() == 0 ? "NORMAL         " 
                  : tile.Top_SodorTile_cpu_d__dec_state.lo_word() == 1 ? "WAIT_TILL_EMPTY" 
                  : tile.Top_SodorTile_cpu_d__dec_state.lo_word() == 2 ? "WAIT_STORE_DGEN" 
                  : tile.Top_SodorTile_cpu_d__dec_state.lo_word() == 3 ? "WAIT_STORE_FNSH" 
                  : "???"
                  , (uint32_t) tile.Top_SodorTile_cpu_d__decUop_rob_idx.lo_word()
                  
                  , tile.Top_SodorTile_cpu_d__dec_br_val.lo_word() == 1 ? "isBr" : " -- "
                  , tile.Top_SodorTile_cpu_d__dec_br_prediction.lo_word() == 1 ? "T" : "N"
                  
                  ,   tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 0 ? "  "
                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 1 ? "BR"
                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 2 ? "J "
                    : tile.Top_SodorTile_cpu_d__exe_pc_sel.lo_word() == 3 ? "JR"
                    : "  "
                  , tile.Top_SodorTile_cpu_d__dec_is_store.lo_word() == 1 ? "IS_ST" : "....."
                    );
               
//               fprintf(logfile, "  dec_br_mask:[%s] dec_br_tag:[%d] br(%s|%s,%s) mispred:%s res_msk:%s mis_tag:%d\n"
               fprintf(logfile, "  dec_br_mask:[%s] dec_br_tag:[%d] br(%s,Corr:%s,Pred:%s,Res:%4s) res_msk:%s mis_tag:%d\n"
                  , genMask(tile.Top_SodorTile_cpu_d_rob__io_disUop_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d__dec_br_tag.lo_word()
                  , tile.Top_SodorTile_cpu_d__exe_reg_br_val.lo_word() == 1 ? "V" : "-"
                  , tile.Top_SodorTile_cpu_d__exe_br_taken.lo_word() == 1 ? "T" : "N"
                  , tile.Top_SodorTile_cpu_d__exeUop_br_prediction.lo_word() == 1 ? "T" : "N"
                  , tile.Top_SodorTile_cpu_d__exe_br_mispredict.lo_word() == 1 ? "MISS" : " __ "
                  , genMask(tile.Top_SodorTile_cpu_d__exe_br_resolved_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d__exe_br_mispredict_tag.lo_word());

#ifdef ROB
               fprintf(logfile, "    rob:[%s,%s,%s] "
                  , tile.Top_SodorTile_cpu_d_rob__rob_state.lo_word()  == 0 ? "RESET"
                  : tile.Top_SodorTile_cpu_d_rob__rob_state.lo_word()  == 1 ? "NORML"
                  : tile.Top_SodorTile_cpu_d_rob__rob_state.lo_word()  == 2 ? "RLBKE" 
                  : tile.Top_SodorTile_cpu_d_rob__rob_state.lo_word()  == 3 ? "RLBKL" : "?????"
                  , tile.Top_SodorTile_cpu_d__rob_full.lo_word()  == 1 ? "RFULL" : "     "
                  , tile.Top_SodorTile_cpu_d__rob_empty.lo_word() == 1 ? "EMPTY" : "     "
                  );
#ifndef USING_ORACLE               
               fprintf(logfile, "bpd_targ: 0x%lx exe_brjmp_target = 0x%x  exe_jr_target = 0x%lx"
               , (uint64_t)  tile.Top_SodorTile_cpu_d__bpd_predict_target.lo_word()
//               , (uint64_t)  tile.Top_SodorTile_cpu_d__dec_predict_target.lo_word()
               , (uint32_t)  tile.Top_SodorTile_cpu_d__exe_brjmp_target.lo_word()
               , (uint64_t)  tile.Top_SodorTile_cpu_d__exe_jump_reg_target.lo_word()
               );
#endif

               fprintf(logfile, "                     commit (%3s) = %2d, %s || rob ld(%s,%2lu), st(%s,%2lu)"
                  , tile.Top_SodorTile_cpu_d__com_valid.lo_word() == 1 ? " V " : " na"
                  , (uint32_t) tile.Top_SodorTile_cpu_d__comUop_stale_pdst.lo_word()
                  ,   tile.Top_SodorTile_cpu_d__comUop_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d__comUop_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d__comUop_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , tile.Top_SodorTile_cpu_d__rob_ld_rdy.lo_word() ? "V" : "-"
                  , tile.Top_SodorTile_cpu_d__rob_ld_idx.lo_word() 
                  , tile.Top_SodorTile_cpu_d__rob_st_rdy.lo_word() ? "V" : "-"
                  , tile.Top_SodorTile_cpu_d__rob_st_idx.lo_word() 
                    );

            
//               fprintf(logfile, "\n\n");
               fprintf(logfile, "\n");

               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_0_inst.lo_word();
               char inst_str[1024];
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 0
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_0.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_0.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_0_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_0_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_0_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_0_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_0_pdst.lo_word() 
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_0_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_0_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_0_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_0.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_0.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 0 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 0 ? "T  " : ""
                  );

#ifdef LSQ
               fprintf(logfile, "laq[%d](%s%s%s%s%s%s%s)0x%4x x%2d s:%4s b:%luk%d %d %s%s "
                  , 0
                  , tile.Top_SodorTile_cpu_d_lsu__laq_allocated_0.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_addr_val_0.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_0.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_wb_0.lo_word() == 1 ? "X" : " "
                  , "" //tile.Top_SodorTile_cpu_d_lsu__laq_retry_0.lo_word() == 1 ? "R" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_failure_0.lo_word() == 1 ? "F" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_succeeded_0.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_addr_0.lo_word() & 0xffff
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_0_pdst.lo_word() 
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__laq_st_dep_mask_0.lo_word())
                  , (tile.Top_SodorTile_cpu_d_lsu__laq_uop_0_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_spec_killed_0.lo_word() 
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_0_rob_idx.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__laq_head.lo_word() == 0 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_tail.lo_word() == 0 ? "T" : " "
                  );
                                      
               fprintf(logfile, "saq[%d]=(%s%s%s%s%s)0x%4x:bm:%4sk%d-%1s%1s %d\n"
                  , 0
                  , tile.Top_SodorTile_cpu_d_lsu__stq_entry_val_0.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__saq_val_0.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__sdq_val_0.lo_word() == 1 ? "D" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_executed_0.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_succeeded_0.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__saq_addr_0.lo_word()  & 0xffff
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__stq_uop_0_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_spec_killed_0.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__stq_head.lo_word() == 0 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_tail.lo_word() == 0 ? "T" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_uop_0_rob_idx.lo_word() 
//                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__sdq_data_0.lo_word() 
                  );
#else
               fprintf(logfile,"\n");
#endif
                     
               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_1_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 1
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_1.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_1.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_1_pc.lo_word()
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_1_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_1_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_1_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_1_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_1_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_1_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_1_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_1.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_1.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 1 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 1 ? "T  " : ""
                  );
                      
#ifdef LSQ
               fprintf(logfile, "laq[%d](%s%s%s%s%s%s%s)0x%4x x%2d s:%4s b:%luk%d %d %s%s "
                  , 1
                  , tile.Top_SodorTile_cpu_d_lsu__laq_allocated_1.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_addr_val_1.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_1.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_wb_1.lo_word() == 1 ? "X" : " "
                  , "" //tile.Top_SodorTile_cpu_d_lsu__laq_retry_1.lo_word() == 1 ? "R" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_failure_1.lo_word() == 1 ? "F" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_succeeded_1.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_addr_1.lo_word() & 0xffff
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_1_pdst.lo_word() 
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__laq_st_dep_mask_1.lo_word())
                  , (tile.Top_SodorTile_cpu_d_lsu__laq_uop_1_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_spec_killed_1.lo_word() 
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_1_rob_idx.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__laq_head.lo_word() == 1 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_tail.lo_word() == 1 ? "T" : " "
                  );
                     
               fprintf(logfile, "saq[%d]=(%s%s%s%s%s)0x%4x:bm:%4sk%d-%1s%1s %d\n"
                  , 1
                  , tile.Top_SodorTile_cpu_d_lsu__stq_entry_val_1.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__saq_val_1.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__sdq_val_1.lo_word() == 1 ? "D" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_executed_1.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_succeeded_1.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__saq_addr_1.lo_word()  & 0xffff
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__stq_uop_1_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_spec_killed_1.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__stq_head.lo_word() == 1 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_tail.lo_word() == 1 ? "T" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_uop_1_rob_idx.lo_word() 
//                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__sdq_data_1.lo_word() 
                  );
#else
               fprintf(logfile,"\n");
#endif

               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_2_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 2
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_2.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_2.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_2_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_2_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_2_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_2_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_2_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_2_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_2_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_2_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_2.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_2.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 2 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 2 ? "T  " : ""
                  );
                       
#ifdef LSQ
               fprintf(logfile, "laq[%d](%s%s%s%s%s%s%s)0x%4x x%2d s:%4s b:%luk%d %d %s%s "
                  , 2
                  , tile.Top_SodorTile_cpu_d_lsu__laq_allocated_2.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_addr_val_2.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_2.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_wb_2.lo_word() == 1 ? "X" : " "
                  , "" //tile.Top_SodorTile_cpu_d_lsu__laq_retry_2.lo_word() == 1 ? "R" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_failure_2.lo_word() == 1 ? "F" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_succeeded_2.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_addr_2.lo_word() & 0xffff
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_2_pdst.lo_word() 
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__laq_st_dep_mask_2.lo_word())
                  , (tile.Top_SodorTile_cpu_d_lsu__laq_uop_2_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_spec_killed_2.lo_word() 
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_2_rob_idx.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__laq_head.lo_word() == 2 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_tail.lo_word() == 2 ? "T" : " "
                  );
                     
               fprintf(logfile, "saq[%d]=(%s%s%s%s%s)0x%4x:bm:%4sk%d-%1s%1s %d\n"
                  , 2
                  , tile.Top_SodorTile_cpu_d_lsu__stq_entry_val_2.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__saq_val_2.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__sdq_val_2.lo_word() == 1 ? "D" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_executed_2.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_succeeded_2.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__saq_addr_2.lo_word()  & 0xffff
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__stq_uop_2_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_spec_killed_2.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__stq_head.lo_word() == 2 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_tail.lo_word() == 2 ? "T" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_uop_2_rob_idx.lo_word() 
//                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__sdq_data_2.lo_word() 
                  );
#else
               fprintf(logfile,"\n");
#endif

               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_3_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 3
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_3.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_3.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_3_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_3_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_3_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_3_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_3_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_3_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_3_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_3_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_3.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_3.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 3 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 3 ? "T  " : ""
                  );
                                                      
#ifdef LSQ
               fprintf(logfile, "laq[%d](%s%s%s%s%s%s%s)0x%4x x%2d s:%4s b:%luk%d %d %s%s "
                  , 3
                  , tile.Top_SodorTile_cpu_d_lsu__laq_allocated_3.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_addr_val_3.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_3.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_executed_wb_3.lo_word() == 1 ? "X" : " "
                  , "" //tile.Top_SodorTile_cpu_d_lsu__laq_retry_3.lo_word() == 1 ? "R" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_failure_3.lo_word() == 1 ? "F" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_succeeded_3.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_addr_3.lo_word() & 0xffff
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_3_pdst.lo_word() 
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__laq_st_dep_mask_3.lo_word())
                  , (tile.Top_SodorTile_cpu_d_lsu__laq_uop_3_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_spec_killed_3.lo_word() 
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__laq_uop_3_rob_idx.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__laq_head.lo_word() == 3 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__laq_tail.lo_word() == 3 ? "T" : " "
                  );
                     
               fprintf(logfile, "saq[%d]=(%s%s%s%s%s)0x%4x:bm:%4sk%d-%1s%1s %d\n"
                  , 3
                  , tile.Top_SodorTile_cpu_d_lsu__stq_entry_val_3.lo_word() == 1 ? "A" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__saq_val_3.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__sdq_val_3.lo_word() == 1 ? "D" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_executed_3.lo_word() == 1 ? "E" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_succeeded_3.lo_word() == 1 ? "S" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__saq_addr_3.lo_word() & 0xffff
                  , genMask(tile.Top_SodorTile_cpu_d_lsu__stq_uop_3_br_mask.lo_word())
                  , tile.Top_SodorTile_cpu_d_lsu__stq_spec_killed_3.lo_word() 
                  , tile.Top_SodorTile_cpu_d_lsu__stq_head.lo_word() == 3 ? "H" : " "
                  , tile.Top_SodorTile_cpu_d_lsu__stq_tail.lo_word() == 3 ? "T" : " "
                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__stq_uop_3_rob_idx.lo_word() 
//                  , (uint32_t) tile.Top_SodorTile_cpu_d_lsu__sdq_data_3.lo_word() 
                  );
#else
               fprintf(logfile,"\n");
#endif
                     
               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_4_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 4
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_4.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_4.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_4_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_4_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_4_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_4_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_4_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_4_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_4_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_4_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_4.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_4.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 4 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 4 ? "T  " : ""
                  );
                      
               fprintf(logfile, "    \n");

               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_5_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 5
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_5.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_5.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_5_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_5_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_5_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_5_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_5_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_5_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_5_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_5_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_5.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_5.lo_word()
//                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_5_ldq_idx.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 5 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 5 ? "T  " : ""
                  );
                  

                   
#ifdef FREELIST
               fprintf(logfile,"    ");
               fprintf(logfile,
                     "FreeList: 0x%lx: (Empty?: %d) PregVal: %s, NewPreg: %d"
                     , (uint64_t) tile.Top_SodorTile_cpu_d_freelist__free_list.lo_word()
                     , (uint32_t) tile.Top_SodorTile_cpu_d_freelist__io_empty.lo_word()
                     , (uint32_t) tile.Top_SodorTile_cpu_d_freelist__io_req_preg_val.lo_word() ? "V" : "-"
                     , (uint32_t) tile.Top_SodorTile_cpu_d_freelist__io_req_preg.lo_word()
                     );
#endif
 

               fprintf(logfile, "    \n");
                     
               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_6_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 6
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_6.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_6.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_6_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_6_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_6_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_6_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_6_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_6_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_6_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_6_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_6.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_6.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 6 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 6 ? "T  " : ""
                  );



                
         // LSU info
               fprintf(logfile, "    ROB->LSU: Fire(FL=%s,L=%s,S=%s)"
                  , "n/a"
                  , tile.Top_SodorTile_cpu_d_lsu__req_fire_load_sleeper.lo_word() == 1 ? "F" : "_"
                  , tile.Top_SodorTile_cpu_d_lsu__req_fire_store.lo_word() == 1 ? "F" : "_"
                  );
               fprintf(logfile, "Ld:(%s,%d)" 
                  , tile.Top_SodorTile_cpu_d_lsu__io_rob_ld_rdy.lo_word() == 1 ? "R" : "_"
                  , (uint32_t) tile.Top_SodorTile_cpu_d__rob_ld_idx.lo_word() 
               );
               fprintf(logfile, "St:(%s,%d)" 
                  , tile.Top_SodorTile_cpu_d_lsu__io_rob_st_rdy.lo_word() == 1 ? "R" : "_"
                  , (uint32_t) tile.Top_SodorTile_cpu_d__rob_st_idx.lo_word() 
               );
 






               fprintf(logfile, "    \n");
                     
               insn.bits = tile.Top_SodorTile_cpu_d_rob__rob_uop_7_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
               inst_str[20] = '\0';
               fprintf(logfile, "    rob[%d]=(%s)(%s)- 0x%5x: d:%s p%2d, bm:%4s btag:%d sdt:%2d %s:%d [%20s] %11s %3s"
                  , 7
                  , tile.Top_SodorTile_cpu_d_rob__rob_val_7.lo_word() == 1 ? "V" : " "
                  , tile.Top_SodorTile_cpu_d_rob__rob_bsy_7.lo_word() == 1 ? "B" : "."
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_7_pc.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_uop_7_pdst_rtype.lo_word() == 0 ? "X" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_7_pdst_rtype.lo_word() == 1 ? "C" 
                    : tile.Top_SodorTile_cpu_d_rob__rob_uop_7_pdst_rtype.lo_word() == 3 ? "-" : "?"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_7_pdst.lo_word()
                  , genMask(tile.Top_SodorTile_cpu_d_rob__rob_uop_7_br_mask.lo_word())
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_7_br_tag.lo_word()
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_uop_7_stale_pdst.lo_word() 
                  , tile.Top_SodorTile_cpu_d_rob__rob_exception_7.lo_word() == 1 ? "E" : "-"
                  , (uint32_t) tile.Top_SodorTile_cpu_d_rob__rob_eflags_7.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d_rob__rob_head.lo_word() == 7 ? "<<--- head " : ""
                  , tile.Top_SodorTile_cpu_d_rob__rob_tail.lo_word() == 7 ? "T  " : ""
                  );
                 
//                 fprintf(logfile,"\n");
//                 fprintf(logfile,"\n");

#endif
#endif

#ifdef DEBUG

#ifdef DC_WRAPPER
      fprintf(logfile, "\n");
      
      fprintf(logfile, "   MemReq   :[%s, %s (%02d): iftag:%2d]  br(%s,%s,msk=%4s) f(%s) - dcache:%s %s %s reg:%s (dw_matches:%4s, conflicts:%4s, forwarding_matches:%4s f:%d,i:%d) live_st_mask:%4s\n" 
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_valid.lo_word() ? "V" : "-"
            , (!tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_valid.lo_word()) ? "  -  " :
               (tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_bits_cmd.lo_word() == 0) ? "LOAD " : 
               (tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_bits_cmd.lo_word() == 1) ? "STORE" : 
               (tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_bits_cmd.lo_word() == 4) ? "FLUSH" : 
               "???"
            , tile.Top_SodorTile_dcache__io_cpu_resp_bits_uop_rob_idx.lo_word()
            , tile.Top_SodorTile_dcache__new_inflight_tag.lo_word()
            , tile.Top_SodorTile_cpu__io_dmem_brinfo_valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_cpu__io_dmem_brinfo_mispredict.lo_word() ? "M" : "c"
            , genMask(tile.Top_SodorTile_cpu__io_dmem_brinfo_mask.lo_word())
            , tile.Top_SodorTile_dcache__io_cpu_flush_pipe.lo_word() ? "FLUSH_PIPE" : " "
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_ready.lo_word() ? " READY" : " BUSY"
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_req_bits_kill.lo_word() ? " KILL" : "    "
            , tile.Top_SodorTile_cpu_d_lsu__io_forward_val.lo_word() ? " FORWARD" : "   -   "
            , tile.Top_SodorTile_cpu_d_lsu__forward_load_request.lo_word() ? " f" : "-"
            , genMask(     tile.Top_SodorTile_cpu_d_lsu__dword_addr_matches_0.lo_word() 
                        || (tile.Top_SodorTile_cpu_d_lsu__dword_addr_matches_1.lo_word() << 1)
                        || (tile.Top_SodorTile_cpu_d_lsu__dword_addr_matches_2.lo_word() << 2) 
                        || (tile.Top_SodorTile_cpu_d_lsu__dword_addr_matches_3.lo_word() << 3) 
                        )
            , genMask(tile.Top_SodorTile_cpu_d_lsu__addr_conflicts_0.lo_word()
                        || (tile.Top_SodorTile_cpu_d_lsu__addr_conflicts_1.lo_word() << 1)
                        || (tile.Top_SodorTile_cpu_d_lsu__addr_conflicts_2.lo_word() << 2)
                        || (tile.Top_SodorTile_cpu_d_lsu__addr_conflicts_3.lo_word() << 3)
                        )
            , genMask(tile.Top_SodorTile_cpu_d_lsu_forwarding_age_logic__io_addr_matches.lo_word())
            , tile.Top_SodorTile_cpu_d_lsu_forwarding_age_logic__io_forwarding_val.lo_word()
            , tile.Top_SodorTile_cpu_d_lsu_forwarding_age_logic__io_forwarding_idx.lo_word()
            , genMask(tile.Top_SodorTile_cpu_d_lsu__live_store_mask.lo_word())
            );
                     
      fprintf(logfile, "   CacheResp:[%s%s:ctag:%2d] cache_nack:%d                    %s\n"
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_resp_valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_cpu_d__io_dmem_resp_valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_resp_bits_tag.lo_word()
            , tile.Top_SodorTile_dcache_nbdcache__io_cpu_resp_bits_nack.lo_word()
            , tile.Top_SodorTile_cpu_d_lsu__io_lsu_misspec.lo_word() ? "LSU_MISSPEC" : "-"
            );


      // branch mask stuff going in, misspec going in...
   
      fprintf(logfile, "      ld_req_slot[%d]=(%s%s%s)- laq_idx:%2u pdst:%2u bm:%4s \n"
            , 0
            , tile.Top_SodorTile_dcache_LoadReqSlot__valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_dcache_LoadReqSlot__br_killed.lo_word() ? "b" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot__was_killed.lo_word() ? "k" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot__uop_ldq_idx.lo_word()
            , tile.Top_SodorTile_dcache_LoadReqSlot__uop_pdst.lo_word()
            , genMask(tile.Top_SodorTile_dcache_LoadReqSlot__uop_br_mask.lo_word())
            );
 
      fprintf(logfile, "      ld_req_slot[%d]=(%s%s%s)- laq_idx:%2u pdst:%2u bm:%4s \n"
            , 1
            , tile.Top_SodorTile_dcache_LoadReqSlot_1__valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_dcache_LoadReqSlot_1__br_killed.lo_word() ? "b" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_1__was_killed.lo_word() ? "k" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_1__uop_ldq_idx.lo_word()
            , tile.Top_SodorTile_dcache_LoadReqSlot_1__uop_pdst.lo_word()
            , genMask(tile.Top_SodorTile_dcache_LoadReqSlot_1__uop_br_mask.lo_word())
            );
 
      fprintf(logfile, "      ld_req_slot[%d]=(%s%s%s)- laq_idx:%2u pdst:%2u bm:%4s \n"
            , 2
            , tile.Top_SodorTile_dcache_LoadReqSlot_2__valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_dcache_LoadReqSlot_2__br_killed.lo_word() ? "b" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_2__was_killed.lo_word() ? "k" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_2__uop_ldq_idx.lo_word()
            , tile.Top_SodorTile_dcache_LoadReqSlot_2__uop_pdst.lo_word()
            , genMask(tile.Top_SodorTile_dcache_LoadReqSlot_2__uop_br_mask.lo_word())
            );
 
      fprintf(logfile, "      ld_req_slot[%d]=(%s%s%s)- laq_idx:%2u pdst:%2u bm:%4s \n"
            , 3
            , tile.Top_SodorTile_dcache_LoadReqSlot_3__valid.lo_word() ? "V" : "-"
            , tile.Top_SodorTile_dcache_LoadReqSlot_3__br_killed.lo_word() ? "b" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_3__was_killed.lo_word() ? "k" : " "
            , tile.Top_SodorTile_dcache_LoadReqSlot_3__uop_ldq_idx.lo_word()
            , tile.Top_SodorTile_dcache_LoadReqSlot_3__uop_pdst.lo_word()
            , genMask(tile.Top_SodorTile_dcache_LoadReqSlot_3__uop_br_mask.lo_word())
            );



#endif



#ifdef RENAME_TABLE

#ifdef DC_WRAPPER
      fprintf(logfile, "\n\n\n");
#endif

//               fprintf(logfile, "\n\n");
//
               insn.bits = tile.Top_SodorTile_cpu_d__comRollbckUop_inst.lo_word();
               strcpy(inst_str, disasm.disassemble(insn).c_str());
//               fprintf(logfile, "\n");
               fprintf(logfile, "   Rollback: ldst: x%2d, stale_pdst: p%2d |  %s | %s"
                  , (int) tile.Top_SodorTile_cpu_d__comRollbckUop_ldst.lo_word()
                  , (int) tile.Top_SodorTile_cpu_d__comRollbckUop_stale_pdst.lo_word()
                  , inst_str
                  , tile.Top_SodorTile_cpu_d__com_exception.lo_word() ? "EXCEPTION" : "-"
                  );
               

//               fprintf(logfile, "\n");

               #define PRINT_MAPTABLE(_a) { fprintf(logfile, " %sx%2d(%s)=p%2d[0x%16lx](%s%s)"  \
                                             , tile.Top_SodorTile_cpu_d__map_table_wen_##_a.lo_word() ? "W" :    \
                                              tile.Top_SodorTile_cpu_d__map_table_rbk_wen_##_a.lo_word() ? "E" : " " \
                                             , _a \
                                             , xpr_to_string[_a] \
                                             , (int) tile.Top_SodorTile_cpu_d__map_table_elements_##_a.lo_word() \
                                             , tile.Top_SodorTile_cpu_d__regfile.get((tile.Top_SodorTile_cpu_d__map_table_elements_##_a.lo_word()),0) \
                                             , (int) tile.Top_SodorTile_cpu_d__map_table_val_##_a.lo_word() ? "v" : "_" \
                                             , isISARegBusy(_a, &tile) ? "b" : "_" \
                                             ); \
               }
               
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(0);
               PRINT_MAPTABLE(7);
               PRINT_MAPTABLE(14);
               PRINT_MAPTABLE(21);
               PRINT_MAPTABLE(28);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(1);
               PRINT_MAPTABLE(8);
               PRINT_MAPTABLE(15);
               PRINT_MAPTABLE(22);
               PRINT_MAPTABLE(29);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(2);
               PRINT_MAPTABLE(9);
               PRINT_MAPTABLE(16);
               PRINT_MAPTABLE(23);
               PRINT_MAPTABLE(30);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(3);
               PRINT_MAPTABLE(10);
               PRINT_MAPTABLE(17);
               PRINT_MAPTABLE(24);
               PRINT_MAPTABLE(31);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(4);
               PRINT_MAPTABLE(11);
               PRINT_MAPTABLE(18);
               PRINT_MAPTABLE(25);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(5);
               PRINT_MAPTABLE(12);
               PRINT_MAPTABLE(19);
               PRINT_MAPTABLE(26);
               fprintf(logfile,"\n");
               PRINT_MAPTABLE(6);
               PRINT_MAPTABLE(13);
               PRINT_MAPTABLE(20);
               PRINT_MAPTABLE(27);
                
#ifdef DC_WRAPPER
      fprintf(logfile, "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
#endif
                              
               
#endif //end rename table
        
#ifdef ICACHE               
               
               fprintf(logfile,"\n\n");

               for (int i=0; i < 16; i++)
               {
                  int base = i*4;
                  int addr = tile.Top_SodorTile_icache__tag_array.get(i,0) << 10 | 
                             (i << 6);
                  bool valid =  (tile.Top_SodorTile_icache__valid_array.lo_word() >> (i) & 1);
                  fprintf(logfile," LINE(0x%4x) %2d : 0x %16lx %16lx %16lx %16lx "
                        , i*64
                        , i
                        , tile.Top_SodorTile_icache__data_array.get(base+0,0)
                        , tile.Top_SodorTile_icache__data_array.get(base+0,1)
                        , tile.Top_SodorTile_icache__data_array.get(base+1,0)
                        , tile.Top_SodorTile_icache__data_array.get(base+1,1)
                           );
                  fprintf(logfile,"  %16lx %16lx %16lx %16lx |      Addr = [ 0x%04x] (%s)\n"
                        , tile.Top_SodorTile_icache__data_array.get(base+2,0)
                        , tile.Top_SodorTile_icache__data_array.get(base+2,1)
                        , tile.Top_SodorTile_icache__data_array.get(base+3,0)
                        , tile.Top_SodorTile_icache__data_array.get(base+3,1)
                        , valid ? addr : 0
                        , valid ? "Val" : " _ "
                           );
               }

//               fprintf(logfile,"\n\n  refill\n", );
//               fprintf(logfile,"\n\n\n\n\n\n\n");
#ifdef DCACHE
//               fprintf(logfile,"\n\n");
#else
               fprintf(logfile,"\n\n\n\n\n\n\n\n\n\n");
#endif

#endif //end icache

        
#ifdef DCACHE               
               
#ifdef ICACHE
               fprintf(logfile,"\n");
#else
               fprintf(logfile,"\n\n");
#endif

               for (int i=0; i < 16; i++)
               {
                  int base = i*4;
                  int addr = tile.Top_SodorTile_dcache__tag_array.get(i,0) << 10 | 
                             (i << 6);
                  bool valid =  (tile.Top_SodorTile_dcache__valid_array.lo_word() >> (i) & 1);
                  fprintf(logfile," LINE(0x%4x) %2d : 0x %16lx %16lx %16lx %16lx "
                        , i*64
                        , i
                        , tile.Top_SodorTile_dcache__data_array.get(base+0,0)
                        , tile.Top_SodorTile_dcache__data_array.get(base+0,1)
                        , tile.Top_SodorTile_dcache__data_array.get(base+1,0)
                        , tile.Top_SodorTile_dcache__data_array.get(base+1,1)
                           );
                  fprintf(logfile,"  %16lx %16lx %16lx %16lx |      Addr = [ 0x%04x] (%s)\n"
                        , tile.Top_SodorTile_dcache__data_array.get(base+2,0)
                        , tile.Top_SodorTile_dcache__data_array.get(base+2,1)
                        , tile.Top_SodorTile_dcache__data_array.get(base+3,0)
                        , tile.Top_SodorTile_dcache__data_array.get(base+3,1)
                        , valid ? addr : 0
                        , valid ? "Val" : " _ "
                           );
               }

#ifdef ICACHE
//               fprintf(logfile,"\n\n");
#else
               fprintf(logfile,"\n\n\n\n\n\n\n\n\n\n");
#endif

#endif //end dcache





               
//               fprintf(logfile,"");



#endif         
#if 0
         // prediction buffer here
               fprintf(logfile,
                     "  PredictBuffer, [BpdEnq:%s (pred=%s)] [Decrdy:%d, pred=%s, DecPred:%s, %s]\n" 
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_enq_val.lo_word() ? "V" : "-"
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_enq_bits.lo_word() ? "T" : "n"
                     //, (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_enq_rdy.lo_word()
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_deq_rdy.lo_word()
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_deq_bits.lo_word() ? "T" : "n"
                     , (uint32_t) tile.Top_SodorTile_cpu_d__dec_br_prediction.lo_word() ? "T" : "n"
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__io_deq_val.lo_word() ? "DecVal" : "!DecVal"
                     );
#endif

#ifdef PREDICTIONQUEUE

               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 0
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(0)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 0 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 0 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 1
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(1)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 1 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 1 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 2
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(2)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 2 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 2 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 3
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(3)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 3 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 3 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 4
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(4)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 4 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 4 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 5
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(5)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 5 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 5 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 6
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(6)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 6 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 6 ? "<<--- r_ptr" : ""
                     );
               fprintf(logfile,
                     "  PredictQueue[%d]=%d %11s %11s\n"
                     , 7
                     , (uint32_t) tile.Top_SodorTile_cpu_d_prediction_queue__fifo_data.get(LIT<3>(7)).lo_word()
                     , tile.Top_SodorTile_cpu_d_prediction_queue__w_ptr.lo_word() == 7 ? "<<--- w_ptr" : ""
                     , tile.Top_SodorTile_cpu_d_prediction_queue__r_ptr.lo_word() == 7 ? "<<--- r_ptr" : ""
                     );
#endif    
         
     
#if 0
         fprintf(logfile, " IC:%s "
            , tile.Top_SodorTile_icache__state.lo_word() == 0x0 ? "RESET"
            : tile.Top_SodorTile_icache__state.lo_word() == 0x1 ? "READY"
            : tile.Top_SodorTile_icache__state.lo_word() == 0x2 ? "REQ  "
            : tile.Top_SodorTile_icache__state.lo_word() == 0x3 ? "RWAIT"
            : tile.Top_SodorTile_icache__state.lo_word() == 0x4 ? "REFIL"
            : "????"
            );
      
         fprintf(logfile, " DC:%s "
            , tile.Top_SodorTile_dcache__state.lo_word() == 0x0 ? "RESET"
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x1 ? "READY"
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x2 ? "REQ  "
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x3 ? "WRBCK"
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x4 ? "WWAIT"
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x5 ? "RWAIT"
            : tile.Top_SodorTile_dcache__state.lo_word() == 0x6 ? "REFIL"
            : "????"
            );
#endif 

         fprintf(logfile, "\n");
      }

      
      uint64_t commit_pc = tile.Top_SodorTile_cpu_d__comUop_pc.lo_word();

      if (tile.Top_SodorTile_cpu_d__com_valid.lo_word() && commit_pc != 0x2ff4 && commit_pc != 0x2ff8)
      {
         retired_inst_count++;
      }
      
      if (commitlog && tile.Top_SodorTile_cpu_d__com_valid.lo_word() && commit_pc != 0x2ff4 && commit_pc != 0x2ff8)
      {
         if (0)
         {
            uint32_t commit_inst = tile.Top_SodorTile_cpu_d__comUop_inst.lo_word();
 
            insn_t commit_insn; 
            commit_insn.bits = commit_inst; 
            std::string commit_inst_str = disasm.disassemble(commit_insn); 
            fprintf(commitlogfile, "core   0: 0x%016lx (0x%08lx) %s\n", commit_pc, commit_inst, commit_inst_str.c_str());
         }
         else
         {

         fprintf(commitlogfile, "\n\nInst: %lu -----------\n", retired_inst_count-1);                    

         uint32_t commit_inst = tile.Top_SodorTile_cpu_d__comUop_inst.lo_word();
 
         insn_t commit_insn; 
         commit_insn.bits = commit_inst; 
         std::string commit_inst_str = disasm.disassemble(commit_insn); 
         fprintf(commitlogfile, "core   0: 0x%016lx (0x%08lx) %s\n", commit_pc, commit_inst, commit_inst_str.c_str());



//         int preg_to_lreg[32];

         //for (int i=1; i < 32; i++)
         //   lreg_to_preg[i] = get_lreg_from_preg(i);


         //from (tail to head+1)
         //   lreg_to_preg[isa_no] = stale_pdst;

         
         #define PRINT_ISAREG_DATA(_r) { fprintf(commitlogfile, " x%2d (%s): 0x%016llx  | " \
                                             , _r \
                                             , xpr_to_string[_r] \
                                             , (unsigned long long) tile.Top_SodorTile_cpu_d__regfile.get((tile.Top_SodorTile_cpu_d__map_table_elements_##_r.lo_word()),0)); \
                                             };

         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(0);
         PRINT_ISAREG_DATA(7);
         PRINT_ISAREG_DATA(14);
         PRINT_ISAREG_DATA(21);
         PRINT_ISAREG_DATA(28);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(1);
         PRINT_ISAREG_DATA(8);
         PRINT_ISAREG_DATA(15);
         PRINT_ISAREG_DATA(22);
         PRINT_ISAREG_DATA(29);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(2);
         PRINT_ISAREG_DATA(9);
         PRINT_ISAREG_DATA(16);
         PRINT_ISAREG_DATA(23);
         PRINT_ISAREG_DATA(30);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(3);
         PRINT_ISAREG_DATA(10);
         PRINT_ISAREG_DATA(17);
         PRINT_ISAREG_DATA(24);
         PRINT_ISAREG_DATA(31);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(4);
         PRINT_ISAREG_DATA(11);
         PRINT_ISAREG_DATA(18);
         PRINT_ISAREG_DATA(25);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(5);
         PRINT_ISAREG_DATA(12);
         PRINT_ISAREG_DATA(19);
         PRINT_ISAREG_DATA(26);
         fprintf(commitlogfile, "\n");
         PRINT_ISAREG_DATA(6);
         PRINT_ISAREG_DATA(13);
         PRINT_ISAREG_DATA(20);
         PRINT_ISAREG_DATA(27);

         fflush(commitlogfile);
      }
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
//         dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst_shadow.lo_word(), "NDISASM_IF");
//         dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst.lo_word(), "NDISASM_ID");
//         dump_disasm(tile.Top_SodorTile_cpu_d__if_inst.lo_word(), "NDISASM");
//         dump_disasm(tile.Top_Tile_cpu_dpath__id_reg_inst.lo_word(), "NDISASM_ID");
//         dump_disasm(ex_reg_inst, "NDISASM_EX");
//         dump_disasm(mem_reg_inst, "NDISASM_MEM");

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
    ex_reg_inst = tile.Top_SodorTile_cpu_d__exeUop_inst.lo_word();

    tile.clock_hi(LIT<1>(0));
    trace_count++;

    if (trace_count == max_cycles)
    {
      failure = "timeout";
      break;
    }



    // look for processor to go into reset after having been running, stop and
    // print tracer results
    if (reset && !tile.Top_SodorTile__reset.lo_word())
    {
      reset = false;
//      fprintf(logfile, "\n\n\nCOMING OUT OF RESET\n\n\n");
    }
    if (!reset && tile.Top_SodorTile__reset.lo_word())
    {
//      fprintf(logfile, "\n\n\n GOING INTO RESET\n\n\n");
      reset = true;
      tracer.stop();
      tracer.print();
    }
  }

  if (vcd)
    fclose(vcdfile);
  
  if (commitlog)
  {
    fclose(commitlogfile);
  }

  if (failure)
  {
    fprintf(logfile, "*** FAILED *** (%s) after %lld cycles\n", failure, (long long)trace_count);
    return -1;
  }

  close(tohost_fd);
  close(fromhost_fd);

  return 0;
}
