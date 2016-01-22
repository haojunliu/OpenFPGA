package Sodor

import Chisel._
import Node._
import SodorProcConstants._
import scala.math._
import Common._
import Common.Constants._

class DpathPCRIo extends Bundle()
{
   val host  = new ioHTIF()
   val r     = new ioReadPort()
   val w     = new ioWritePort()

   val status    = Bits(OUTPUT, 32)
   val evec      = UFix(OUTPUT, VADDR_BITS) 
   
   val exception = Bool(INPUT)
   val exc_cause = UFix(INPUT,  6)
   val eret      = Bool(INPUT)
   val pc        = UFix(INPUT,  XPRLEN)
}

class SodorDpathPCR extends Component
{
   val io = new DpathPCRIo();
   
   val reg_error_mode = Reg(resetVal = Bool(false))
   
   // status register
   val reg_status_vm  = Reg(resetVal = Bool(false))          // virtual memory?
   val reg_status_im  = Reg(resetVal = Bits(0,SR_IM_WIDTH))  // interrupt mask
   val reg_status_sx  = Bool(false)                          // RV64S?
   val reg_status_ux  = Bool(false)                          // RV64U?
   val reg_status_ec  = Bool(false)                          // RVC (compression) support?
   val reg_status_ef  = Bool(false)                          // floating point?
   val reg_status_ev  = Bool(false)                          // vector machine support?
   val reg_status_s   = Reg(resetVal = Bool(true))           // in supervisor mode?
   val reg_status_ps  = Reg(resetVal = Bool(false))
   val reg_status_et  = Reg(resetVal = Bool(false))          // exceptions turned on?
   
   val status = Cat(reg_status_im,     
                     Bits(0,7), 
                     reg_status_vm, 
                     reg_status_sx, 
                     reg_status_ux, 
                     reg_status_s, 
                     reg_status_ps, 
                     reg_status_ec, 
                     reg_status_ev, 
                     reg_status_ef, 
                     reg_status_et)
   io.status := status
   
   // privileged control registers
   val reg_epc      = Reg() { UFix() }
   val reg_cause    = Reg() { Bits() }
//   val reg_badvaddr = Reg() { UFix() }
   val reg_ebase    = Reg() { UFix() }
   val reg_count    = Reg() { UFix() }
   val reg_compare  = Reg() { UFix() }
//   val reg_ptbr     = Reg() { Bits() }
   val reg_k0       = Reg() { Bits() }
   val reg_k1       = Reg() { Bits() }
   val reg_coreid   = Reg() { Bits() }
   val reg_tohost   = Reg(resetVal = Bits(0, XPRLEN)) 
   val reg_fromhost = Reg(resetVal = Bits(0, XPRLEN))
   val reg_stats    = Reg(resetVal = Bool(false)) // only used by Sodor.. not in ISA spec
   
   val rdata = Bits()
   val raddr = Mux(io.r.en, io.r.addr, io.host.pcr_req.bits.addr(4,0))
   io.host.pcr_rep.valid := io.host.pcr_req.fire()
   io.host.pcr_rep.bits  := rdata
 
   val wen = io.w.en || !io.r.en && io.host.pcr_req.valid && io.host.pcr_req.bits.rw
   val waddr = Mux(io.w.en, io.w.addr, io.host.pcr_req.bits.addr)
   val wdata = Mux(io.w.en, io.w.data, io.host.pcr_req.bits.data)
   io.host.pcr_req.ready := !io.w.en && !io.r.en
       
   io.host.debug.error_mode    := reg_error_mode
   io.r.data := rdata

   io.host.ipi_req.valid := io.w.en && io.w.addr === PCR_SEND_IPI
   io.host.ipi_req.bits := io.w.data
   
   io.evec := Mux(io.exception, reg_ebase, reg_epc)


   when (io.exception) 
   {
      when (!reg_status_et) 
      {
         reg_error_mode := Bool(true)
      }
      .otherwise 
      {
         reg_status_s  := Bool(true)
         reg_status_ps := reg_status_s
         reg_status_et := Bool(false)
         reg_epc       := io.pc
         reg_cause     := io.exc_cause
      }
   }
  
