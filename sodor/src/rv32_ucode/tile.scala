//**************************************************************************
// RISCV Micro-Coded Processor 
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2011 Aug 10
//
// A rough design spec can be found at:
// http://inst.eecs.berkeley.edu/~cs152/sp11/assignments/ps1/handout1.pdf
//
// This is the Tile module, which encompasses the cpu and its memory. 


package Sodor
{

import Chisel._
import Node._
import Common._
import SodorProcConstants._

class SodorTileIo extends Bundle  
{
   val tilelink = new ioTileLink()
   val host     = new ioHTIF()
}

class SodorTile(co: CoherencePolicyWithUncached, resetSignal: Bool = null) extends Component(resetSignal)
{
   val io = new SodorTileIo()
   
   val cpu   = new Cpu(resetSignal = io.host.reset)
   val cache = new DCache(MEM_NUM_LINES, co)
   
   val arbiter   = new rocketMemArbiter(1)
   arbiter.io.requestor(0) <> cache.io.mem

   io.tilelink.xact_init      <> arbiter.io.mem.xact_init
   io.tilelink.xact_init_data <> cache.io.mem.xact_init_data
   arbiter.io.mem.xact_abort  <> io.tilelink.xact_abort
   arbiter.io.mem.xact_rep    <> io.tilelink.xact_rep
   io.tilelink.xact_finish    <> arbiter.io.mem.xact_finish
   cache.io.mem.probe_req    <> io.tilelink.probe_req
   io.tilelink.probe_rep      <> cache.io.mem.probe_rep
   io.tilelink.probe_rep_data <> cache.io.mem.probe_rep_data
 
   cpu.io.mem <> cache.io.cpu
   
   cpu.io.host <> io.host
}
 
}
