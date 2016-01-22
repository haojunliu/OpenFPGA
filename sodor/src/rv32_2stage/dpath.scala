//**************************************************************************
// RISCV Processor 2-Stage Datapath
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2012 Jan 13

package Sodor
{

import Chisel._
import Node._

import Common._
import Common.Constants._
import SodorProcConstants._

class DatToCtlIo extends Bundle() 
{
   val inst  = Bits(OUTPUT, 32)
   val br_eq = Bool(    OUTPUT)
   val br_lt = Bool(    OUTPUT)
   val br_ltu= Bool(    OUTPUT)
}

class DpathIo extends Bundle() 
{
   val host = new ioHTIF()
   val imem = new ICMemPortIo(List("req_addr", "resp_val", "resp_data")).flip()
   val dmem = new DCMemPortIo().flip()
   val ctl  = new CtlToDatIo().flip()
   val dat  = new DatToCtlIo()
}

class DatPath extends Component 
{
   val io = new DpathIo();
   
   //**********************************
   // Pipeline State Registers
   val if_reg_pc = Reg(resetVal = UFix(START_ADDR, XPRLEN));
   
   val exe_reg_pc       = Reg(resetVal = UFix(0, XPRLEN));
   val exe_reg_pc_plus4 = Reg(resetVal = UFix(0, XPRLEN));
   val exe_reg_inst     = Reg(resetVal = BUBBLE);
   
   //**********************************
   // Instruction Fetch Stage
   val if_pc_next          = UFix();
   val exe_branch_target   = UFix();
   val exe_jump_target     = UFix();
   val exe_jump_reg_target = UFix();
 
   when (!io.ctl.stall)
   {
      if_reg_pc := if_pc_next;
   }

   val if_pc_plus4 = (if_reg_pc + UFix(4, XPRLEN));               

   if_pc_next := MuxCase(if_pc_plus4, Array(
                  (io.ctl.pc_sel === PC_4)  -> if_pc_plus4,
                  (io.ctl.pc_sel === PC_BR) -> exe_branch_target,
                  (io.ctl.pc_sel === PC_J ) -> exe_jump_target,
                  (io.ctl.pc_sel === PC_JR) -> exe_jump_reg_target
                  ))
   
   //Instruction Memory
   io.imem.req_addr := if_reg_pc;
   val if_inst = io.imem.resp_data;
                 
   when(io.ctl.stall) 
   {
      exe_reg_inst := exe_reg_inst
      exe_reg_pc   := exe_reg_pc
   }
   .elsewhen(io.ctl.if_kill) 
   {
      exe_reg_inst := BUBBLE
      exe_reg_pc   := UFix(0)
   } 
   .otherwise 
   {
      exe_reg_inst := if_inst
      exe_reg_pc   := if_reg_pc
   }

   exe_reg_pc_plus4 := if_pc_plus4
   
   //**********************************
   // Execute Stage
   val exe_rs1_addr = exe_reg_inst(26, 22).toUFix;
   val exe_rs2_addr = exe_reg_inst(21, 17).toUFix;
   val X1       = UFix(1)
   val exe_wbaddr  = Mux(io.ctl.wa_sel, exe_reg_inst(31, 27).toUFix,
                                     X1)
   
   val exe_wbdata = Bits(width = XPRLEN);
 
   // Register File
   val regfile = Mem(32){ Bits(width = XPRLEN) }

   when (io.ctl.rf_wen && (exe_wbaddr != UFix(0)))
   {
      regfile(exe_wbaddr) := exe_wbdata
   }

   val exe_rs1_data = Mux((exe_rs1_addr != UFix(0)), regfile(exe_rs1_addr), UFix(0, XPRLEN));
   val exe_rs2_data = Mux((exe_rs2_addr != UFix(0)), regfile(exe_rs2_addr), UFix(0, XPRLEN));
   
   
   // immediates
   val imm_i12 = exe_reg_inst(21,10)
   val imm_b12 = Cat(exe_reg_inst(31,27), exe_reg_inst(16,10))
   val imm_lui = exe_reg_inst(26,7)
   val imm_jmp = exe_reg_inst(31,7)

   // sign-extend immediates
   val imm_i12_sext = Cat(Fill(imm_i12(11), 20), imm_i12)
   val imm_b12_sext = Cat(Fill(imm_b12(11), 20), imm_b12)
   val imm_lui_sext = Cat(Fill(imm_lui(19), 12), imm_lui)
   val imm_j25_sext = Cat(Fill(imm_jmp(24),  7), imm_jmp)
   
   
   val exe_alu_op1 = MuxCase(UFix(0), Array(
               (io.ctl.op1_sel === OP1_RS1) -> exe_rs1_data,
               (io.ctl.op1_sel === OP1_LUI) -> imm_lui_sext
               )).toUFix
   
   val exe_alu_op2 = MuxCase(UFix(0), Array(
               (io.ctl.op2_sel === OP2_RS2) -> exe_rs2_data,
               (io.ctl.op2_sel === OP2_IMI) -> imm_i12_sext,
               (io.ctl.op2_sel === OP2_IMB) -> imm_b12_sext,
               (io.ctl.op2_sel === OP2_12)  -> UFix(12)
               )).toUFix
  

   // ALU
   val exe_alu_out   = UFix(width = XPRLEN);
   
   val alu_shamt = exe_alu_op2(4,0).toUFix;
   
   exe_alu_out := MuxCase(UFix(0), Array(
                  (io.ctl.alu_fun === ALU_ADD)  -> (exe_alu_op1 + exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SUB)  -> (exe_alu_op1 - exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_AND)  -> (exe_alu_op1 & exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_OR)   -> (exe_alu_op1 | exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_XOR)  -> (exe_alu_op1 ^ exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SLT)  -> (exe_alu_op1.toFix < exe_alu_op2.toFix).toUFix,
                  (io.ctl.alu_fun === ALU_SLTU) -> (exe_alu_op1 < exe_alu_op2).toUFix,
                  (io.ctl.alu_fun === ALU_SLL)  -> ((exe_alu_op1 << alu_shamt)(XPRLEN-1, 0)).toUFix,
                  (io.ctl.alu_fun === ALU_SRA)  -> (exe_alu_op1.toFix >> alu_shamt).toUFix,
                  (io.ctl.alu_fun === ALU_SRL)  -> (exe_alu_op1 >> alu_shamt).toUFix,
                  (io.ctl.alu_fun === ALU_COPY2)-> exe_alu_op2 
                  ))

   // Branch/Jump Target Calculation
   val simm12_sh1 = Cat(imm_b12_sext, UFix(0,1)) 
   exe_branch_target   := exe_reg_pc + simm12_sh1.toUFix
   exe_jump_target     := exe_reg_pc + Cat(imm_j25_sext(XPRLEN-1,0), UFix(0, 1)).toUFix
   exe_jump_reg_target := (exe_rs1_data.toUFix + imm_i12_sext.toUFix)
                                  
   

   // Co-processor Registers
   val pcr = new SodorDpathPCR()
   pcr.io.host <> io.host
   pcr.io.r.addr := exe_rs1_addr
   pcr.io.r.en   := io.ctl.pcr_fcn != PCR_N
   val pcr_out = pcr.io.r.data
   pcr.io.w.addr := exe_rs1_addr
   pcr.io.w.en   := io.ctl.pcr_fcn === PCR_T
   pcr.io.w.data := exe_rs2_data

 
   // WB Mux
   exe_wbdata := MuxCase(exe_alu_out, Array(
                  (io.ctl.wb_sel === WB_ALU) -> exe_alu_out,
                  (io.ctl.wb_sel === WB_MEM) -> io.dmem.resp_data, 
                  (io.ctl.wb_sel === WB_PC4) -> exe_reg_pc_plus4,
                  (io.ctl.wb_sel === WB_PCR) -> pcr_out
                  )).toFix()
                                  

   // datapath to controlpath outputs
   io.dat.inst   := exe_reg_inst.toFix
   io.dat.br_eq  := (exe_rs1_data === exe_rs2_data)
   io.dat.br_lt  := (exe_rs1_data.toFix < exe_rs2_data.toFix) 
   io.dat.br_ltu := (exe_rs1_data.toUFix < exe_rs2_data.toUFix)
   
   
   // datapath to data memory outputs
   io.dmem.req_addr  := exe_alu_out
   io.dmem.req_wdata := exe_rs2_data.toUFix 

}

 
}
