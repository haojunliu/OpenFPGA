//**************************************************************************
// L1 Inst Cache 
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2012 Jul 24
//

package Sodor
{

import Chisel._
import Node._
import SodorProcConstants._
import Common._
import Common.Constants._


class ICMemPortIo(view: List[String] = null) extends Bundle (view)
{
   val resp_val  = Bool(OUTPUT)
   val req_val   = Bool(INPUT)
   val req_addr  = UFix(INPUT,  XPRLEN)
   val resp_data = Bits(OUTPUT, 32)
   val flush     = Bool(INPUT)
}

class ICacheIo extends Bundle 
{
   val cpu = new ICMemPortIo()
   val mem = new ioUncachedRequestor
}

class ICache(num_lines: Int, co: CoherencePolicyWithUncached) extends Component 
{
   val io = new ICacheIo()

   val s_reset :: s_ready :: s_request :: s_refill_wait :: s_refill :: Nil = Enum(5) { UFix() };
   val state = Reg(resetVal = s_reset);

   val index_sz = log2Up(num_lines)
   val offset_sz = OFFSET_BITS // log2Up(cache_line_sz)
   val tag_sz = XPRLEN - index_sz - offset_sz
   
   val tag_msb = XPRLEN-1
   val tag_lsb = tag_msb - tag_sz + 1
   val idx_msb = tag_lsb-1
   val idx_lsb = idx_msb - index_sz + 1 //offset_sz
   val off_msb = idx_lsb-1
   val off_lsb = 0 

   require(isPow2(num_lines))

   println("Tag Size: " + tag_sz)
   println("Idx Size: " + index_sz)
   println("Off Size: " + offset_sz)
   println("")
   println("Tag_msb: " + tag_msb)
   println("Tag_lsb: " + tag_lsb)
   println("idx_msb: " + idx_msb)
   println("idx_lsb: " + idx_lsb)
   println("off_msb: " + off_msb)
   println("off_lsb: " + off_lsb)


   // This is the "macro" index and block offset values.
   // The data array is actually broken up into sub-lines to match the refill
   // data width.
   val req_tag    = io.cpu.req_addr(tag_msb, tag_lsb)
   val req_idx    = io.cpu.req_addr(idx_msb, idx_lsb)
   val req_offset = io.cpu.req_addr(off_msb, off_lsb)


   // Refill Logic
   val rf_counter_sz = log2Up(REFILL_CYCLES)
   val refill_counter = Reg(resetVal = UFix(0, rf_counter_sz))

   when (io.mem.xact_rep.valid) 
   {
      refill_counter := refill_counter + UFix(1)
   }

   val refill_done = io.mem.xact_rep.valid && refill_counter.andR
   val refill_we   = refill_done

   
   
   
   // Valid Bit
   val valid_array = Reg(resetVal = Bits(0, num_lines))
   
   when (io.cpu.flush)
   {
      valid_array := Bits(0)
   }
   .elsewhen (refill_we)
   {
      valid_array := valid_array.bitSet(req_idx, Bool(true))
   }
    

   // Tags 
   val tag_array = Mem(num_lines) { Bits(width = tag_sz) }

   when (refill_we)
   {
      tag_array(req_idx) := req_tag
   }

   val tag_hit = valid_array(req_idx) && (tag_array(req_idx) === req_tag)


   // Data Array

   // each row in the memory array is an enire refill chunk    
   // thus REFILL_CYCLES consecutive rows made up a cache line 
   val data_array = Mem(MEM_NUM_LINES*REFILL_CYCLES){ Bits(width = 8*(1 << OFFSET_BITS)/REFILL_CYCLES) }



   // Data Access
   val refill_idx =  Cat(req_idx, refill_counter)
   val read_idx   = io.cpu.req_addr(idx_msb, idx_lsb-rf_counter_sz)
   val data_idx   = Mux((state === s_refill_wait) || (state === s_refill),  
                        refill_idx,
                        read_idx).toUFix
   
   when (io.mem.xact_rep.valid)
   {
      data_array(data_idx) := io.mem.xact_rep.bits.data
   }

   val read_line = data_array(data_idx)

   //convert from # of bytes to # of bits to shift
   val shift_amt = Cat(io.cpu.req_addr(off_msb-rf_counter_sz, off_lsb), UFix(0, 3))
   val rdata_out = (read_line >> shift_amt)(31,0)



 
   val finish_queue = (new Queue(1)) { new TransactionFinish }
   finish_queue.io.enq.valid := refill_done && io.mem.xact_rep.bits.require_ack
   finish_queue.io.enq.bits.global_xact_id := io.mem.xact_rep.bits.global_xact_id
    
   // output signals
   io.cpu.resp_val  := (state === s_ready) && io.cpu.req_val && tag_hit
   io.cpu.resp_data := rdata_out
   io.mem.xact_init.valid := (state === s_request) && finish_queue.io.enq.ready
   io.mem.xact_init.bits.x_type := co.getTransactionInitTypeOnUncachedRead
   io.mem.xact_init.bits.address := io.cpu.req_addr(tag_msb,idx_lsb).toUFix
   io.mem.xact_finish <> finish_queue.io.deq
          


   // control state machine
   switch (state) 
   {
      is (s_reset) 
      {
         state := s_ready;
      }
      is (s_ready) 
      {
         when (io.cpu.req_val && !tag_hit)
         {
            state := s_request;
         }
      }
      is (s_request)
      {
         when (io.mem.xact_init.ready && finish_queue.io.enq.ready) 
         {
            state := s_refill_wait;
         }
      }
      is (s_refill_wait) 
      {
         when (io.mem.xact_abort.valid) 
         {
            state := s_request
         }
         when (io.mem.xact_rep.valid) 
         {
            state := s_refill;
         }
      }
      is (s_refill) 
      {
         when (refill_done) 
         {
            state := s_ready;
         }
      }
   }

}

} 
