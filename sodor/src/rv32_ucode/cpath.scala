//**************************************************************************
// RISCV U-Coded Processor Control Path
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2011 May 28

package Sodor
{

import Chisel._
import Node._

import Common._
import Common.Instructions._
import SodorProcConstants._
import scala.collection.mutable.ArrayBuffer
 

class CtlToDatIo extends Bundle() 
{
   val ld_ir   = Bool(OUTPUT)
   val reg_sel = UFix(OUTPUT, RS_X.getWidth())
   val reg_wr  = Bool(OUTPUT)
   val en_reg  = Bool(OUTPUT)
   val ld_a    = Bool(OUTPUT)
   val ld_b    = Bool(OUTPUT)
   val alu_op  = UFix(OUTPUT, ALU_X.getWidth())
   val en_alu  = Bool(OUTPUT)
   val ld_ma   = Bool(OUTPUT)
   val mem_wr  = Bool(OUTPUT)
   val en_mem  = Bool(OUTPUT)
   val is_sel  = UFix(OUTPUT, IS_X.getWidth())
   val en_imm  = Bool(OUTPUT)
}

class CpathIo extends Bundle() 
{
   val mem  = new DCMemPortIo(List("req_val", "req_rw", "resp_val")).flip()
   val dat  = new DatToCtlIo().flip()
   val ctl  = new CtlToDatIo()
}

 

class CtlPath extends Component 
{
   val io = new CpathIo();

   // Compile the Micro-code down into a ROM 
   val (label_target_map, label_sz) = MicrocodeCompiler.constructLabelTargetMap(Microcode.codes);
   val rombits                      = MicrocodeCompiler.emitRomBits(Microcode.codes, label_target_map, label_sz);
   val opcode_dispatch_table        = MicrocodeCompiler.generateDispatchTable(label_target_map);
        
   
   // Macro Instruction Opcode Dispatch Table
   val upc_opgroup_target = MuxLookup (io.dat.inst, UFix(label_target_map("ILLEGAL"), label_sz),
                                                    opcode_dispatch_table
                                      );


   // Micro-PC State Register
   val upc_state_next = UFix()
   val upc_state = Reg(data = upc_state_next, resetVal = UFix(label_target_map("INIT_PC"), label_sz))

   // Micro-code ROM
   val micro_code = Vec(rombits){ Bits(width=rombits(0).getWidth) }
   val uop = micro_code(upc_state)

    
   // Extract Control Signals from UOP
//   val cs = new Bundle()
//            {
//               val ld_ir          = Bool();  
//               val reg_sel        = UFix(width = RS_X.getWidth());  
//               val reg_wr         = Bool();  
//               val en_reg         = Bool();  
//               val ld_a           = Bool();  
//               val ld_b           = Bool();  
//               val alu_op         = UFix(width = ALU_X.getWidth());  
//               val en_alu         = Bool();  
//               val ld_ma          = Bool();  
//               val mem_wr         = Bool();  
//               val en_mem         = Bool();  
//               val is_sel         = UFix(width = IS_X.getWidth());  
//               val en_imm         = Bool();  
//               val ubr            = UFix(width = UBR_N.getWidth());  
//               val upc_rom_target = UFix(width = label_sz);  
//               override def clone = this.asInstanceOf[this.type];
//            }.fromNode(uop)
                  
    
   // Extract Control Signals from UOP
   val cs = new Bundle()
            {
               val ld_ir          = Bool();  
               val reg_sel        = UFix(width = RS_X.getWidth());  
               val reg_wr         = Bool();  
               val en_reg         = Bool();  
               val ld_a           = Bool();  
               val ld_b           = Bool();  
               val alu_op         = UFix(width = ALU_X.getWidth());  
               val en_alu         = Bool();  
               val ld_ma          = Bool();  
               val mem_wr         = Bool();  
               val en_mem         = Bool();  
               val is_sel         = UFix(width = IS_X.getWidth());  
               val en_imm         = Bool();  
               val ubr            = UFix(width = UBR_N.getWidth());  
               val upc_rom_target = UFix(width = label_sz);  
            }

            cs.ld_ir          := uop(30)
            cs.reg_sel        := uop(29,27).toUFix
            cs.reg_wr         := uop(26)
            cs.en_reg         := uop(25)
            cs.ld_a           := uop(24)
            cs.ld_b           := uop(23)
            cs.alu_op         := uop(22,18).toUFix
            cs.en_alu         := uop(17)
            cs.ld_ma          := uop(16)
            cs.mem_wr         := uop(15)
            cs.en_mem         := uop(14)
            cs.is_sel         := uop(13,11).toUFix
            cs.en_imm         := uop(10)
            cs.ubr            := uop(9,7).toUFix
            cs.upc_rom_target := uop(label_sz-1,0).toUFix
                  

   val mem_is_busy = !(io.mem.resp_val)

   // Micro-PC State Logic
   val upc_sel     = MuxCase(UPC_CURRENT, Array(
                      (cs.ubr === UBR_N) -> UPC_NEXT,
                      (cs.ubr === UBR_D) -> UPC_DISPATCH,
                      (cs.ubr === UBR_J) -> UPC_ABSOLUTE,
                      (cs.ubr === UBR_EZ)-> Mux ( io.dat.alu_zero, UPC_ABSOLUTE , UPC_NEXT),
                      (cs.ubr === UBR_NZ)-> Mux (~io.dat.alu_zero, UPC_ABSOLUTE , UPC_NEXT),
                      (cs.ubr === UBR_S) -> Mux (mem_is_busy  , UPC_CURRENT  , UPC_NEXT)
                    ))
 
    
   upc_state_next := MuxCase(upc_state, Array(
                      (upc_sel === UPC_DISPATCH) -> upc_opgroup_target,
                      (upc_sel === UPC_ABSOLUTE) -> cs.upc_rom_target,
                      (upc_sel === UPC_NEXT)     -> (upc_state + UFix(1)),
		                (upc_sel === UPC_CURRENT)  -> upc_state
                    ))

                        

   // Cpath Control Interface
   io.ctl.ld_ir   := cs.ld_ir      
   io.ctl.reg_sel := cs.reg_sel   
   io.ctl.reg_wr  := cs.reg_wr     
   io.ctl.en_reg  := cs.en_reg     
   io.ctl.ld_a    := cs.ld_a       
   io.ctl.ld_b    := cs.ld_b      
   io.ctl.alu_op  := cs.alu_op     
   io.ctl.en_alu  := cs.en_alu     
   io.ctl.ld_ma   := cs.ld_ma      
   io.ctl.mem_wr  := cs.mem_wr     
   io.ctl.en_mem  := cs.en_mem     
   io.ctl.is_sel  := cs.is_sel     
   io.ctl.en_imm  := cs.en_imm     
 
   // Memory Interface
   io.mem.req_rw  := cs.en_mem && cs.mem_wr
   io.mem.req_val := cs.en_mem.toBool 

}

}
