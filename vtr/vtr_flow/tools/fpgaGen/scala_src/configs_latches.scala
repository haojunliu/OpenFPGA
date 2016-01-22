package fpga_components

import Chisel._
import Node._
import Math._
import DataConverter._
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

class configs_latches (config_depth: Int) extends Component {
  val io = new Bundle {
    val d_in = Bits(INPUT, 32)
    val configs_out = Bits(OUTPUT, 32*config_depth)
    val configs_en = Bits(INPUT, config_depth)
  }

  val config_ffs = Vec(config_depth) { Reg(resetVal = Bits(0, 32)) }
  val config_ffs_out = new Array [Bits] (config_depth)

  for (i <- 0 until config_depth)
  {
    when (io.configs_en(i))
    {
      config_ffs(i) := io.d_in
    }

    config_ffs_out(i) = Bits ( width = 32 )
    config_ffs_out(i) := config_ffs(i)
  } 

  io.configs_out := convert_Array_to_Bits_Wide (config_ffs_out, config_depth)
}

