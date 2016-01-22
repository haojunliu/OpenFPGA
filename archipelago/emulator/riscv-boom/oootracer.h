//************************************************************
// CS152 Lab 3: Tracer class for analyzing BOOM
//************************************************************
// TA      : Christopher Celio
// Date    : 2012 Spring
// Student :  


#include <stdint.h>
#include <stdio.h>
#include "emulator.h" 
#include "Top.h" 
       
class Tracer_t {

   public:
//      Tracer_t(dat_t<32>* _inst_ptr, dat_t<1>* _stats_reg, FILE* log);
      Tracer_t(dat_t<32>* _inst_ptr, FILE* log);
      void start();
      void tick(bool increment_inst_count, bool increment_spec_br_correct, bool increment_spec_br_count, Top_t *tile);
      void monitor_issue_window(Top_t *tile);
      void stop();
      void print();

   private:
      dat_t<32>* inst_ptr;  // pointer to the Instruction Register in the processor
//      dat_t<1>*  stats_reg; // pointer to the StatsEnable co-processor register cr10.
                            // Allows the software to set when to start tracking stats
                            // by calling "li x1, 1; mtpcr cr10, x1".
      int        paused;
        
      struct 
      {
         uint64_t cycles;
         uint64_t inst_count;
         
         uint64_t brpred_correct_count; //number of successful predictions
         uint64_t brpred_total_count; // number of predictions made
                  
         uint64_t nop_count;
         uint64_t bubble_count;
         uint64_t ldst_count;
         uint64_t arith_count;
         uint64_t br_count;  
         uint64_t jmp_count;  
         uint64_t misc_count;  


         /* XXX Step 1: ADD MORE COUNTS HERE */
         uint64_t load_count;
         uint64_t store_count;

         uint64_t lsu_order_fail_count; // pipeline flushes due to load-store ordering fail
         uint64_t lsu_ld_put_to_sleep; // load matched store and put to sleep
         uint64_t lsu_ld_killed;       // load killed (either matched or put to sleep)
         uint64_t lsu_ld_forwarded;    // load forwarded from an older store 
         uint64_t lsu_misc;    // load forwarded from an older store 
         // etc. 
      
      } trace_data;


      FILE*      logfile;
};

