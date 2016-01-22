//**************************************************************************
// RISCV Processor 
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2011 Jul 30
//
// Describes a simple RISCV 1-stage processor
//   - No div/mul/rem
//   - No FPU
//   - implements supervisor mode (can trap to handle the above instructions)
 
package Sodor
{

import Chisel._
import Node._
import Common._

class ProcIo extends Bundle 
{
  val host = new ioHTIF()
  val imem = new ICMemPortIo().flip()
  val dmem = new DCMemPortIo().flip()
}

class Cpu(resetSignal: Bool = null) extends Component(resetSignal)
{
  val io = new ProcIo()
  val c  = new CtlPath() 
  val d  = new DatPath()
  
  c.io.ctl  <> d.io.ctl
  c.io.dat  <> d.io.dat
  
  c.io.imem <> io.imem
  d.io.imem <> io.imem
  
  c.io.dmem <> io.dmem
  d.io.dmem <> io.dmem
  
  d.io.host <> io.host
}

}
