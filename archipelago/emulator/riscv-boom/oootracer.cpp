#include "oootracer.h"


// emulator.cpp passes in a pointer to the Instruction Register 
// found in the simulated processor.
//Tracer_t::Tracer_t(dat_t<32>* _inst_ptr, dat_t<1>* _stats_reg, FILE* log)
Tracer_t::Tracer_t(dat_t<32>* _inst_ptr, FILE* log)
{
   inst_ptr = _inst_ptr;
//   stats_reg = _stats_reg;
   logfile  = log;
   paused   = 1;
}

// Initializes and turns the tracer on. 
// HOWEVER the tracer will NOT collect stats until the StatsEnable register
// (co-processor register cr10) has been set in the processor.
void Tracer_t::start()
{
   paused = 0;
   
   trace_data.cycles = 0;
   trace_data.inst_count = 0;
   trace_data.brpred_correct_count = 0;  
   trace_data.brpred_total_count = 0;  
                  
   trace_data.nop_count   = 0;
   trace_data.bubble_count= 0;
   trace_data.ldst_count  = 0;
   trace_data.arith_count = 0;
   trace_data.br_count    = 0;  
   trace_data.jmp_count   = 0;  
   trace_data.misc_count  = 0;  
   trace_data.load_count  = 0;
   trace_data.store_count = 0;
   trace_data.lsu_order_fail_count = 0;
   trace_data.lsu_ld_put_to_sleep  = 0;
   trace_data.lsu_ld_killed        = 0;
   trace_data.lsu_ld_forwarded     = 0;
   trace_data.lsu_misc          = 0;

   /* XXX Step 2: INITIALIZE YOUR COUNTERS HERE */
}


// pull bits from a bit-array
// getBits(inst, 6,0) returns inst[6:0]
int getBits(uint32_t data_bits, int hi_bit, int lo_bit)
{
   int sz = hi_bit - lo_bit + 1;
   int offset  = lo_bit;
   int sz_mask = 0xFFFFFFFF >> (32-sz);
   return ((data_bits >> offset) & sz_mask);
}

// Input: boolean increment instruction count?
// For regular RISC-V pipelines, this will always be set to true on every clock
// cycle in the calling function.
//
// For other more exotic pipelines (like the micro-coded pipeline), inst_count
// is only incremented on instruction fetch.
//
// NOTE: we still do not increment inst_count for machine-generated NOP/bubbles,
//   which are represented by (XOR, x0, x0, x0).
//
void Tracer_t::tick(bool increment_inst_count
                  , bool increment_spec_br_correct
                  , bool increment_spec_br_count
                  , Top_t *tile
                  )
{
   // only collect stats if the tracer is not paused AND co-processor 
   // register cr10 is enabled.
//   if (!paused && stats_reg->lo_word() == 0x1)
   if (!paused)
   {
      trace_data.cycles++;

      // translate from the Chisel/Emulator data wrapper to uint32_t
      uint32_t inst = inst_ptr->lo_word();

      // Consult the riscv-spec.pdf for help (in particular the Major Opcode Map).
      uint32_t opcode = getBits(inst,6,0); 
      uint32_t opc_hi = getBits(inst,6,5); 
      uint32_t opc_lo = getBits(inst,4,2); 

      // don't increment on machine-generated bubbles
      if (increment_inst_count && inst != 0x233)
         trace_data.inst_count++;

      if (increment_spec_br_correct)
         trace_data.brpred_correct_count++;
      if (increment_spec_br_count)
      {
//            fprintf(logfile, "incrementing branch count\n");
         if (!increment_spec_br_correct)
         {
//            fprintf(logfile, "MISS FOUND\n");
         }
         trace_data.brpred_total_count++;
      }
      

      if (increment_inst_count)
      {
         if (inst == 0x13) 
            trace_data.nop_count++;
         else if (inst == 0x233) 
            trace_data.bubble_count++;
         else if (opcode == 0x37) //lui
            trace_data.misc_count++;
         else if (opcode == 0x63)
            trace_data.br_count++;
         else if (opcode == 0x67 //j
               || opcode == 0x6b //jalr   // 11_010_11
               || opcode == 0x6f //jal    // 11_011_11
               )  
            trace_data.jmp_count++;
         else if (opcode == 0x03)
         {
            trace_data.load_count++;
            trace_data.ldst_count++;
         }
         else if (opcode == 0x23)    
         {
            trace_data.store_count++;
            trace_data.ldst_count++;
         }
//         else if (opcode == 0x03 || opcode == 0x23) 
//            trace_data.ldst_count++;
         else if (opc_lo == 0x6 || opc_lo == 0x4) 
            trace_data.arith_count++;
         else
            trace_data.misc_count++;
      }


      if (tile->Top_SodorTile_cpu_d_lsu__lsu_misspec.lo_word())
      {
         trace_data.lsu_order_fail_count++;
      }
      if (tile->Top_SodorTile_cpu_d_lsu__kill_load_request.lo_word())
      {
         trace_data.lsu_ld_killed++;
         trace_data.lsu_ld_put_to_sleep = trace_data.lsu_ld_killed - trace_data.lsu_ld_forwarded;
         
//         if ((tile->Top_SodorTile_cpu_d_lsu__io_forward_val.lo_word() & 1) == 0)
//         {
//            trace_data.lsu_ld_put_to_sleep = trace_data.lsu_ld_put_to_sleep;
//         }
//         if ((tile->Top_SodorTile_cpu_d_lsu_forwarding_age_logic__io_forwarding_val.lo_word() & 1) == 1)
         trace_data.lsu_misc++;
      } 

      // need to delay "kill request" signal by two cycles to accurately get "put to sleep"?
      if ((tile->Top_SodorTile_cpu_d_lsu__io_forward_val.lo_word() & 1) == 1)
      {
         trace_data.lsu_ld_forwarded = 1 + trace_data.lsu_ld_forwarded;
      }

   }
}
 
