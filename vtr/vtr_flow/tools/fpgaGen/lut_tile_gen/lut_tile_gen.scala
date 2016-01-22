package fpga_components

import Chisel._
import Node._
import Math._ 
import LutConstants._

class lut_Param {
    var x_loc: Int = _
    var y_loc: Int = _

    var num_ipin: Int = _
    var num_chanxy_out: Int = _
    var num_chanxy_in: Int = _
    var num_opin: Int = _
    var chanxy_configs_start: Int = _
    var chanxy_configs_end: Int = _
    var num_chanxy_configs: Int = _
    var configs_depth: Int = _

    val chanxy_out_input_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_out_index_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_config_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_config_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
}

class lut_tile_sp (param: lut_Param) extends Component {
  val io = new Bundle {
    val ff_en = Bool (INPUT)
    val configs_in = Bits(INPUT, 32)
    val configs_en = Bits(INPUT, param.configs_depth)
    val ipin_in = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_INPUT_WIDTH)
    val chanxy_in = Bits(INPUT, param.num_chanxy_in)
    val chanxy_out = Bits(OUTPUT, param.num_chanxy_out)
    val opin_out = Bits(OUTPUT, param.num_opin)
    
    val x_loc = Bits(OUTPUT, 8)
    val y_loc = Bits(OUTPUT, 8)
  }

  io.x_loc := Bits( param.x_loc )
  io.y_loc := Bits( param.y_loc )

  val this_clb = new clb
  val this_xbar = new xbar
  val this_config = new configs_latches (param.configs_depth)
  val this_sbcb = new sbcb_sp (param)

  this_clb.io.clb_in := this_xbar.io.xbar_out
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
  this_sbcb.io.chanxy_config := this_config.io.configs_out(param.chanxy_configs_end, param.chanxy_configs_start)

  io.chanxy_out := this_sbcb.io.chanxy_out
  io.opin_out := this_clb.io.clb_out
}
