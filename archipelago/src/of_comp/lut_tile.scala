package fpga_components

import Chisel._
import Node._
import Math._ 
import LutConstants._
import scala.collection.mutable.HashMap    
import scala.collection.mutable.ArrayBuffer
import scala.util.Random                   

class lut_tile extends Component {
  val io = new Bundle {
    val ff_en = Bool (INPUT)
    val configs_in = Bits(INPUT, 32)
    val configs_en = Bits(INPUT, VAR_CONFIGS_FILE_DEPTH)
    val ipin_in = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_INPUT_WIDTH)
    val chanxy_in = Bits(INPUT, TOTAL_CHANXY_IN)
    val chanxy_out = Bits(OUTPUT, VAR_NUM_CHANXY_PER_TILE)
    val opin_out = Bits(OUTPUT, VAR_NUM_OPIN_PER_TILE)
  }

  val this_clb = new clb
  val this_xbar = new xbar
  val this_config = new configs_latches (VAR_CONFIGS_FILE_DEPTH)
  val this_sbcb = new sbcb

  this_clb.io.clb_in := this_xbar.io.xbar_out
  //this_clb.io.clb_in := this_sbcb.io.ipin_out
  this_clb.io.lut_configs := this_config.io.configs_out(VAR_LUT_CONFIGS_END, VAR_LUT_CONFIGS_START)
  this_clb.io.mux_configs := this_config.io.configs_out(VAR_MUX_CONFIGS_END, VAR_MUX_CONFIGS_START)
  this_clb.io.ff_en := io.ff_en

  this_xbar.io.xbar_in := Cat(this_clb.io.clb_out, this_sbcb.io.ipin_out)
  this_xbar.io.mux_configs := this_config.io.configs_out(VAR_XBAR_CONFIGS_END, VAR_XBAR_CONFIGS_START)

  this_config.io.d_in := io.configs_in
  this_config.io.configs_en := io.configs_en

  this_sbcb.io.ipin_in := io.ipin_in
  this_sbcb.io.ipin_config := this_config.io.configs_out(VAR_SBCB_IPIN_CONFIGS_END, VAR_SBCB_IPIN_CONFIGS_START)
  this_sbcb.io.chanxy_in := io.chanxy_in
  this_sbcb.io.chanxy_config := this_config.io.configs_out(VAR_SBCB_CHANXY_CONFIGS_END, VAR_SBCB_CHANXY_CONFIGS_START)

  io.chanxy_out := this_sbcb.io.chanxy_out
  io.opin_out := this_clb.io.clb_out
}

class lut_tileTests(c: lut_tile) extends Tester(c, Array(c.io)) {
  defTests {
    var allGood = true
    val vars = new HashMap[Node, Node]()

    vars.clear()

    allGood
  }
}

object lut_tileMain {
  def main(args: Array[String]): Unit = {
    val chiselArgs = args.tail

    val res = chiselMainTest(chiselArgs, () => new lut_tile) {
      dut => new lut_tileTests(dut)
    }
  }
}