   when (io.eret) 
   {
      reg_status_s  := reg_status_ps
      reg_status_et := Bool(true)
   }

 
//   when (reg_count === reg_compare) 
//   {
//      r_irq_timer := Bool(true)
//   }
   reg_count := reg_count + UFix(1)
       

   // clear TOHOST when polled by the front-end server
   when (io.host.pcr_req.fire() && !io.host.pcr_req.bits.rw && io.host.pcr_req.bits.addr === PCR_TOHOST) 
   { 
      reg_tohost := UFix(0) 
   }
   

   when (wen) 
   {
      when (waddr === PCR_STATUS) 
      {
         reg_status_vm := wdata(SR_VM).toBool
         reg_status_im := wdata(SR_IM_WIDTH+SR_IM,SR_IM)
//         reg_status_sx := wdata(SR_S64).toBool
//         reg_status_ux := wdata(SR_U64).toBool
         reg_status_s  := wdata(SR_S).toBool
         reg_status_ps := wdata(SR_PS).toBool
//         reg_status_ev := Bool(HAVE_VEC) && wdata(SR_EV).toBool
//         reg_status_ef := Bool(HAVE_FPU) && wdata(SR_EF).toBool
//         reg_status_ec := Bool(HAVE_RVC) && wdata(SR_EC).toBool
         reg_status_et := wdata(SR_ET).toBool
      }
      when (waddr === PCR_FROMHOST) 
      { 
         when (reg_fromhost === UFix(0) || io.w.en) 
         { 
            reg_fromhost := wdata
         }
      }
      when (waddr === PCR_TOHOST) 
      { 
     	   when (reg_tohost === UFix(0)) 
         { 
            reg_tohost := wdata 
         }
      }
      when (waddr === PCR_STATS)  { reg_stats   := wdata(0).toBool }
      when (waddr === PCR_EPC)    { reg_epc     := wdata(VADDR_BITS,0).toUFix }
      when (waddr === PCR_EVEC)   { reg_ebase   := wdata(VADDR_BITS-1,0).toUFix; }
      when (waddr === PCR_COUNT)  { reg_count   := wdata(31,0).toUFix }
      when (waddr === PCR_COMPARE){ reg_compare := wdata(31,0).toUFix; //r_irq_timer := Bool(false); 
      }
      when (waddr === PCR_COREID) { reg_coreid  := wdata(15,0)     }
      when (waddr === PCR_K0)     { reg_k0      := wdata           }
      when (waddr === PCR_K1)     { reg_k1      := wdata           }
   }

   rdata := status
   switch (raddr) 
   {
      is (PCR_FROMHOST) { rdata := reg_fromhost }
      is (PCR_TOHOST)   { rdata := reg_tohost   }
      is (PCR_STATS)    { rdata := reg_stats    }
      is (PCR_STATUS)   { rdata := status       }
      is (PCR_EPC)      { rdata := Cat(Fill(64-VADDR_BITS-1, reg_epc(VADDR_BITS)), reg_epc) }
//      is (PCR_BADVADDR) { rdata := Cat(Fill(64-VADDR_BITS-1, reg_badvaddr(VADDR_BITS)), reg_badvaddr) }
      is (PCR_EVEC)     { rdata := Cat(Fill(64-VADDR_BITS, reg_ebase(VADDR_BITS-1)), reg_ebase) }
      is (PCR_COUNT)    { rdata := Cat(Fill(32, reg_count(31)), reg_count)       }
      is (PCR_COMPARE)  { rdata := Cat(Fill(32, reg_compare(31)), reg_compare)   }
      is (PCR_CAUSE)    { rdata := Cat(reg_cause(5), Bits(0,58), reg_cause(4,0)) }
      is (PCR_K0)       { rdata := reg_k0 }
      is (PCR_K1)       { rdata := reg_k1 }
   }
}

class ioReadPort extends Bundle()
{
   val addr = UFix(INPUT, 5)
   val en   = Bool(INPUT)
   val data = Bits(OUTPUT, XPRLEN)
}

class ioWritePort extends Bundle()
{
   val addr = UFix(INPUT, 5)
   val en   = Bool(INPUT)
   val data = Bits(INPUT, XPRLEN)
}
