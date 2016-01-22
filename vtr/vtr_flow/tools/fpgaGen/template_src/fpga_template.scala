package fpga_components

import scala.io.Source
import Chisel._
import Node._
import Math._
import IOConstants._
import LutConstants._

object ConfigReaer
{
    def read_io_config (io_tile_param_list: scala.collection.mutable.ArrayBuffer[IO_Param], io_config_filename: String) = 
    {
        // create right number of IO_Param
        for (line <- Source.fromFile(io_config_filename).getLines())
        {
            if (line.startsWith("Y_COR"))
            {
                var line_token = line.split(" +")

                var this_Param = new IO_Param

                this_Param.y_loc = line_token(1).toInt
                this_Param.x_loc = line_token(3).toInt
                this_Param.num_ipin = line_token(5).toInt
                this_Param.num_opin = line_token(7).toInt
                this_Param.num_chanxy_out = line_token(9).toInt
                this_Param.num_ipin_in = line_token(11).toInt
                this_Param.num_chanxy_in = line_token(13).toInt

                io_tile_param_list.append(this_Param)
            }
        }

        var i = 0
        var IO_Param_index = 0
        var this_Param = io_tile_param_list(IO_Param_index)
        for (line <- Source.fromFile(io_config_filename).getLines())
        {
            if (line.startsWith("Y_COR")) {
                this_Param = io_tile_param_list(IO_Param_index)
                IO_Param_index = IO_Param_index + 1
            }
            else if (line.startsWith("IPIN_CONFIGS"))
            {
                var line_token = line.split(" +")

                this_Param.num_ipin_configs = line_token(1).toInt
                this_Param.num_chanxy_configs = line_token(3).toInt
                this_Param.num_chanxy_configs_start = line_token(5).toInt
                this_Param.num_chanxy_configs_end = line_token(7).toInt
                this_Param.configs_depth = line_token(9).toInt
            }
            else if (line.startsWith("IPIN_INPUT_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.ipin_input_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("IPIN_INDEX_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.ipin_index_start_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("IPIN_CONFIG_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.ipin_config_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("IPIN_CONFIG_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.ipin_config_start_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_INPUT_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_out_input_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_INDEX_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_out_index_start_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_CONFIG_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_config_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_CONFIG_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_config_start_list.append(line_token(i).toInt)
                }
            }
        }
    }

    def read_lut_config (lut_tile_param_list: scala.collection.mutable.ArrayBuffer[lut_Param], lut_config_filename: String ) = 
    {
        // create right number of IO_Param
        for (line <- Source.fromFile(lut_config_filename).getLines())
        {
            if (line.startsWith("Y_COR"))
            {
                var line_token = line.split(" +")

                var this_Param = new lut_Param

                this_Param.y_loc = line_token(1).toInt
                this_Param.x_loc = line_token(3).toInt
                this_Param.num_ipin = line_token(5).toInt
                this_Param.num_opin = line_token(7).toInt
                this_Param.num_chanxy_out = line_token(9).toInt
                this_Param.num_chanxy_in = line_token(11).toInt

                lut_tile_param_list.append(this_Param)
            }
        }

        var i = 0
        var lut_Param_index = 0
        var this_Param = lut_tile_param_list(lut_Param_index)
        for (line <- Source.fromFile(lut_config_filename).getLines())
        {
            if (line.startsWith("Y_COR")) {
                this_Param = lut_tile_param_list(lut_Param_index)
                lut_Param_index = lut_Param_index + 1
            }
            else if (line.startsWith("XY_CONFIGS"))
            {
                var line_token = line.split(" +")

                this_Param.num_chanxy_configs = line_token(1).toInt
                this_Param.chanxy_configs_start = line_token(3).toInt
                this_Param.chanxy_configs_end = line_token(5).toInt
                this_Param.configs_depth = line_token(7).toInt
            }
            else if (line.startsWith("CHANXY_INPUT_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_out_input_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_INDEX_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_out_index_start_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_CONFIG_WIDTH"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_config_width_list.append(line_token(i).toInt)
                }
            }
            else if (line.startsWith("CHANXY_CONFIG_START"))
            {
                val line_token = line.split(" +")

                for ( i <- 1 until line_token.length )
                {
                    this_Param.chanxy_config_start_list.append(line_token(i).toInt)
                }
            }
        }
    }
}

class fpga extends Component {
    val io = new Bundle {
        val top_in = Bits(INPUT, VAR_NUM_FPGA_TOP_IN)
        val top_out = Bits(OUTPUT, VAR_NUM_FPGA_TOP_OUT)
        val bot_in = Bits(INPUT, VAR_NUM_FPGA_BOT_IN)
        val bot_out = Bits(OUTPUT, VAR_NUM_FPGA_BOT_OUT)
        val left_in = Bits(INPUT, VAR_NUM_FPGA_LEFT_IN)
        val left_out = Bits(OUTPUT, VAR_NUM_FPGA_LEFT_OUT)
        val right_in = Bits(INPUT, VAR_NUM_FPGA_RIGHT_IN)
        val right_out = Bits(OUTPUT, VAR_NUM_FPGA_RIGHT_OUT)

        val configs_in = Bits(INPUT, VAR_NUM_FPGA_CONFIGS_IN)
        val configs_en = Bits(INPUT, VAR_NUM_FPGA_CONFIGS_EN)

        val ff_en = Bool (INPUT)
    }

    // data structures for parameters
    val io_tile_param_list = new scala.collection.mutable.ArrayBuffer[IO_Param]()
    val lut_tile_param_list = new scala.collection.mutable.ArrayBuffer[lut_Param]()
    val io_config_filename = "io_tile_scala.config"
    val lut_config_filename = "lut_tile_scala.config"

    ConfigReaer.read_io_config (io_tile_param_list, io_config_filename)
    ConfigReaer.read_lut_config (lut_tile_param_list, lut_config_filename)

    ###PRAG_REPLACE SOMETHING###

class fpga_tests(dut: fpga) extends Tester(dut, Array(dut.io)) {

  defTests {
    var allGood = true

    allGood
  }
}

object fpga_main {
  def main(args: Array[String]): Unit = {
       val fpga = args(0)

       val chiselArgs = args.tail

       chiselMainTest(chiselArgs, () => new fpga()) {
         dut => new fpga_tests(dut)
    }
  }
}
