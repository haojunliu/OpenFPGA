//**************************************************************************
// RISCV Processor Tile
//--------------------------------------------------------------------------
//
// Christopher Celio
// 2012 Jan 13
//
// Describes a simple RISCV 2-stage processor
//   - Statically predict pc+4, kill instruction fetch
//   - Separate instruction and data memories (Harvard-style)
//   - Single-cycle memory 
//   - No div/mul/rem
//   - No FPU
//   - No double-word nor sub-word memory access support



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
   
   val cpu    = new Cpu(resetSignal = io.host.reset)
   val icache = new ICache(MEM_NUM_LINES, co)
   val dcache = new DCache(MEM_NUM_LINES, co)
   
   val arbiter   = new rocketMemArbiter(2)
   arbiter.io.requestor(0) <> dcache.io.mem
   arbiter.io.requestor(1) <> icache.io.mem

   io.tilelink.xact_init      <> arbiter.io.mem.xact_init
   io.tilelink.xact_init_data <> dcache.io.mem.xact_init_data
   arbiter.io.mem.xact_abort  <> io.tilelink.xact_abort
   arbiter.io.mem.xact_rep    <> io.tilelink.xact_rep
   io.tilelink.xact_finish    <> arbiter.io.mem.xact_finish
   dcache.io.mem.probe_req    <> io.tilelink.probe_req
   io.tilelink.probe_rep      <> dcache.io.mem.probe_rep
   io.tilelink.probe_rep_data <> dcache.io.mem.probe_rep_data
 
   cpu.io.imem <> icache.io.cpu
   cpu.io.dmem <> dcache.io.cpu
   
   cpu.io.host <> io.host
}
 
}
