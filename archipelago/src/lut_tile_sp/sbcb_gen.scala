package fpga_components

import Chisel._
import Node._
import Math._ 
import LutConstants._
import DataConverter._

class sbcb_sp (param: lut_Param) extends Component {
  val io = new Bundle {
    val ipin_in = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_INPUT_WIDTH)
    val ipin_config = Bits(INPUT, VAR_NUM_IPIN_PER_TILE*VAR_IPIN_CONFIG_WIDTH)

    val chanxy_in = Bits(INPUT, param.num_chanxy_in)
    val chanxy_config = Bits(INPUT, param.num_chanxy_configs)

    val ipin_out = Bits(OUTPUT, VAR_NUM_IPIN_PER_TILE)
    val chanxy_out = Bits(OUTPUT, param.num_chanxy_out)
  }

  val ipin_in_break = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val ipin_config_break = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val to_ipin_out = new Array [Bits] (VAR_NUM_IPIN_PER_TILE)
  val chanxy_in_break = new Array [Bits] (param.num_chanxy_out)
  val chanxy_config_break = new Array [Bits] (param.num_chanxy_configs)
  val to_chanxy_out = new Array[Bits] (param.num_chanxy_out)

  var i = 0;

  for ( i <- 0 until VAR_NUM_IPIN_PER_TILE) {
    ipin_in_break(i) = Bits (width = VAR_IPIN_INPUT_WIDTH)
    ipin_in_break(i) := io.ipin_in((i+1)*VAR_IPIN_INPUT_WIDTH - 1, i*VAR_IPIN_INPUT_WIDTH)

    ipin_config_break(i) = Bits (width = VAR_IPIN_CONFIG_WIDTH)
    ipin_config_break(i) := io.ipin_config((i+1)*VAR_IPIN_CONFIG_WIDTH - 1, i*VAR_IPIN_CONFIG_WIDTH)

    to_ipin_out(i) = Bits (width = 1)
    to_ipin_out(i) := ipin_in_break(i)(ipin_config_break(i))
  }

  for ( i <- 0 until param.num_chanxy_out )
  {
      if ( param.chanxy_config_width_list(i) == 0 )
      {
          to_chanxy_out(i) = Bits (width = 1)
          to_chanxy_out(i) := io.chanxy_in ( param.chanxy_out_index_start_list(i) )
      }
      else
      {
          var chanxy_in_start_bit = param.chanxy_out_index_start_list(i)
          var chanxy_in_end_bit = param.chanxy_out_index_start_list(i) + param.chanxy_out_input_width_list(i) - 1

          var chanxy_config_start_bit = param.chanxy_config_start_list(i)
          var chanxy_config_end_bit = param.chanxy_config_start_list(i) + param.chanxy_config_width_list(i) - 1

          chanxy_in_break(i) = Bits (width = param.chanxy_out_input_width_list(i))
          chanxy_in_break(i) := io.chanxy_in(chanxy_in_end_bit, chanxy_in_start_bit)

          chanxy_config_break(i) = Bits (width = param.chanxy_config_width_list(i))
          chanxy_config_break(i) := io.chanxy_config(chanxy_config_end_bit, chanxy_config_start_bit)

          to_chanxy_out(i) = Bits (width = 1)
          to_chanxy_out(i) := (chanxy_in_break(i))(chanxy_config_break(i))
      }
  }

  io.ipin_out := convert_Array_to_Bits (to_ipin_out, VAR_NUM_IPIN_PER_TILE)
  io.chanxy_out := convert_Array_to_Bits (to_chanxy_out, param.num_chanxy_out)
}
