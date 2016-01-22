package fpga_components

import scala.io.Source
import Chisel._
import Node._
import Math._
import scala.collection.mutable.HashMap
import scala.collection.mutable.ArrayBuffer
import scala.util.Random

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
}

class io_tile_sp_gen extends Component {

    val io = new Bundle {
      val configs_in = Bits(INPUT, 32)
    }

    // data structures for parameters
    val io_tile_param_list = new scala.collection.mutable.ArrayBuffer[IO_Param]()
    val io_config_filename = "../src/io_tile_sp/io_tile_scala.config"

    ConfigReaer.read_io_config (io_tile_param_list, io_config_filename)

    var i = 0;
    for ( i <- 0 until io_tile_param_list.length )
    {
        if (io_tile_param_list(i).num_chanxy_out == 0)
        {
            val new_io_tile = new io_tile_woc (io_tile_param_list(i))
            new_io_tile.io.configs_in := io.configs_in
        }
        else
        {
            val new_io_tile = new io_tile_wc (io_tile_param_list(i))
            new_io_tile.io.configs_in := io.configs_in
        } 
    }
}

class io_tile_sp_gen_tests(dut: io_tile_sp_gen) extends Tester(dut, Array(dut.io)) {
    defTests {
        var allGood = true
        val vars = new HashMap[Node, Node]()

        vars.clear()

        allGood
    }
}

object io_tile_sp_gen_main {
    def main(args: Array[String]): Unit = {
        val chiselArgs = args.tail

        val res = chiselMainTest(chiselArgs, () => new io_tile_sp_gen) {
            dut => new io_tile_sp_gen_tests(dut)
        }
    }
}