// LAB 3, Question 2.7 and 2.8
void Tracer_t::monitor_issue_window(Top_t *tile)
{
   // Instructions:
   //
   // 0. I'm passing in the entire "tile" object. You can access any of its
   //    elements (i.e., you can read any register or wire in the Chisel design!).
   //
   // 1. Grep through ./generated-src/Tile.h to find the C++ names to Chisel signals
   //
   // 2. The templated dat_t<> types need to be converted to the uint64_t type:
   //    call ".lo_word()" to get the lowest 64bits from the signal.
   //
   // 3. ???
   //
   // 4 Profit!
   //
   // Note: There are FOUR issue slots to monitor.
   //
   //
   // To give you a head-start, here are the eight most interesting signals for
   // Question 2.7: The chisel code for these signals can be found in
   // dpath.scala, in the IntegerIssueSlot component.
   //
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot__slot_valid;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_1__slot_valid;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_2__slot_valid;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_3__slot_valid;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot__io_request;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_1__io_request;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_2__io_request;
   // dat_t<1> Tile_cpu_d_IntegerIssueSlot_3__io_request;
   
   uint64_t num_ready_to_issue = 0;

   // an example of reading the valid bit of IntegerIssueSlot #0
   if (tile->Top_SodorTile_cpu_d_IntegerIssueSlot__slot_valid.lo_word())
   {
      //printf("IntegerIssueSlot0 is valid\n");
      // etc.
   }
      
   /* XXX Step 3. WRITE YOUR CODE HERE*/
      

   // insert code that increments "num_ready_to_issue" 

   // insert code that increments your counters

}

                                   
void Tracer_t::stop()
{
   paused = 1;
}

void Tracer_t::print()
{
   fprintf(logfile, "\n");
   fprintf(logfile, "#----------- Tracer Data -----------\n");
   
   if (trace_data.cycles == 0)
      fprintf(logfile, "\n#     No stats collected: co-processor register cr10 was never set by the software.\n\n");
   else
      fprintf(logfile, "#\n");
   
   fprintf(logfile, "#      CPI   : %2.2g\n",  ((double) trace_data.cycles) / trace_data.inst_count);
   fprintf(logfile, "#      IPC   : %2.2g\n",  ((double) trace_data.inst_count) / trace_data.cycles);
   fprintf(logfile, "#      cycles: %lu\n",  trace_data.cycles);
   fprintf(logfile, "#      insns : %lu\n",  trace_data.inst_count);
   fprintf(logfile, "#\n");
   fprintf(logfile, "#      BrPred Accur: %2.3g %%\n",  100.0 * ((double) trace_data.brpred_correct_count) / trace_data.brpred_total_count);
   fprintf(logfile, "#      correct pred: %lu\n",  trace_data.brpred_correct_count);
   fprintf(logfile, "#      total   pred: %lu\n",  trace_data.brpred_total_count);
   fprintf(logfile, "#\n");

 
   fprintf(logfile, "#      Bubbles     : %2.3g %%\n",  100.0 * ((double) trace_data.bubble_count)/ trace_data.inst_count);
   fprintf(logfile, "#      Nop instr   : %2.3g %%\n",  100.0 * ((double) trace_data.nop_count  ) / trace_data.inst_count);
   fprintf(logfile, "#      Arith instr : %2.3g %%\n",  100.0 * ((double) trace_data.arith_count) / trace_data.inst_count);
   fprintf(logfile, "#      Ld/St instr : %2.3g %%\n",  100.0 * ((double) trace_data.ldst_count ) / trace_data.inst_count);
   fprintf(logfile, "#      branch instr: %2.3g %%\n",  100.0 * ((double) trace_data.br_count   ) / trace_data.inst_count);
   fprintf(logfile, "#      jump   instr: %2.3g %%\n",  100.0 * ((double) trace_data.jmp_count  ) / trace_data.inst_count);
   fprintf(logfile, "#      misc instr  : %2.3g %%\n",  100.0 * ((double) trace_data.misc_count ) / trace_data.inst_count);
   
   fprintf(logfile, "#\n#\n");
   fprintf(logfile, "#        - Loads          : %lu\n", trace_data.load_count);
   fprintf(logfile, "#           - order-fail  : %lu   (%2.3g %%)\n",  trace_data.lsu_order_fail_count
                                          , 100.0 * ((double) trace_data.lsu_order_fail_count) / trace_data.load_count);
   fprintf(logfile, "#           - forwarded   : %lu   (%2.3g %%)\n",  trace_data.lsu_ld_forwarded
                                          , 100.0 * ((double) trace_data.lsu_ld_forwarded) / trace_data.load_count);
   fprintf(logfile, "#           - put-to-sleep: %lu   (%2.3g %%)\n",  trace_data.lsu_ld_put_to_sleep
                                          , 100.0 * ((double) trace_data.lsu_ld_put_to_sleep) / trace_data.load_count);
   fprintf(logfile, "#           - killed      : %lu   (%2.3g %%)\n",  trace_data.lsu_ld_killed
                                          , 100.0 * ((double) trace_data.lsu_ld_killed) / trace_data.load_count);
   fprintf(logfile, "#           - misc        :  %lu   (%2.3g %%)\n",  trace_data.lsu_misc
                                          , 100.0 * ((double) trace_data.lsu_misc) / trace_data.load_count);

   fprintf(logfile, "#        - Stores         : %lu\n", trace_data.store_count);


   /* XXX Step 4. PRINT YOUR COUNTERS HERE */
   
   
   fprintf(logfile, "#-----------------------------------\n");
   fprintf(logfile, "\n");


}
