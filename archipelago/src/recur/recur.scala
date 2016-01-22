package recur

import Chisel._
import Node._
import DataConverter._
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

class recur extends Component {
  val io = new Bundle {
    val in = Bits(INPUT, 8)
    val out = Bits(OUTPUT, 8)
  }

  val to_out = new Array [Bits] (8)
  var i = 0;

  for (i <- 0 until 8)
  {
    to_out(i) = Bits (width = 1)
    to_out(i) := io.in(i)
  }

  io.out := convert_Array_to_Bits (to_out, 8, 8)
}

class recurTests(c: recur) extends Tester(c, Array(c.io)) {
  defTests {
    var allGood = true
    val vars    = new HashMap[Node, Node]()

    vars.clear()
    vars(c.io.in) = Bits(255)
    vars(c.io.out) = Bits(255)
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits(127)
    vars(c.io.out) = Bits(127)
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits(170)
    vars(c.io.out) = Bits(170)
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits(85)
    vars(c.io.out) = Bits(85)
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits(0)
    vars(c.io.out) = Bits(0)
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits("b01001010")
    vars(c.io.out) = Bits("b01001010")
    allGood = step(vars) && allGood

    vars(c.io.in) = Bits("b11111110")
    vars(c.io.out) = Bits("b11111110")
    allGood = step(vars) && allGood

    allGood
  }
}

object recurMain {
  def main(args: Array[String]): Unit = { 
    val chiselArgs = args.tail

    val res = chiselMainTest(chiselArgs, () => new recur) {
      dut => new recurTests(dut)
    }
  }
}
