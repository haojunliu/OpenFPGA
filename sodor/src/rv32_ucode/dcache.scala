//**************************************************************************
// L1 Data Cache (blocking cache)
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2012 Jul 24
//
// 

// 1. When requesting an absent line, request refill if current line is clean.
// 2. if line dirty, first perform writeback. On success, clear dirty bit.
// then goto 1.

package Sodor
{

import Chisel._
import Node._
import Common._
import Common.Constants._
import SodorProcConstants._


class DCMemPortIo(view: List[String] = null) extends Bundle (view)
{
   val resp_val  = Bool(OUTPUT)
   val req_val   = Bool(INPUT)
   val req_addr  = UFix(INPUT,  XPRLEN)
   val req_rw    = Bool(INPUT)
   val req_wdata = Bits(INPUT,  XPRLEN)
   val req_mask  = Bits(INPUT,  2)
   val resp_data = Bits(OUTPUT, 32)
   val flush     = Bool(INPUT)      
}

class DCacheIo extends Bundle 
{
   val cpu = new DCMemPortIo()
   val mem = new ioTileLink
}

class DCache(num_lines: Int, co: CoherencePolicyWithUncached) extends Component 
{
   val io = new DCacheIo()

   val s_reset :: s_ready :: s_request :: s_writeback :: s_writeback_wait :: s_refill_wait :: s_refill :: s_flush_line_start :: s_flush_line_end :: Nil = Enum(9) { UFix() }
   val state = Reg(resetVal = s_reset);

   val index_sz = log2Up(num_lines)
   val offset_sz = OFFSET_BITS // log2Up(cache_line_sz)
   val tag_sz = XPRLEN - index_sz - offset_sz
   
   val tag_msb = XPRLEN-1
   val tag_lsb = tag_msb - tag_sz + 1
   val idx_msb = tag_lsb-1
   val idx_lsb = idx_msb - index_sz + 1
   val off_msb = idx_lsb-1
   val off_lsb = 0 

   require(isPow2(num_lines))


   // This is the "macro" index and block offset values.
   // The data array is actually broken up into sub-lines to match the refill
   // data width.
   val req_tag    = io.cpu.req_addr(tag_msb, tag_lsb)
   val req_idx    = io.cpu.req_addr(idx_msb, idx_lsb)
   val req_offset = io.cpu.req_addr(off_msb, off_lsb)
   val tag_hit    = Bool()

   
   val performing_flush = Reg(resetVal = Bool(false))
   val flush_idx        = Reg(resetVal = UFix(0, log2Up(MEM_NUM_LINES)))
   val flush_addr       = UFix()
   val flush_success    = Bool()


   val access_idx = Mux(performing_flush, flush_idx, req_idx)


   // Refill Logic
   val rf_counter_sz = log2Up(REFILL_CYCLES)
   val refill_counter = Reg(resetVal = UFix(0, rf_counter_sz))

   when (io.mem.xact_rep.valid && (state === s_refill_wait || state === s_refill)) 
   {
      refill_counter := refill_counter + UFix(1)
   }

   val refill_done = io.mem.xact_rep.valid && refill_counter.andR
   val refill_we   = refill_done



   // Valid Bit
   val valid_array = Reg(resetVal = Bits(0, num_lines))
   
   when (flush_success)
   {
      valid_array := valid_array.bitSet(access_idx, Bool(false))
   }
   .elsewhen (refill_we)
   {
      valid_array := valid_array.bitSet(access_idx, Bool(true))
   }


   // Dirty Bit
   val dirty_array = Reg(resetVal = Bits(0, num_lines))

   val line_is_dirty = dirty_array(access_idx) && valid_array(access_idx)

   // clear dirty bit on a successful WB ack
   val clr_dirty_bit = (state === s_writeback_wait && io.mem.xact_rep.valid)

   when (io.cpu.req_val && io.cpu.req_rw && (state === s_ready) && tag_hit)
   {
      dirty_array := dirty_array.bitSet(access_idx, Bool(true))
   }
   .elsewhen (clr_dirty_bit)
   {
      dirty_array := dirty_array.bitSet(access_idx, Bool(false))
   }

    

   // Tags 
   val tag_array = Mem(num_lines) { Bits(width = tag_sz) }

   when (refill_we)
   {
      tag_array(access_idx) := req_tag
   }

   tag_hit := valid_array(access_idx) && (tag_array(access_idx) === req_tag)


   // Data Array

   // each row in the memory array is an enire refill chunk    
   // thus "REFILL_CYCLES" consecutive rows made up a cache line 
   val data_array = Mem(MEM_NUM_LINES*REFILL_CYCLES){ Bits(width = 8*(1 << OFFSET_BITS)/REFILL_CYCLES) }


   // Data Access
   val refill_idx = Cat(access_idx, refill_counter)
   val cpu_rw_idx = io.cpu.req_addr(idx_msb, idx_lsb-rf_counter_sz)
   
   val wb_counter_sz = log2Up(REFILL_CYCLES)
   val wb_counter = Reg(resetVal = UFix(0, rf_counter_sz))
   val wb_idx     = Cat(access_idx, wb_counter)
   
   val data_idx   = Mux((state === s_refill_wait) || (state === s_refill),  refill_idx,
                    Mux((state === s_writeback),                            wb_idx,
                                                                            cpu_rw_idx)).toUFix

   // move the wdata into position on the sub-line
   val byte_shift_amt = io.cpu.req_addr(off_msb-rf_counter_sz, off_lsb)
   val bit_shift_amt  = Cat(byte_shift_amt, UFix(0,3))
   val wdata = io.cpu.req_wdata << bit_shift_amt
   val wmask = Fill(32, UFix(0x1)) << bit_shift_amt
   
   when (io.mem.xact_rep.valid && (state === s_refill || state === s_refill_wait))
   {
      data_array(data_idx) := io.mem.xact_rep.bits.data
   }
   .elsewhen (io.cpu.req_val && io.cpu.req_rw && tag_hit)
   {
      data_array.write(data_idx, wdata, wmask)
   }

   val read_line = data_array(data_idx)

   val rdata_out = (read_line >> bit_shift_amt)(31,0)

          
   // Writeback Logic (for writing sub-lines back to main memory)
   val writeback_queue = (new Queue(REFILL_CYCLES)) { new TransactionInitData }

   when (state === s_request || state === s_flush_line_start)
   {
      wb_counter := UFix(0)
   }
   .elsewhen (state === s_writeback)
   {
      wb_counter := wb_counter + UFix(1)
   }
   
   val wb_done = io.mem.xact_rep.valid && (state === s_writeback_wait)
   
   writeback_queue.io.enq.valid     := (state === s_writeback)
   writeback_queue.io.enq.bits.data := read_line
 

 
   // Finish Queue (track inflight transaction data)
   val finish_queue = (new Queue(2)) { new TransactionFinish }
   finish_queue.io.enq.valid := (wb_done || refill_done) && io.mem.xact_rep.bits.require_ack
   finish_queue.io.enq.bits.global_xact_id := io.mem.xact_rep.bits.global_xact_id
    
   // output signals
   io.cpu.resp_val         := (state === s_ready) && io.cpu.req_val && tag_hit
   io.cpu.resp_data        := rdata_out
   io.mem.xact_init.valid  := (((state === s_request) || (state === s_flush_line_start && line_is_dirty)) && finish_queue.io.enq.ready) 
   io.mem.xact_init.bits.x_type := Mux(line_is_dirty, co.getTransactionInitTypeOnUncachedWrite(),
                                                      co.getTransactionInitTypeOnUncachedRead())

   io.mem.xact_init.bits.address := Mux(line_is_dirty,    Cat(tag_array(access_idx), access_idx),
                                                          io.cpu.req_addr(tag_msb, idx_lsb)).toUFix
   io.mem.xact_init_data         <> writeback_queue.io.deq
   io.mem.xact_finish            <> finish_queue.io.deq

   // must write full writeback data payload before handling acks/nacks
   io.mem.xact_rep.ready   := ((state != s_writeback))
   io.mem.xact_abort.ready := ((state != s_writeback))


   // Flush Logic
   flush_success := (state === s_flush_line_end)
   
   when (io.cpu.flush)
   {
      performing_flush := Bool(true)
   }
   .elsewhen (flush_idx.andR && flush_success)
   {
      performing_flush := Bool(false)
   }
   
   when (io.cpu.flush)
   {
      flush_idx := UFix(0)
   }
   .elsewhen (performing_flush && flush_success)
   {
      flush_idx := flush_idx + UFix(1)
   }



   // control state machine
   switch (state) 
   {
      is (s_reset) 
      {
         state := s_ready
      }
      is (s_ready) 
      {
         when (io.cpu.flush)
         {
            state := s_flush_line_start
         }
         .elsewhen (io.cpu.req_val && !tag_hit) 
         {
            state := s_request
         }
      }
      is (s_request)
      {
         when (io.mem.xact_init.ready && finish_queue.io.enq.ready && !line_is_dirty)
         {
            state := s_refill_wait
         }
         when (io.mem.xact_init.ready && finish_queue.io.enq.ready && line_is_dirty)
         {
            state := s_writeback
         }
      }
      is (s_flush_line_start)
      {
         when (!line_is_dirty)
         {
            state := s_flush_line_end
         }
         .elsewhen (io.mem.xact_init.ready && finish_queue.io.enq.ready && line_is_dirty)
         {
            state := s_writeback
         }
      }
      is (s_flush_line_end)
      {
         when (flush_idx.andR)
         {
            state := s_ready
         }
         .otherwise
         {
            state := s_flush_line_start
         }
      }
      is (s_writeback)
      {
         when (wb_counter >= UFix(REFILL_CYCLES-1))
         {
            state := s_writeback_wait
         }
      }
      is (s_writeback_wait)
      {
         when (performing_flush && io.mem.xact_rep.valid)
         {
            state := s_flush_line_end
         }
         .elsewhen (performing_flush && io.mem.xact_abort.valid)
         {
            state := s_flush_line_start
         }
         .elsewhen (io.mem.xact_rep.valid || io.mem.xact_abort.valid)
         {
            // on wb success, line no longer dirty, retry refill request
            state := s_request
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
            state := s_refill
         }
      }
      is (s_refill) 
      {
         when (refill_done) 
         {
            state := s_ready
         }
      }
   }

}

} 
