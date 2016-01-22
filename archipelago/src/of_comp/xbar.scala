package fpga_components

import Chisel._
import Node._
import Math._
import LutConstants._
import DataConverter._

class xbar extends Component {
  val io = new Bundle {
    val xbar_in = Bits(INPUT, VAR_NUM_XBAR_INPUTS)
    val xbar_out = Bits(OUTPUT, VAR_NUM_XBAR_OUTPUTS)
    val mux_configs = Bits(INPUT, VAR_NUM_XBAR_CONFIGS)
  }

  val to_xbar_ff = Vec(VAR_NUM_XBAR_OUTPUTS) { Reg(resetVal = Bits(0, 1)) }
 
  val xbar_config_break = new Array [Bits] (VAR_NUM_XBAR_OUTPUTS)
  val to_xbar_out = new Array [Bits] (VAR_NUM_XBAR_OUTPUTS)

  var i = 0;
  for ( i <- 0 until VAR_NUM_XBAR_OUTPUTS ) {

    var xbar_config_start_bit = i*VAR_NUM_XBAR_PER_MUX_CONFIGS
    var xbar_config_end_bit = (i+1)*VAR_NUM_XBAR_PER_MUX_CONFIGS - 1

    xbar_config_break(i) = Bits (width = VAR_NUM_XBAR_PER_MUX_CONFIGS)
    xbar_config_break(i) := io.mux_configs(xbar_config_end_bit, xbar_config_start_bit)

    to_xbar_ff(i) := io.xbar_in(xbar_config_break(i))

    to_xbar_out(i) = Bits ( width = 1 )
    to_xbar_out(i) := to_xbar_ff(i)
  }

  // to output
  io.xbar_out := convert_Array_to_Bits (to_xbar_out, VAR_NUM_XBAR_OUTPUTS)
}
