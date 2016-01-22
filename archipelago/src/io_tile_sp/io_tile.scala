package fpga_components

import scala.io.Source
import Chisel._
import Node._
import DataConverter._ 

class IO_Param {
    var x_loc: Int = _
    var y_loc: Int = _

    var num_ipin: Int = _
    var num_ipin_in: Int = _
    var num_chanxy_out: Int = _
    var num_chanxy_in: Int = _
    var num_opin: Int = _
    var num_ipin_configs: Int = _
    var num_chanxy_configs_start: Int = _
    var num_chanxy_configs_end: Int = _
    var num_chanxy_configs: Int = _
    var configs_depth: Int = _

    val ipin_input_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val ipin_index_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val ipin_config_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val ipin_config_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_out_input_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_out_index_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_config_width_list = new scala.collection.mutable.ArrayBuffer[Int]()
    val chanxy_config_start_list = new scala.collection.mutable.ArrayBuffer[Int]()
}

class io_tile_woc (param: IO_Param) extends Component
{
    val io = new Bundle {
        val configs_in = Bits(INPUT, 32)
        val configs_en = Bits(INPUT, param.configs_depth)
        val io_input = Bits(INPUT, param.num_opin)
        val io_output = Bits(OUTPUT, param.num_ipin)
        val opin_out = Bits(OUTPUT, param.num_opin)
        val ipin_in = Bits (INPUT, param.num_ipin_in)
        val x_loc = Bits(OUTPUT, 8)
        val y_loc = Bits(OUTPUT, 8)
    }

    io.x_loc := Bits( param.x_loc )
    io.y_loc := Bits( param.y_loc )

    val this_sbcb = new io_sbcb_woc (param)
    val this_config = new configs_latches (param.configs_depth)

    // interconnects
    this_config.io.d_in := io.configs_in
    this_config.io.configs_en := io.configs_en

    this_sbcb.io.ipin_in := io.ipin_in
    this_sbcb.io.ipin_config := this_config.io.configs_out(param.num_ipin_configs - 1, 0)

    io.io_output := this_sbcb.io.ipin_out
    io.opin_out := io.io_input
}

class io_tile_wc (param: IO_Param) extends Component
{
    val io = new Bundle {
        val configs_in = Bits(INPUT, 32)
        val configs_en = Bits(INPUT, param.configs_depth)
        val io_input = Bits(INPUT, param.num_opin)
        val io_output = Bits(OUTPUT, param.num_ipin)
        val opin_out = Bits(OUTPUT, param.num_opin)
        val ipin_in = Bits (INPUT, param.num_ipin_in)
        val chanxy_in = Bits (INPUT, param.num_chanxy_in)
        val chanxy_out = Bits (OUTPUT, param.num_chanxy_out)
        val x_loc = Bits(OUTPUT, 8)
        val y_loc = Bits(OUTPUT, 8)
    }

    io.x_loc := Bits( param.x_loc )
    io.y_loc := Bits( param.y_loc )

    val this_sbcb = new io_sbcb_wc (param)
    val this_config = new configs_latches (param.configs_depth)

    // interconnects
    this_config.io.d_in := io.configs_in
    this_config.io.configs_en := io.configs_en

    this_sbcb.io.ipin_in := io.ipin_in
    this_sbcb.io.ipin_config := this_config.io.configs_out(param.num_ipin_configs - 1, 0)
    this_sbcb.io.chanxy_in := io.chanxy_in
    this_sbcb.io.chanxy_config := this_config.io.configs_out(param.num_ipin_configs + param.num_chanxy_configs - 1, param.num_ipin_configs)

    io.chanxy_out := this_sbcb.io.chanxy_out
    io.io_output := this_sbcb.io.ipin_out
    io.opin_out := io.io_input
}

class io_sbcb_woc (param: IO_Param) extends Component
{
    val io = new Bundle {
        val ipin_in = Bits (INPUT, param.num_ipin_in)
        val ipin_config = Bits (INPUT, param.num_ipin_configs)

        val ipin_out = Bits (OUTPUT, param.num_ipin)
    }

    val ipin_in_break = new Array [Bits] (param.num_ipin)
    val ipin_config_break = new Array [Bits] (param.num_ipin_configs)
    val to_ipin_out = new Array [Bits] (param.num_ipin)

    var i = 0;

    for ( i <- 0 until param.num_ipin )
    {
        var ipin_in_start_bit = param.ipin_index_start_list(i)
        var ipin_in_end_bit = param.ipin_index_start_list(i) + param.ipin_input_width_list(i) - 1

        ipin_in_break(i) = Bits (width = param.ipin_input_width_list(i))
        ipin_in_break(i) := io.ipin_in(ipin_in_end_bit, ipin_in_start_bit)

        var ipin_config_start_bit = param.ipin_config_start_list(i)
        var ipin_config_end_bit = param.ipin_config_start_list(i) + param.ipin_config_width_list(i) - 1

        ipin_config_break(i) = Bits (width = param.ipin_input_width_list(i))
        ipin_config_break(i) := io.ipin_config(ipin_config_end_bit, ipin_config_start_bit)

        to_ipin_out(i) = Bits (width = 1)
        to_ipin_out(i) := ipin_in_break(i)(ipin_config_break(i))
    }

    io.ipin_out := convert_Array_to_Bits (to_ipin_out, param.num_ipin)
}

class io_sbcb_wc (param: IO_Param) extends Component
{
    val io = new Bundle {
        val ipin_in = Bits (INPUT, param.num_ipin_in)
        val ipin_config = Bits (INPUT, param.num_ipin_configs)

        val chanxy_in = Bits (INPUT, param.num_chanxy_in)
        val chanxy_config = Bits(INPUT, param.num_chanxy_configs)

        val ipin_out = Bits (OUTPUT, param.num_ipin)
        val chanxy_out = Bits (OUTPUT, param.num_chanxy_out)
    }

    val ipin_in_break = new Array [Bits] (param.num_ipin)
    val ipin_config_break = new Array [Bits] (param.num_ipin_configs)
    val to_ipin_out = new Array [Bits] (param.num_ipin)
    val chanxy_in_break = new Array [Bits] (param.num_chanxy_out)            
    val chanxy_config_break = new Array [Bits] (param.num_chanxy_configs)
    val to_chanxy_out = new Array[Bits] (param.num_chanxy_out)               

    var i = 0;

    for ( i <- 0 until param.num_ipin )
    {
        var ipin_in_start_bit = param.ipin_index_start_list(i)
        var ipin_in_end_bit = param.ipin_index_start_list(i) + param.ipin_input_width_list(i) - 1

        ipin_in_break(i) = Bits (width = param.ipin_input_width_list(i))
        ipin_in_break(i) := io.ipin_in(ipin_in_end_bit, ipin_in_start_bit)

        var ipin_config_start_bit = param.ipin_config_start_list(i)
        var ipin_config_end_bit = param.ipin_config_start_list(i) + param.ipin_config_width_list(i) - 1

        ipin_config_break(i) = Bits (width = param.ipin_input_width_list(i))
        ipin_config_break(i) := io.ipin_config(ipin_config_end_bit, ipin_config_start_bit)

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

    io.ipin_out := convert_Array_to_Bits (to_ipin_out, param.num_ipin)
    io.chanxy_out := convert_Array_to_Bits (to_chanxy_out, param.num_chanxy_out)
}
