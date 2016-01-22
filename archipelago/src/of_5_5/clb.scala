package fpga_components

import Chisel._
import Node._
import Math._
import LutConstants._
import DataConverter._
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

class clb extends Component {
  val io = new Bundle {
    val clb_in = Bits(INPUT, VAR_NUM_CLB_IN)  
    val clb_out = Bits(OUTPUT, VAR_NUM_CLB_OUT)
    val lut_configs = Bits(INPUT, VAR_NUM_CLB_LUT_CONFIGS)
    val mux_configs = Bits(INPUT, VAR_NUM_CLB_MUX_CONFIGS)
    val ff_en = Bool(INPUT)
  }

  val to_clb_out = new Array [Bits] ( VAR_NUM_CLB_OUT )

  if (VAR_NUM_INPUTS_PER_LUT == 6 && VAR_NUM_OUTPUTS_PER_LUT == 2) {
    println("ERROR: Unsupported LUT Types Yet!\n")
    System.exit(1)
  } else if (VAR_NUM_INPUTS_PER_LUT == 6 && VAR_NUM_OUTPUTS_PER_LUT == 1) {
    var i = 0;
    val lut_arr = new Array [lut6] ( VAR_NUM_LUTS_PER_CLB )

    for ( i <- 0 until VAR_NUM_LUTS_PER_CLB)
    {
      lut_arr(i) = new lut6
      to_clb_out(i) = Bits ( width = 1 )

      lut_arr(i).io.lut_in := io.clb_in((i+1)*VAR_NUM_INPUTS_PER_LUT - 1, i*VAR_NUM_INPUTS_PER_LUT)
      lut_arr(i).io.lut_configs := io.lut_configs((i+1)*VAR_NUM_CONFIGS_PER_LUT - 1, i*VAR_NUM_CONFIGS_PER_LUT)
      lut_arr(i).io.mux_configs := io.mux_configs((i+1)*VAR_NUM_MUXES_PER_LUT - 1, i*VAR_NUM_MUXES_PER_LUT)
      lut_arr(i).io.ff_en := io.ff_en
      to_clb_out(i) := lut_arr(i).io.lut_out
    }
  
  } else if (VAR_NUM_INPUTS_PER_LUT == 5 && VAR_NUM_OUTPUTS_PER_LUT == 1) {
    var i = 0;
    val lut_arr = new Array [lut5] ( VAR_NUM_LUTS_PER_CLB )

    for ( i <- 0 until VAR_NUM_LUTS_PER_CLB)
    {
      lut_arr(i) = new lut5
      to_clb_out(i) = Bits ( width = 1 )

      lut_arr(i).io.lut_in := io.clb_in((i+1)*VAR_NUM_INPUTS_PER_LUT - 1, i*VAR_NUM_INPUTS_PER_LUT)
      lut_arr(i).io.lut_configs := io.lut_configs((i+1)*VAR_NUM_CONFIGS_PER_LUT - 1, i*VAR_NUM_CONFIGS_PER_LUT)
      lut_arr(i).io.mux_configs := io.mux_configs((i+1)*VAR_NUM_MUXES_PER_LUT - 1, i*VAR_NUM_MUXES_PER_LUT)
      lut_arr(i).io.ff_en := io.ff_en
      to_clb_out(i) := lut_arr(i).io.lut_out
    }

  } else if (VAR_NUM_INPUTS_PER_LUT == 4 && VAR_NUM_OUTPUTS_PER_LUT == 1) {
    var i = 0;
    val lut_arr = new Array [lut4] ( VAR_NUM_LUTS_PER_CLB )

    for ( i <- 0 until VAR_NUM_LUTS_PER_CLB)
    {
      lut_arr(i) = new lut4
      to_clb_out(i) = Bits ( width = 1 )

      lut_arr(i).io.lut_in := io.clb_in((i+1)*VAR_NUM_INPUTS_PER_LUT - 1, i*VAR_NUM_INPUTS_PER_LUT)
      lut_arr(i).io.lut_configs := io.lut_configs((i+1)*VAR_NUM_CONFIGS_PER_LUT - 1, i*VAR_NUM_CONFIGS_PER_LUT)
      lut_arr(i).io.mux_configs := io.mux_configs((i+1)*VAR_NUM_MUXES_PER_LUT - 1, i*VAR_NUM_MUXES_PER_LUT)
      lut_arr(i).io.ff_en := io.ff_en
      to_clb_out(i) := lut_arr(i).io.lut_out
    }

  } else {
    println("ERROR: Unsupported LUT Types!\n")
    System.exit(1)
  }

