//**************************************************************************
// RISCV Micro-Coded Processor 
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2011 May 28
//
// A rough design spec can be found at:
// http://inst.eecs.berkeley.edu/~cs152/sp11/assignments/ps1/handout1.pdf
//

package Sodor
{

import Chisel._
import Node._
import Common._

class ProcIo extends Bundle 
{
  val host = new ioHTIF()
  val mem  = new DCMemPortIo().flip()
}

class Cpu(resetSignal: Bool = null) extends Component(resetSignal)
{
  val io = new ProcIo()
  val c  = new CtlPath() 
  val d  = new DatPath()
  
  c.io.ctl  <> d.io.ctl
  c.io.dat  <> d.io.dat
  
  c.io.mem <> io.mem
  d.io.mem <> io.mem
  
  d.io.host <> io.host
}

}
