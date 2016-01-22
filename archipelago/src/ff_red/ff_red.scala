package ff_red

import Chisel._
import Node._
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

class ff_red extends Component {
  val io = new Bundle {
    val in1 = Bits(INPUT, 1)
    val in2 = Bits(INPUT, 1)
    val in3 = Bits(INPUT, 1)
    val in4 = Bits(INPUT, 1)
    val out1 = Bits(OUTPUT, 1)
    val out2 = Bits(OUTPUT, 1)
    val out3 = Bits(OUTPUT, 1)
  }

  val lvl1_reg1 = Reg(resetVal = Bits(0))
  val lvl1_reg2 = Reg(resetVal = Bits(0))
  val lvl2_reg1 = Reg(resetVal = Bits(0))

  lvl1_reg1 := io.in1 | io.in2
  lvl1_reg2 := io.in3 | io.in4
  lvl2_reg1 := lvl1_reg1 | lvl1_reg2

  io.out1 := lvl1_reg1
  io.out2 := lvl1_reg2
  io.out3 := lvl2_reg1
}

class ff_redTests(c: ff_red) extends Tester(c, Array(c.io)) {
  defTests {
    var allGood = true
    val vars    = new HashMap[Node, Node]()

    vars.clear()
    vars(c.io.in1) = Bits(1)
    vars(c.io.in2) = Bits(1)
    vars(c.io.in3) = Bits(1)
    vars(c.io.in4) = Bits(1)
    vars(c.io.out1) = Bits(0)
    vars(c.io.out2) = Bits(0)
    vars(c.io.out3) = Bits(0)
    allGood = step(vars) && allGood

    vars(c.io.in1) = Bits(1)
    vars(c.io.in2) = Bits(0)
    vars(c.io.in3) = Bits(1)
    vars(c.io.in4) = Bits(0)
    vars(c.io.out1) = Bits(1)
    vars(c.io.out2) = Bits(1)
    vars(c.io.out3) = Bits(0)
    allGood = step(vars) && allGood

    vars(c.io.in1) = Bits(0)
    vars(c.io.in2) = Bits(0)
    vars(c.io.in3) = Bits(0)
    vars(c.io.in4) = Bits(0)
    vars(c.io.out1) = Bits(1)
    vars(c.io.out2) = Bits(1)
    vars(c.io.out3) = Bits(1)
    allGood = step(vars) && allGood

    vars(c.io.in1) = Bits(0)
    vars(c.io.in2) = Bits(0)
    vars(c.io.in3) = Bits(0)
    vars(c.io.in4) = Bits(0)
    vars(c.io.out1) = Bits(0)
    vars(c.io.out2) = Bits(0)
    vars(c.io.out3) = Bits(1)
    allGood = step(vars) && allGood

    allGood
  }
}

object ff_redMain {
  def main(args: Array[String]): Unit = { 
    val chiselArgs = args.tail

    val res = chiselMainTest(chiselArgs, () => new ff_red) {
      dut => new ff_redTests(dut)
    }
  }
}
