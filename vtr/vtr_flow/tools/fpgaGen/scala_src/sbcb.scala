package fpga_components

import Chisel._
import Node._
import Math._ 
import LutConstants._
import DataConverter._

class sbcb extends Component {
  val io = new Bundle {
    val ipin_in = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_INPUT_WIDTH)
    val ipin_config = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_CONFIG_WIDTH)

    val chanxy_in = Bits(INPUT, TOTAL_CHANXY_IN)
    val chanxy_config = Bits(INPUT, VAR_TOTAL_CHANXY_CONFIGS)

    val ipin_out = Bits(OUTPUT, VAR_NUM_IPIN_PER_TILE)
    val chanxy_out = Bits(OUTPUT, VAR_NUM_CHANXY_PER_TILE)
  }

  val ipin_in_break = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val ipin_config_break = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val to_ipin_out = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val chanxy_in_break = new Array [Bits] (VAR_NUM_CHANXY_PER_TILE)
  val chanxy_config_break = new Array [Bits] (VAR_NUM_CHANXY_PER_TILE)
  val to_chanxy_out = new Array [Bits] (VAR_NUM_CHANXY_PER_TILE)

  var i = 0;
 
  for ( i <- 0 until VAR_NUM_IPIN_PER_TILE) {
    ipin_in_break(i) = Bits (width = VAR_IPIN_INPUT_WIDTH)
    ipin_in_break(i) := io.ipin_in((i+1)*VAR_IPIN_INPUT_WIDTH - 1, i*VAR_IPIN_INPUT_WIDTH)

    ipin_config_break(i) = Bits (width = VAR_IPIN_CONFIG_WIDTH)
    ipin_config_break(i) := io.ipin_config((i+1)*VAR_IPIN_CONFIG_WIDTH - 1, i*VAR_IPIN_CONFIG_WIDTH)

    to_ipin_out(i) = Bits (width = 1)
    to_ipin_out(i) := ipin_in_break(i)(ipin_config_break(i))
  }

  for ( i <- 0 until VAR_NUM_CHANXY_PER_TILE )
  {
      var chanxy_in_start_bit = VAR_CHANXY_INPUT_START_ARR(i)
      var chanxy_in_end_bit = VAR_CHANXY_INPUT_START_ARR(i) + VAR_CHANXY_INPUT_WIDTH_ARR(i) - 1

      var chanxy_config_start_bit = VAR_CHANXY_CONFIG_START_ARR(i)
      var chanxy_config_end_bit = VAR_CHANXY_CONFIG_START_ARR(i) + VAR_CHANXY_CONFIG_WIDTH_ARR(i) - 1

      chanxy_in_break(i) = Bits (width =  VAR_CHANXY_INPUT_WIDTH_ARR(i))
      chanxy_in_break(i) := io.chanxy_in(chanxy_in_end_bit, chanxy_in_start_bit)

      chanxy_config_break(i) = Bits (width = VAR_CHANXY_CONFIG_WIDTH_ARR(i))
      chanxy_config_break(i) := io.chanxy_config(chanxy_config_end_bit, chanxy_config_start_bit)

      to_chanxy_out(i) = Bits (width = 1)
      to_chanxy_out(i) := (chanxy_in_break(i))(chanxy_config_break(i))
  }

  io.ipin_out := convert_Array_to_Bits (to_ipin_out, VAR_NUM_IPIN_PER_TILE)
  io.chanxy_out := convert_Array_to_Bits (to_chanxy_out, VAR_NUM_CHANXY_PER_TILE)
}
