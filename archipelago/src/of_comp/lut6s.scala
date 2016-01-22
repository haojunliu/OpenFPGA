package fpga_components

import Chisel._
import Node._
import LutConstants._

// This is a 6-input fractuable lut with two outputs and two ffs
class lut6s extends Component {
  val io = new Bundle {
    val lut_in  = Bits(INPUT, 6)
    val lut_out = Bits(OUTPUT, 2)
    val lut_configs = Bits(INPUT, 64)
    val mux_configs = Bits(INPUT, 3)
    val ff_en = Bool(INPUT)
  }

  // assign lut5 outputs from lut_config and lut input
  val lut5_o0 = io.lut_configs(Cat(Bits(0), io.lut_in(4, 0)))
  val lut5_o1 = io.lut_configs(Cat(Bits(1), io.lut_in(4, 0)))

  // assign lut6 outputs
  val lut6_o = Cat(lut5_o1, lut5_o0)(io.lut_in(5))

  // declare two posedge flip-flops
  val ff1 = Reg(resetVal = Bits("b0", 1))
  val ff2 = Reg(resetVal = Bits("b0", 1))
  
  // mux to select between lut5o0 and lut6
  val ff1_in = Cat(lut6_o, lut5_o0)(io.mux_configs(0))
  
  // ff_en is disabled while programming
  when (io.ff_en) {
    ff1 := ff1_in
    ff2 := lut5_o1
  }

  io.lut_out := Cat(Cat(ff2, lut5_o1)(io.mux_configs(2)), Cat(ff1, ff1_in)(io.mux_configs(1)))
}