  io.clb_out := convert_Array_to_Bits (to_clb_out, VAR_NUM_CLB_OUT)
}

class clbTests(c: clb) extends Tester(c, Array(c.io)) {
  defTests {
    var allGood = true
    val vars = new HashMap[Node, Node]()
    
    vars.clear()
    
    if (VAR_NUM_INPUTS_PER_LUT == 6)
    {
      vars(c.io.clb_in) = Bits("b0", 60)
      vars(c.io.mux_configs) = Bits("b0", 10)
      vars(c.io.lut_configs) = Fix(0, 640).toBits
      vars(c.io.ff_en) = Bits(0)
      vars(c.io.clb_out) = Bits("b0", 10)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 60)
      vars(c.io.mux_configs) = Bits("b0", 10)
      vars(c.io.lut_configs) = Fix(0, 640).toBits
      vars(c.io.ff_en) = Bits(1)
      vars(c.io.clb_out) = Bits("b0", 10)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 60)
      vars(c.io.mux_configs) = Bits("b0", 10)
      vars(c.io.lut_configs) = Fix(0, 640).toBits
      vars(c.io.clb_out) = Bits("b0", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("d100", 60)
      vars(c.io.mux_configs) = Bits("b0", 10)
      vars(c.io.lut_configs) = Fix(-1, 640).toBits
      vars(c.io.clb_out) = Bits("b1111111111", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("d89", 60)
      vars(c.io.mux_configs) = Bits("b1111100000", 10)
      vars(c.io.lut_configs) = Fix(-1, 640).toBits
      vars(c.io.clb_out) = Bits("b11111", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("d89", 60)
      vars(c.io.mux_configs) = Bits("b11111", 10)
      vars(c.io.lut_configs) = Fix(-1, 640).toBits
      vars(c.io.clb_out) = Bits("b1111100000", 10)
      vars(c.io.ff_en) = Bits(1)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("d89", 60)
      vars(c.io.mux_configs) = Bits("b1111111111", 10)
      vars(c.io.lut_configs) = Fix(-1, 640).toBits
      vars(c.io.clb_out) = Bits("b1111111111", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("d89", 60)
      vars(c.io.mux_configs) = Bits("b1111111111", 10)
      vars(c.io.lut_configs) = Fix(-1, 640).toBits
      vars(c.io.clb_out) = Bits("b1111111111", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 60)
      vars(c.io.mux_configs) = Bits("b0", 10)
      vars(c.io.lut_configs) = Fix(3, 640).toBits
      vars(c.io.clb_out) = Bits("b0", 10)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 60)
      vars(c.io.mux_configs) = Bits("b1111111111", 10)
      vars(c.io.lut_configs) = Fix(3, 640).toBits
      vars(c.io.clb_out) = Bits("b1111111111", 10)
      vars(c.io.ff_en) = Bits(1)
      allGood = step(vars) && allGood
    } 
    else if (VAR_NUM_INPUTS_PER_LUT == 4)
    {
      vars(c.io.clb_in) = Bits("b0", 16)
      vars(c.io.mux_configs) = Bits("b0", 4)
      vars(c.io.lut_configs) = Bits("b0", 64)
      vars(c.io.clb_out) = Bits("b0", 4)
      vars(c.io.ff_en) = Bits(1)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b1", 16)
      vars(c.io.mux_configs) = Bits("b1111", 4)
      vars(c.io.lut_configs) = Bits(-1, 64)
      vars(c.io.clb_out) = Bits("b0", 4)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 16)
      vars(c.io.mux_configs) = Bits("b1010", 4)
      vars(c.io.lut_configs) = Bits(-1, 64)
      vars(c.io.clb_out) = Bits("b0101", 4)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood

      vars(c.io.clb_in) = Bits("b0", 16)
      vars(c.io.mux_configs) = Bits("b0101", 4)
      vars(c.io.lut_configs) = Bits(-1, 64)
      vars(c.io.clb_out) = Bits("b1010", 4)
      vars(c.io.ff_en) = Bits(0)
      allGood = step(vars) && allGood
    }

    allGood
  }
}

/*
object clbMain {
  def main(args: Array[String]): Unit = {
    val chiselArgs = args.tail

    val res = chiselMainTest(chiselArgs, () => new clb) {
      dut => new clbTests(dut)
    }
  }
}
 */
