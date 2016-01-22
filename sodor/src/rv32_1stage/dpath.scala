//**************************************************************************
// RISCV Processor 1-Stage Datapath
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2012 Jan 11

package Sodor
{

import Chisel._
import Node._

import Common._
import Common.Constants._
import SodorProcConstants._

class DatToCtlIo extends Bundle() 
{
   val inst   = Bits(OUTPUT, 32)
   val br_eq  = Bool(OUTPUT)
   val br_lt  = Bool(OUTPUT)
   val br_ltu = Bool(OUTPUT)
   val status = Bits(OUTPUT, 32)
}

class DpathIo extends Bundle() 
{
   val host = new ioHTIF()
   val imem = new ICMemPortIo(List("req_addr", "resp_val", "resp_data")).flip()
   val dmem = new DCMemPortIo(List("req_addr", "req_wdata", "resp_data")).flip()
   val ctl  = new CtlToDatIo().flip()
   val dat  = new DatToCtlIo()
}

class DatPath extends Component 
{
   val io = new DpathIo();
   
   
   // Instruction Fetch
   val pc_next          = UFix()
   val pc_plus4         = UFix()
   val branch_target    = UFix()
   val jump_target      = UFix()
   val jump_reg_target  = UFix()
   val exception_target = UFix()
 
   // PC Register
   val pc_reg = Reg(resetVal = UFix(START_ADDR, XPRLEN));

   when (!io.ctl.stall) 
   {
      pc_reg := pc_next;
   }

   pc_plus4 := (pc_reg + UFix(4, XPRLEN));               

   pc_next := MuxCase(pc_plus4, Array(
                  (io.ctl.pc_sel === PC_4)   -> pc_plus4,
                  (io.ctl.pc_sel === PC_BR)  -> branch_target,
                  (io.ctl.pc_sel === PC_J )  -> jump_target,
                  (io.ctl.pc_sel === PC_JR)  -> jump_reg_target,
                  (io.ctl.pc_sel === PC_EXC) -> exception_target
                  ))
   
   io.imem.req_addr := pc_reg
   val inst = Mux(io.imem.resp_val, io.imem.resp_data, BUBBLE) 
                 
   
   // Decode
   val rs1_addr = inst(26, 22).toUFix;
   val rs2_addr = inst(21, 17).toUFix;
   val X1       = UFix(1)
   val wb_addr  = Mux(io.ctl.wa_sel, inst(31, 27).toUFix,
                                     X1)
   
   val wb_data = Bits(width = XPRLEN);
 
   // Register File
   val regfile = Mem(32){ Bits(width = XPRLEN) }

   when (io.ctl.rf_wen && (wb_addr != UFix(0)))
   {
      regfile(wb_addr) := wb_data
   }

   val rs1_data = Mux((rs1_addr != UFix(0)), regfile(rs1_addr), UFix(0, XPRLEN));
   val rs2_data = Mux((rs2_addr != UFix(0)), regfile(rs2_addr), UFix(0, XPRLEN));
   
   
   // immediates
   val imm_btype = Cat(inst(31,27), inst(16,10))
   val imm_itype = inst(21,10)
   val imm_ltype = inst(26,7)
   val imm_jtype = inst(31,7)

   // sign-extend immediates
   val imm_itype_sext = Cat(Fill(imm_itype(11), 20), imm_itype)
   val imm_btype_sext = Cat(Fill(imm_btype(11), 20), imm_btype)
   val imm_ltype_sext = Cat(Fill(imm_ltype(19), 12), imm_ltype)
   val imm_jtype_sext = Cat(Fill(imm_jtype(24),  7), imm_jtype)

   
   // Operand Muxes
   val alu_op1 = MuxCase(UFix(0), Array(
               (io.ctl.op1_sel === OP1_RS1) -> rs1_data,
               (io.ctl.op1_sel === OP1_LUI) -> imm_ltype_sext
               )).toUFix
   
   val alu_op2 = MuxCase(UFix(0), Array(
               (io.ctl.op2_sel === OP2_RS2) -> rs2_data,
               (io.ctl.op2_sel === OP2_IMI) -> imm_itype_sext,
               (io.ctl.op2_sel === OP2_IMB) -> imm_btype_sext,
               (io.ctl.op2_sel === OP2_12)  -> UFix(12)
               )).toUFix
  

   // ALU
   val alu_out   = UFix(width = XPRLEN);
   
   val alu_shamt = alu_op2(4,0).toUFix;
   
   alu_out := MuxCase(UFix(0), Array(
                  (io.ctl.alu_fun === ALU_ADD)  -> (alu_op1 + alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SUB)  -> (alu_op1 - alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_AND)  -> (alu_op1 & alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_OR)   -> (alu_op1 | alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_XOR)  -> (alu_op1 ^ alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SLT)  -> (alu_op1.toFix < alu_op2.toFix).toUFix,
                  (io.ctl.alu_fun === ALU_SLTU) -> (alu_op1 < alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SLL)  -> ((alu_op1 << alu_shamt)(XPRLEN-1, 0)).toUFix,
                  (io.ctl.alu_fun === ALU_SRA)  -> (alu_op1.toFix >> alu_shamt).toUFix,
                  (io.ctl.alu_fun === ALU_SRL)  -> (alu_op1 >> alu_shamt).toUFix,
                  (io.ctl.alu_fun === ALU_COPY2)-> alu_op2 
                  ))

   // Branch/Jump Target Calculation
   val simm12_sh1  = Cat(imm_btype_sext, UFix(0,1)) 
   branch_target   := pc_reg + simm12_sh1.toUFix
   jump_target     := pc_reg + Cat(imm_jtype_sext(XPRLEN-1,0), UFix(0, 1)).toUFix
   jump_reg_target := (rs1_data.toUFix + imm_itype_sext.toUFix)
                                  
   
   // Privileged Co-processor Registers
   val pcr = new SodorDpathPCR()
   pcr.io.host <> io.host
   pcr.io.r.addr := rs1_addr
   pcr.io.r.en   := io.ctl.pcr_fcn != PCR_N
   val pcr_out = pcr.io.r.data
   pcr.io.w.addr := rs1_addr
   pcr.io.w.en   := (io.ctl.pcr_fcn === PCR_T) || (io.ctl.pcr_fcn === PCR_S) || (io.ctl.pcr_fcn === PCR_C)
   pcr.io.w.data := Mux(io.ctl.pcr_fcn === PCR_S, pcr.io.r.data | alu_out,
                    Mux(io.ctl.pcr_fcn === PCR_C, pcr.io.r.data & ~alu_out,
                                                  alu_out))
   
   io.dat.status := pcr.io.status
   pcr.io.exception := io.ctl.exception
   pcr.io.exc_cause := io.ctl.exc_cause
   pcr.io.eret   := io.ctl.eret
   pcr.io.pc     := pc_reg
   exception_target := pcr.io.evec

   // Time Stamp Counter & Retired Instruction Counter 
   val tsc_reg = Reg(resetVal = UFix(0, XPRLEN))
   tsc_reg := tsc_reg + UFix(1)

   val irt_reg = Reg(resetVal = UFix(0, XPRLEN))
   when (!io.ctl.stall && !io.ctl.exception) { irt_reg := irt_reg + UFix(1) }

  

   // WB Mux
   wb_data := MuxCase(alu_out, Array(
                  (io.ctl.wb_sel === WB_ALU) -> alu_out,
                  (io.ctl.wb_sel === WB_MEM) -> io.dmem.resp_data, 
                  (io.ctl.wb_sel === WB_PC4) -> pc_plus4,
                  (io.ctl.wb_sel === WB_PCR) -> pcr_out,
                  (io.ctl.wb_sel === WB_TSC) -> tsc_reg,
                  (io.ctl.wb_sel === WB_IRT) -> irt_reg
                  )).toFix()
                                  

   // datapath to controlpath outputs
   io.dat.inst   := inst
   io.dat.br_eq  := (rs1_data === rs2_data)
   io.dat.br_lt  := (rs1_data.toFix < rs2_data.toFix) 
   io.dat.br_ltu := (rs1_data.toUFix < rs2_data.toUFix)
   
   
   // datapath to data memory outputs
   io.dmem.req_addr  := alu_out
   io.dmem.req_wdata := rs2_data.toUFix 
 
}

 
}
