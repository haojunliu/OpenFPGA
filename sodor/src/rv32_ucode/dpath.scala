//**************************************************************************
// RISCV U-Coded Processor Data Path
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2011 May 28

package Sodor
{

import Chisel._
import Node._

import Common._
import Common.Constants._
import SodorProcConstants._

//import scala.collection.mutable.ArrayBuffer


class DatToCtlIo extends Bundle() 
{
   val inst     = Bits(OUTPUT, 32)
   val alu_zero = Bool(OUTPUT)
}


class DpathIo extends Bundle() 
{
   val host = new ioHTIF()
   val mem = new DCMemPortIo(List("req_addr", "req_mask", "req_wdata", "resp_data")).flip()
   val ctl  = new CtlToDatIo().flip()
   val dat  = new DatToCtlIo()
    
}  


class DatPath extends Component {
   val io = new DpathIo()


   // forward declarations
   val imm       = Bits(width = XPRLEN)
   val alu       = Bits(width = XPRLEN)
   val reg_rdata = Bits(width = XPRLEN)
   val pcr_rdata = Bits(width = XPRLEN)

   // The Bus 
   // (this is a bus-based RISCV implementation, so all data movement goes
   // across this wire)
   val bus = MuxCase(Bits(0,XPRLEN), Array(
               (io.ctl.en_imm)                  -> imm(XPRLEN-1,0),
               (io.ctl.en_alu)                  -> alu(XPRLEN-1,0), 
               (io.ctl.en_reg & ~io.ctl.reg_wr &
                  io.ctl.reg_sel != RS_CP)      -> reg_rdata(XPRLEN-1,0),
               (io.ctl.en_mem & ~io.ctl.mem_wr) -> io.mem.resp_data(31,0),
               (io.ctl.en_reg & ~io.ctl.reg_wr & 
                  io.ctl.reg_sel === RS_CP)     -> pcr_rdata
             ));
 
   

   // IR Register
   val ir    = Reg(resetVal = Bits(0,32));
   when (io.ctl.ld_ir) { ir := bus }
   io.dat.inst := ir;
    
   // A Register
   val reg_a = Reg(resetVal = Bits(0xaaaa,XPRLEN));
   when (io.ctl.ld_a) { reg_a := bus }
     
   // B Register
   val reg_b = Reg(resetVal = Bits(0xbbbb,XPRLEN));
   when (io.ctl.ld_b) { reg_b := bus }
    
   // MA Register
   val reg_ma  = Reg(resetVal = Bits(0xeeee,XPRLEN));
   when (io.ctl.ld_ma) { reg_ma := bus }
 

   // IR Immediate
   imm := MuxCase(Bits(0), Array(
             (io.ctl.is_sel === IS_I)  -> Cat(Fill(ir(21),(20)),ir(21,10)), 
             (io.ctl.is_sel === IS_BS) -> Cat(Fill(ir(31),(20)),ir(31,27),ir(16,10)),
             (io.ctl.is_sel === IS_L)  -> Cat(ir(26,7),Fix(0,12)),
             (io.ctl.is_sel === IS_J)  -> Cat(Fill(ir(31),(6)), ir(31,7),UFix(0,1)),
             (io.ctl.is_sel === IS_BR) -> Cat(Fill(ir(31),(19)),ir(31,27),ir(16,10),UFix(0,1))
           ));

     

   
   // Register File (Single Port)
   // also holds the PC register
   val rs1 = ir(26, 22).toUFix;
   val rs2 = ir(21, 17).toUFix;
   val rd  = ir(31, 27).toUFix;

   val reg_addr  = MuxCase(UFix(0), Array(
                     (io.ctl.reg_sel === RS_PC)  -> PC, 
                     (io.ctl.reg_sel === RS_RD)  -> rd,
                     (io.ctl.reg_sel === RS_RS1) -> rs1,
                     (io.ctl.reg_sel === RS_RS2) -> rs2,
                     (io.ctl.reg_sel === RS_RA)  -> RA,
                     (io.ctl.reg_sel === RS_X0)  -> X0,
                     (io.ctl.reg_sel === RS_CP)  -> (rs1 + UFix(33,7))
                   ));
 
   //note: I could be far more clever and save myself on wasted registers here...
   //32 x-registers, 32 cp-registers, 1 pc-register
//   val regfile = Mem(65){ Bits(resetVal = Bits(0, XPRLEN)) }
   val regfile = Vec(65){ Reg(resetVal = Bits(0, XPRLEN)) }

   when (io.ctl.en_reg & io.ctl.reg_wr & reg_addr != UFix(0))
   {
      regfile(reg_addr) := bus
   }
   
   reg_rdata :=  Mux((reg_addr === UFix(0)), Bits(0, XPRLEN), 
                                              regfile(reg_addr));


   // ALU
   val alu_shamt = reg_b(4,0).toUFix;

   alu := MuxCase(Bits(0), Array(
              (io.ctl.alu_op === ALU_COPY_A)  ->  reg_a,
              (io.ctl.alu_op === ALU_COPY_B)  ->  reg_b,
              (io.ctl.alu_op === ALU_INC_A_1) ->  (reg_a.toUFix  +  UFix(1)),
              (io.ctl.alu_op === ALU_DEC_A_1) ->  (reg_a.toUFix  -  UFix(1)),
              (io.ctl.alu_op === ALU_INC_A_4) ->  (reg_a.toUFix  +  UFix(4)),
              (io.ctl.alu_op === ALU_DEC_A_4) ->  (reg_a.toUFix  -  UFix(4)),
              (io.ctl.alu_op === ALU_ADD)     ->  (reg_a.toUFix  +  reg_b.toUFix),
              (io.ctl.alu_op === ALU_SUB)     ->  (reg_a.toUFix  -  reg_b.toUFix),
              (io.ctl.alu_op === ALU_SLL)     -> ((reg_a.toUFix << alu_shamt)(XPRLEN-1,0)),
              (io.ctl.alu_op === ALU_SRL)     ->  (reg_a.toUFix >> alu_shamt),
              (io.ctl.alu_op === ALU_SRA)     ->  (reg_a.toFix  >> alu_shamt),
              (io.ctl.alu_op === ALU_AND)     ->  (reg_a & reg_b),
              (io.ctl.alu_op === ALU_OR)      ->  (reg_a | reg_b),
              (io.ctl.alu_op === ALU_XOR)     ->  (reg_a ^ reg_b),
              (io.ctl.alu_op === ALU_SLT)     ->  (reg_a.toFix  < reg_b.toFix),
              (io.ctl.alu_op === ALU_SLTU)    ->  (reg_a.toUFix < reg_b.toUFix),
              (io.ctl.alu_op === ALU_INIT_PC) ->  UFix(START_ADDR)
            ));


  
   // Output Signals to the Control Path
   io.dat.alu_zero := (alu === UFix(0));
   
   // Output Signals to the Memory
   io.mem.req_addr  := reg_ma.toUFix
   io.mem.req_wdata := bus
   io.mem.req_mask  := MSK_W //only support word accesses
                              
    
   // Co-processor Registers
   val pcr = new SodorDpathPCR()
   pcr.io.host <> io.host
   pcr.io.r.addr := rs1
   pcr.io.r.en   := io.ctl.en_reg && !io.ctl.reg_wr && io.ctl.reg_sel === RS_CP
   pcr_rdata     := pcr.io.r.data
   pcr.io.w.addr := rs1
   pcr.io.w.en   := io.ctl.en_reg && io.ctl.reg_wr && io.ctl.reg_sel === RS_CP
   pcr.io.w.data := bus

  
}

}

