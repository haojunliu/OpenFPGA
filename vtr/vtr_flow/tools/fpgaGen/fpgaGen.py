import sys
import shlex
import math

import route_modules

def generate_verilog_fpga_header(fpga_tile_fp, num_io_in, num_io_out, num_configs_in, num_configs_en):

    num_top_in = num_io_in - 1
    num_bop_in = num_io_in - 1
    num_left_in = num_io_in - 1
    num_right_in = num_io_in - 1

    num_top_out = num_io_out - 1
    num_bop_out = num_io_out - 1
    num_left_out = num_io_out - 1
    num_right_out = num_io_out - 1

    line_to_print = 'module fpga(\n'
    line_to_print = line_to_print + '    input [' + str(num_top_in) + ':0] top_in,\n'
    line_to_print = line_to_print + '    input [' + str(num_bop_in) + ':0] bot_in,\n'
    line_to_print = line_to_print + '    input [' + str(num_left_in) + ':0] left_in,\n'
    line_to_print = line_to_print + '    input [' + str(num_right_in) + ':0] right_in,\n'
    line_to_print = line_to_print + '    output [' + str(num_top_out) + ':0] top_out,\n'
    line_to_print = line_to_print + '    output [' + str(num_bop_out) + ':0] bot_out,\n'
    line_to_print = line_to_print + '    output [' + str(num_left_out) + ':0] left_out,\n'
    line_to_print = line_to_print + '    output [' + str(num_right_out) + ':0] right_out,\n'
    line_to_print = line_to_print + '    input [' + str(num_configs_in-1) + ':0] configs_in,\n'
    line_to_print = line_to_print + '    input [' + str(num_configs_en-1) + ':0] configs_en,\n'
    line_to_print = line_to_print + '    input ff_en, clock, rst\n);\n\n'

    fpga_tile_fp.write(line_to_print)

def generate_verilog_wires(fpga_tile_fp, fpga_route, const_node_count):

    fpga_tile_fp.write('    // Interconnection Wire Declaration\n')

    for i in range (0, const_node_count):
        if fpga_route[i].r_type == route_modules.R_TYPE_OPIN or fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
            line_to_print = '    wire wire_' + str(i) + ';\n'
            fpga_tile_fp.write(line_to_print)

def generate_wires(fpga_tile_fp, fpga_route, const_node_count):

    fpga_tile_fp.write('\n\n    // Interconnection Wire Declaration\n')
    for i in range (0, const_node_count):
        if fpga_route[i].r_type == route_modules.R_TYPE_OPIN or fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
            line_to_print = '    val wire_' + str(i) + ' = Bits(1)\n'
            fpga_tile_fp.write(line_to_print)

def generate_fpga_configs_in(fpga_tile_fp, x_size, y_size):

    fpga_tile_fp.write('\n\n    // FPGA TILE CONFIG_IN\n')

    # EDGE
    for x_cor in range (1, x_size + 1):
        line_to_print = '    io_tile_0_' + str(x_cor) + '.io.configs_in := io.configs_in(' + str(32*x_cor + 31) + ', ' + str(32*x_cor) + ')\n'
        fpga_tile_fp.write(line_to_print)

    # CENTER
    for y_cor in range (1, y_size + 1):
        for x_cor in range (0, x_size + 2):
            if x_cor == 0 or x_cor == x_size + 1:
                line_to_print = '    io_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_in := io.configs_in(' + str(32*x_cor + 31) + ', ' + str(32*x_cor) + ')\n'
                fpga_tile_fp.write(line_to_print)
            else:
                line_to_print = '    lut_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_in := io.configs_in(' + str(32*x_cor + 31) + ', ' + str(32*x_cor) + ')\n'
                fpga_tile_fp.write(line_to_print)

    # EDGE
    for x_cor in range (1, x_size + 1):
        line_to_print = '    io_tile_' + str(y_size + 1) + '_' + str(x_cor) + '.io.configs_in := io.configs_in(' + str(32*x_cor + 31) + ', ' + str(32*x_cor) + ')\n'
        fpga_tile_fp.write(line_to_print)

def generate_verilog_lut_tile_ipin (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count):

    fpga_tile_fp.write('\n\n    // LUT TILE IPIN\n')
    for x_cor in range (1, x_size + 1):
        for y_cor in range (1, y_size + 1):
            this_tile = fpga_lut_tile[y_cor-1][x_cor-1]
            ipin_count = 0

            line_to_print = '    assign lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_ipin_in = {'

            for i in range (this_tile.num_ipin - 1, -1, -1):
                for j in range (len(fpga_route[this_tile.ipin_list[i]].sup_r) - 1, -1, -1):

                    line_to_print = line_to_print + 'wire_' + str(fpga_route[this_tile.ipin_list[i]].sup_r[j])
                    ipin_count = ipin_count + 1

                    if i != 0 or j != 0:
                        line_to_print = line_to_print + ', '

            line_to_print =  line_to_print + '};\n'
            fpga_tile_fp.write(line_to_print)

            line_to_print = '    // IPIN TOTAL: ' + str(ipin_count) + '\n'
            fpga_tile_fp.write(line_to_print)

def generate_verilog_lut_tile_opin (fpga_tile_fp, fpga_lut_tile, x_size, y_size):

    fpga_tile_fp.write('\n\n    // FPGA TILE OPIN\n')

    for y_cor in range (1, y_size + 1):
        for x_cor in range (1, x_size + 1):
            this_tile = fpga_lut_tile[y_cor-1][x_cor-1]

            for i in range (0, len(this_tile.opin_list)):
                opin_id = this_tile.opin_list[i]

                line_to_print = '    assign wire_' + str(opin_id) + ' = '
                line_to_print = line_to_print + 'lut_tile_' + str(y_cor) + '_' + str(x_cor) + '_opin_out[' + str(i) + '];\n'

                fpga_tile_fp.write(line_to_print)

def generate_lut_tile_opin (fpga_tile_fp, fpga_lut_tile, x_size, y_size):

    fpga_tile_fp.write('\n\n    // FPGA TILE OPIN\n')

    for y_cor in range (1, y_size + 1):
        for x_cor in range (1, x_size + 1):
            this_tile = fpga_lut_tile[y_cor-1][x_cor-1]

            for i in range (0, len(this_tile.opin_list)):
                opin_id = this_tile.opin_list[i]

                line_to_print = '    wire_' + str(opin_id) + ' := '
                line_to_print = line_to_print + 'lut_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.opin_out(' + str(i) + ')\n'

                fpga_tile_fp.write(line_to_print)

def generate_verilog_lut_tile_chanxy (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count):

    fpga_tile_fp.write('    // LUT TILE CHANXY \n')

    for y_cor in range (1, y_size + 1):
        for x_cor in range (1, x_size + 1):

            this_tile = fpga_lut_tile[y_cor-1][x_cor-1]
            chanxy_out_count = 0

            line_to_print = '    assign lut_tile_' + str(y_cor) + '_' + str(x_cor) + '_chanxy_in = {'

            for i in range (len(this_tile.chanxy_out_list) - 1, -1, -1):
                for j in range (len(fpga_route[this_tile.chanxy_out_list[i]].sup_r) - 1, -1, -1):
                    line_to_print = line_to_print + 'wire_' + str(fpga_route[this_tile.chanxy_out_list[i]].sup_r[j])
                    chanxy_out_count = chanxy_out_count + 1

                    if i != 0 or j != 0:
                        line_to_print = line_to_print + ', '

            line_to_print =  line_to_print + '};\n'
            fpga_tile_fp.write(line_to_print)

            line_to_print = '    // CHNAXY TOTAL: ' + str(chanxy_out_count) + '\n'
            fpga_tile_fp.write(line_to_print)

            for i in range (0, len(this_tile.chanxy_out_list)):
                line_to_print = '    assign wire_' + str(this_tile.chanxy_out_list[i]) + ' = lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_chanxy_out[' + str(i) + '];\n'
                fpga_tile_fp.write(line_to_print)

            line_to_print = '   // CHANXY OUT\n'
            fpga_tile_fp.write(line_to_print)

def generate_verilog_io_tile_chanxy (fpga_tile_fp, fpga_io_tile, fpga_route):

    fpga_tile_fp.write('    // FPGA IO CHANXY\n')

    for this_tile in fpga_io_tile:
        if this_tile.num_chanxy_out != 0:
            chanxy_out_count = 0

            line_to_print = '    assign io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_chanxy_in = {'

            for i in range (len(this_tile.chanxy_out_list) - 1, -1, -1):
                chanxy_out_count = chanxy_out_count + 1
                for j in range (len(fpga_route[this_tile.chanxy_out_list[i]].sup_r) - 1, -1, -1):
                    line_to_print = line_to_print + 'wire_' + str(fpga_route[this_tile.chanxy_out_list[i]].sup_r[j])

                    if i != 0 or j != 0:
                        line_to_print = line_to_print + ', '

            line_to_print =  line_to_print + '};\n'
            fpga_tile_fp.write(line_to_print)

            line_to_print = '    // CHNAXY TOTAL: ' + str(chanxy_out_count) + '\n'
            fpga_tile_fp.write(line_to_print)

            for i in range (0, len(this_tile.chanxy_out_list)):
                line_to_print = '    assign wire_' + str(this_tile.chanxy_out_list[i]) + ' = io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_chanxy_out[' + str(i) + '];\n'
                fpga_tile_fp.write(line_to_print)

def generate_verilog_io_tile_ipin (fpga_tile_fp, fpga_io_tile, fpga_route):

    fpga_tile_fp.write('    // FPGA IO IPIN\n')

    for this_tile in fpga_io_tile:

        line_to_print = '    assign io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_ipin_in = {'

        for i in range (this_tile.num_ipin - 1, -1, -1):
            for j in range (len(fpga_route[this_tile.ipin_list[i]].sup_r) - 1, -1, -1):

                line_to_print = line_to_print + 'wire_' + str(fpga_route[this_tile.ipin_list[i]].sup_r[j])

                if i != 0 or j != 0:
                    line_to_print = line_to_print + ', '

        line_to_print =  line_to_print + '};\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    // FPGA IPIN IN\n'
        fpga_tile_fp.write(line_to_print)

def generate_io_tile_ipin (fpga_tile_fp, fpga_io_tile, fpga_route):

    fpga_tile_fp.write('    // FPGA IO IPIN\n')

    for this_tile in fpga_io_tile:

        line_to_print = '    io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '.io.ipin_in := Cat('

        for i in range (0, this_tile.num_ipin):
            for j in range (0, len(fpga_route[this_tile.ipin_list[i]].sup_r)):

                line_to_print = line_to_print + 'wire_' + str(fpga_route[this_tile.ipin_list[i]].sup_r[j])

                if i != (len(this_tile.ipin_list) - 1) or j != (len(fpga_route[this_tile.ipin_list[i]].sup_r) - 1):
                    line_to_print = line_to_print + ', '

        line_to_print =  line_to_print + ')\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    // FPGA IPIN IN\n'
        fpga_tile_fp.write(line_to_print)

def generate_verilog_io_tile_opin (fpga_tile_fp, fpga_io_tile):

    fpga_tile_fp.write('\n\n    // FPGA IO OPIN\n')

    for this_tile in fpga_io_tile:

        for i in range (0, len(this_tile.opin_list)):
            opin_id = this_tile.opin_list[i]

            line_to_print = '    assign wire_' + str(opin_id) + ' = '
            line_to_print = line_to_print + 'io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '_opin_out[' + str(i) + '];\n'

            fpga_tile_fp.write(line_to_print)

def generate_io_tile_opin (fpga_tile_fp, fpga_io_tile):

    fpga_tile_fp.write('\n\n    // FPGA IO OPIN\n')

    for this_tile in fpga_io_tile:

        for i in range (0, len(this_tile.opin_list)):
            opin_id = this_tile.opin_list[i]

            line_to_print = '    wire_' + str(opin_id) + ' := '
            line_to_print = line_to_print + 'io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor) + '.io.opin_out(' + str(i) + ');\n'

            fpga_tile_fp.write(line_to_print)

def generate_fpga_tile_ff_en (fpga_tile_fp, x_size, y_size):

    fpga_tile_fp.write('\n\n    // FPGA TILE FF_EN\n')

    for y_cor in range (1, y_size + 1):
        for x_cor in range (1, x_size + 1):

            line_to_print = '    lut_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.ff_en := io.ff_en\n'
            fpga_tile_fp.write(line_to_print)

def generate_verilog_fpga_tile_declare(fpga_tile_fp, fpga_lut_tile, fpga_io_tile, x_size, y_size, fpga_config_depth, fpga_config_start_index):

    line_to_print = '\n\n    // FPGA IO TILES DECLARE\n'
    fpga_tile_fp.write(line_to_print)

    for i in range (0, len(fpga_io_tile)):

        this_tile = fpga_io_tile[i]
        tile_name = 'io_tile_' +  str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
        this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
        this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
        this_tile_config_in_range_low = 32*this_tile.x_cor

        line_to_print = ''
        if this_tile.num_chanxy_out != 0:
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'

        line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin_in - 1) + ':0] ' + tile_name + '_ipin_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    io_tile_sp_' + str(i) + ' ' + tile_name + '(\n'
        if this_tile.num_chanxy_out != 0:
            line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
            line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
        line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
        line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'

        # different sides on IOs
        if this_tile.y_cor == y_size + 1:
            i_end_index = this_tile.x_cor*this_tile.num_ipin - 1
            i_start_index = i_end_index - this_tile.num_ipin + 1
            o_end_index = this_tile.x_cor*this_tile.num_opin - 1
            o_start_index = o_end_index - this_tile.num_opin + 1
            line_to_print = line_to_print + '            .io_io_input(top_in[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
            line_to_print = line_to_print + '            .io_io_output(top_out[' + str(o_end_index) + ':' + str(o_start_index) + ']),\n'
        if this_tile.y_cor == 0:
            i_end_index = this_tile.x_cor*this_tile.num_ipin - 1
            i_start_index = i_end_index - this_tile.num_ipin + 1
            o_end_index = this_tile.x_cor*this_tile.num_opin - 1
            o_start_index = o_end_index - this_tile.num_opin + 1
            line_to_print = line_to_print + '            .io_io_input(bot_in[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
            line_to_print = line_to_print + '            .io_io_output(bot_out[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
        if this_tile.x_cor == 0:
            i_end_index = this_tile.y_cor*this_tile.num_ipin - 1
            i_start_index = i_end_index - this_tile.num_ipin + 1
            o_end_index = this_tile.y_cor*this_tile.num_opin - 1
            o_start_index = o_end_index - this_tile.num_opin + 1
            line_to_print = line_to_print + '            .io_io_input(left_in[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
            line_to_print = line_to_print + '            .io_io_output(left_out[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
        if this_tile.x_cor == x_size + 1:
            i_end_index = this_tile.y_cor*this_tile.num_ipin - 1
            i_start_index = i_end_index - this_tile.num_ipin + 1
            o_end_index = this_tile.y_cor*this_tile.num_opin - 1
            o_start_index = o_end_index - this_tile.num_opin + 1
            line_to_print = line_to_print + '            .io_io_input(right_in[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'
            line_to_print = line_to_print + '            .io_io_output(right_out[' + str(i_end_index) + ':' + str(i_start_index) + ']),\n'

        line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
        line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
        line_to_print = line_to_print + '            .io_x_loc(),\n'
        line_to_print = line_to_print + '            .io_y_loc(),\n'
        line_to_print = line_to_print + '            .clk(clock),\n'
        line_to_print = line_to_print + '            .reset(rst)\n'
        line_to_print = line_to_print + '        );\n\n'

        fpga_tile_fp.write(line_to_print)

    line_to_print = '\n\n    // FPGA LUT TILES DECLARE\n'
    fpga_tile_fp.write(line_to_print)

    edge_param_count = 0

    for y_cor in range (0, y_size):
        x_cor = 0

        this_tile = fpga_lut_tile[y_cor][x_cor]
        tile_name = 'lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
        this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
        this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
        this_tile_config_in_range_low = 32*this_tile.x_cor

        line_to_print = ''
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin*this_tile.ipin_input_width_list[0] - 1) + ':0] ' + tile_name + '_ipin_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    lut_tile_sp_' + str(edge_param_count) + ' ' + tile_name + '(\n'
        line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
        line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
        line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
        line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'
        line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
        line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
        line_to_print = line_to_print + '            .io_x_loc(),\n'
        line_to_print = line_to_print + '            .io_y_loc(),\n'
        line_to_print = line_to_print + '            .io_ff_en(ff_en),\n'
        line_to_print = line_to_print + '            .clk(clock),\n'
        line_to_print = line_to_print + '            .reset(rst)\n'
        line_to_print = line_to_print + '        );\n\n'

        fpga_tile_fp.write(line_to_print)

        edge_param_count = edge_param_count + 1

    for y_cor in range (0, y_size):
        x_cor = x_size - 1

        this_tile = fpga_lut_tile[y_cor][x_cor]
        tile_name = 'lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
        this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
        this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
        this_tile_config_in_range_low = 32*this_tile.x_cor

        line_to_print = ''
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin*this_tile.ipin_input_width_list[0] - 1) + ':0] ' + tile_name + '_ipin_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    lut_tile_sp_' + str(edge_param_count) + ' ' + tile_name + '(\n'
        line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
        line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
        line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
        line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'
        line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
        line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
        line_to_print = line_to_print + '            .io_x_loc(),\n'
        line_to_print = line_to_print + '            .io_y_loc(),\n'
        line_to_print = line_to_print + '            .io_ff_en(ff_en),\n'
        line_to_print = line_to_print + '            .clk(clock),\n'
        line_to_print = line_to_print + '            .reset(rst)\n'
        line_to_print = line_to_print + '        );\n\n'

        fpga_tile_fp.write(line_to_print)

        edge_param_count = edge_param_count + 1

    for x_cor in range (1, x_size - 1):
        y_cor = 0

        this_tile = fpga_lut_tile[y_cor][x_cor]
        tile_name = 'lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
        this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
        this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
        this_tile_config_in_range_low = 32*this_tile.x_cor

        line_to_print = ''
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin*this_tile.ipin_input_width_list[0] - 1) + ':0] ' + tile_name + '_ipin_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    lut_tile_sp_' + str(edge_param_count) + ' ' + tile_name + '(\n'
        line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
        line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
        line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
        line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'
        line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
        line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
        line_to_print = line_to_print + '            .io_x_loc(),\n'
        line_to_print = line_to_print + '            .io_y_loc(),\n'
        line_to_print = line_to_print + '            .io_ff_en(ff_en),\n'
        line_to_print = line_to_print + '            .clk(clock),\n'
        line_to_print = line_to_print + '            .reset(rst)\n'
        line_to_print = line_to_print + '        );\n\n'

        fpga_tile_fp.write(line_to_print)

        edge_param_count = edge_param_count + 1

    for x_cor in range (1, x_size - 1):
        y_cor = y_size -1

        this_tile = fpga_lut_tile[y_cor][x_cor]
        tile_name = 'lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
        this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
        this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
        this_tile_config_in_range_low = 32*this_tile.x_cor

        line_to_print = ''
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin*this_tile.ipin_input_width_list[0] - 1) + ':0] ' + tile_name + '_ipin_in;\n'
        line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
        fpga_tile_fp.write(line_to_print)

        line_to_print = '    lut_tile_sp_' + str(edge_param_count) + ' ' + tile_name + '(\n'
        line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
        line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
        line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
        line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'
        line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
        line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
        line_to_print = line_to_print + '            .io_x_loc(),\n'
        line_to_print = line_to_print + '            .io_y_loc(),\n'
        line_to_print = line_to_print + '            .io_ff_en(ff_en),\n'
        line_to_print = line_to_print + '            .clk(clock),\n'
        line_to_print = line_to_print + '            .reset(rst)\n'
        line_to_print = line_to_print + '        );\n\n'

        fpga_tile_fp.write(line_to_print)

        edge_param_count = edge_param_count + 1

    # center of lut tile
    for y_cor in range (1, y_size - 1):
        for x_cor in range (1, x_size - 1):

            this_tile = fpga_lut_tile[y_cor][x_cor]
            tile_name = 'lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
            this_tile_config_depth = fpga_config_depth[this_tile.y_cor][this_tile.x_cor]
            this_tile_config_start_index = fpga_config_start_index[this_tile.y_cor]
            this_tile_config_in_range_high = 32*(this_tile.x_cor+1) - 1
            this_tile_config_in_range_low = 32*this_tile.x_cor

            line_to_print = ''
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_in - 1) + ':0] ' + tile_name + '_chanxy_in;\n'
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_chanxy_out - 1) + ':0] ' + tile_name + '_chanxy_out;\n'
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_ipin*this_tile.ipin_input_width_list[0] - 1) + ':0] ' + tile_name + '_ipin_in;\n'
            line_to_print = line_to_print + '    wire [' + str(this_tile.num_opin - 1) + ':0] ' + tile_name + '_opin_out;\n'
            fpga_tile_fp.write(line_to_print)

            line_to_print = '    lut_tile' + ' ' + tile_name + '(\n'
            line_to_print = line_to_print + '            .io_chanxy_in(' + tile_name + '_chanxy_in),\n'
            line_to_print = line_to_print + '            .io_chanxy_out(' + tile_name + '_chanxy_out),\n'
            line_to_print = line_to_print + '            .io_configs_in(configs_in[' + str(this_tile_config_in_range_high) + ':' + str(this_tile_config_in_range_low) + ']),\n'
            line_to_print = line_to_print + '            .io_configs_en(configs_en[' + str(this_tile_config_start_index+this_tile_config_depth-1) + ':' + str(this_tile_config_start_index) + ']),\n'
            line_to_print = line_to_print + '            .io_ipin_in(' + tile_name + '_ipin_in),\n'
            line_to_print = line_to_print + '            .io_opin_out(' + tile_name + '_opin_out),\n'
            line_to_print = line_to_print + '            .io_ff_en(ff_en),\n'
            line_to_print = line_to_print + '            .clk(clock),\n'
            line_to_print = line_to_print + '            .reset(rst)\n'
            line_to_print = line_to_print + '        );\n\n'

            fpga_tile_fp.write(line_to_print)

def generate_fpga_tile_declare (fpga_tile_fp, fpga_lut_tile, fpga_io_tile, x_size, y_size):

    line_to_print = '\n\n    // FPGA IO TILES DECLARE\n'
    fpga_tile_fp.write(line_to_print)

    for i in range (0, len(fpga_io_tile)):

        this_tile = fpga_io_tile[i]

        line_to_print = '    val io_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)

        if this_tile.num_chanxy_out == 0:

            line_to_print = line_to_print + ' = new io_tile_wo_chanxy (io_tile_param_list(' + str(i) + '))\n'

        else:

            line_to_print = line_to_print + ' = new io_tile (io_tile_param_list(' + str(i) + '))\n'

        fpga_tile_fp.write(line_to_print)

    edge_param_count = 0

    line_to_print = '\n\n    // FPGA LUT TILES DECLARE\n'
    fpga_tile_fp.write(line_to_print)

    for y_cor in range (0, y_size):
        x_cor = 0

        this_tile = fpga_lut_tile[y_cor][x_cor]

        line_to_print = '    val lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        line_to_print = line_to_print + ' = new lut_tile_gen (lut_tile_param_list(' + str(edge_param_count) + '))\n'

        edge_param_count = edge_param_count + 1
        fpga_tile_fp.write(line_to_print)

    for y_cor in range (0, y_size):
        x_cor = x_size - 1

        this_tile = fpga_lut_tile[y_cor][x_cor]

        line_to_print = '    val lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        line_to_print = line_to_print + ' = new lut_tile_gen (lut_tile_param_list(' + str(edge_param_count) + '))\n'

        edge_param_count = edge_param_count + 1
        fpga_tile_fp.write(line_to_print)

    for x_cor in range (1, x_size - 1):
        y_cor = 0

        this_tile = fpga_lut_tile[y_cor][x_cor]

        line_to_print = '    val lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        line_to_print = line_to_print + ' = new lut_tile_gen (lut_tile_param_list(' + str(edge_param_count) + '))\n'

        edge_param_count = edge_param_count + 1
        fpga_tile_fp.write(line_to_print)

    for x_cor in range (1, x_size - 1):
        y_cor = y_size -1

        this_tile = fpga_lut_tile[y_cor][x_cor]

        line_to_print = '    val lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
        line_to_print = line_to_print + ' = new lut_tile_gen (lut_tile_param_list(' + str(edge_param_count) + '))\n'

        edge_param_count = edge_param_count + 1
        fpga_tile_fp.write(line_to_print)

    # center of lut tile
    for y_cor in range (1, y_size - 1):
        for x_cor in range (1, x_size - 1):

            this_tile = fpga_lut_tile[y_cor][x_cor]

            line_to_print = '    val lut_tile_' + str(this_tile.y_cor) + '_' + str(this_tile.x_cor)
            line_to_print = line_to_print + ' = new lut_tile\n'

            fpga_tile_fp.write(line_to_print)

def generate_fpga_io_conn(fpga_tile_fp, fpga_io_tile, x_size, y_size):

    _per_io_in = fpga_io_tile[0].num_opin
    _per_io_out = fpga_io_tile[0].num_ipin

    line_to_print = '\n\n    // IO CONN\n'
    fpga_tile_fp.write(line_to_print)

    # top
    out_line_to_print = '    io.top_out:= ' + 'Cat('
    y_cor = y_size + 1
    for x_cor in range (1, x_size + 1):

        tile_name = 'io_tile_' + str(y_cor) + '_' + str(x_cor)

        out_line_to_print = out_line_to_print + ' ' + tile_name + '.io.io_io_output,'

        line_to_print = '    ' + tile_name + '.io.io_io_input := ' + 'io.top_in(' + str(x_cor*_per_io_out - 1) + ', ' + str((x_cor-1)*_per_io_out) + ')\n'
        fpga_tile_fp.write(line_to_print)

    out_line_to_print = out_line_to_print[0:len(out_line_to_print)-1] + ')\n'
    fpga_tile_fp.write(out_line_to_print)

    # bot
    out_line_to_print = '    io.bot_out:= ' + 'Cat('
    y_cor = 0
    for x_cor in range (1, x_size + 1):

        tile_name = 'io_tile_' + str(y_cor) + '_' + str(x_cor)

        out_line_to_print = out_line_to_print + ' ' + tile_name + '.io.io_io_output,'

        line_to_print = '    ' + tile_name + '.io.io_io_input := ' + 'io.bot_in(' + str(x_cor*_per_io_out - 1) + ', ' + str((x_cor-1)*_per_io_out) + ')\n'
        fpga_tile_fp.write(line_to_print)

    out_line_to_print = out_line_to_print[0:len(out_line_to_print)-1] + ')\n'
    fpga_tile_fp.write(out_line_to_print)

    # left
    out_line_to_print = '    io.left_out:= ' + 'Cat('
    x_cor = 0
    for y_cor in range (1, y_size + 1):

        tile_name = 'io_tile_' + str(y_cor) + '_' + str(x_cor)

        out_line_to_print = out_line_to_print + ' ' + tile_name + '.io.io_io_output,'

        line_to_print = '    ' + tile_name + '.io.io_io_input := ' + 'io.left_in(' + str(y_cor*_per_io_out - 1) + ', ' + str((y_cor-1)*_per_io_out) + ')\n'
        fpga_tile_fp.write(line_to_print)

    out_line_to_print = out_line_to_print[0:len(out_line_to_print)-1] + ')\n'
    fpga_tile_fp.write(out_line_to_print)

    # right
    out_line_to_print = '    io.right_out:= ' + 'Cat('
    x_cor = x_size + 1
    for y_cor in range (1, y_size + 1):

        tile_name = 'io_tile_' + str(y_cor) + '_' + str(x_cor)

        out_line_to_print = out_line_to_print + ' ' + tile_name + '.io.io_io_output,'

        line_to_print = '    ' + tile_name + '.io.io_io_input := ' + 'io.right_in(' + str(y_cor*_per_io_out - 1) + ', ' + str((y_cor-1)*_per_io_out) + ')\n'
        fpga_tile_fp.write(line_to_print)

    out_line_to_print = out_line_to_print[0:len(out_line_to_print)-1] + ')\n'
    fpga_tile_fp.write(out_line_to_print)

    line_to_print = '\n\n'
    fpga_tile_fp.write(line_to_print)

def generate_tile_configs_en (fpga_tile_fp, fpga_config_depth, fpga_config_start_index, x_size, y_size):

    line_to_print = '\n\n    // FPGA CONFIG EN\n'
    fpga_tile_fp.write(line_to_print)

    # Edge
    for y_cor in range (1, y_size + 1):
        x_cor = 0

        _start_index = fpga_config_start_index[y_cor]
        _end_index = fpga_config_start_index[y_cor] + fpga_config_depth[y_cor][x_cor] - 1

        line_to_print = '    io_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_en := io.configs_en(' + str(_end_index) + ', ' + str(_start_index) + ')\n'
        fpga_tile_fp.write(line_to_print)

    for y_cor in range (1, y_size + 1):
        x_cor = x_size + 1

        _start_index = fpga_config_start_index[y_cor]
        _end_index = fpga_config_start_index[y_cor] + fpga_config_depth[y_cor][x_cor] - 1

        line_to_print = '    io_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_en := io.configs_en(' + str(_end_index) + ', ' + str(_start_index) + ')\n'
        fpga_tile_fp.write(line_to_print)

    for x_cor in range (1, x_size + 1):
        y_cor = 0

        _start_index = fpga_config_start_index[y_cor]
        _end_index = fpga_config_start_index[y_cor] + fpga_config_depth[y_cor][x_cor] - 1

        line_to_print = '    io_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_en := io.configs_en(' + str(_end_index) + ', ' + str(_start_index) + ')\n'
        fpga_tile_fp.write(line_to_print)

    for x_cor in range (1, x_size + 1):
        y_cor = y_size + 1

        _start_index = fpga_config_start_index[y_cor]
        _end_index = fpga_config_start_index[y_cor] + fpga_config_depth[y_cor][x_cor] - 1

        line_to_print = '    io_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_en := io.configs_en(' + str(_end_index) + ', ' + str(_start_index) + ')\n'
        fpga_tile_fp.write(line_to_print)

    # Lut Tile
    for y_cor in range (1, y_size + 1):
        for x_cor in range (1, x_size + 1):

            _start_index = fpga_config_start_index[y_cor]
            _end_index = fpga_config_start_index[y_cor] + fpga_config_depth[y_cor][x_cor] - 1

            line_to_print = '    lut_tile_' + str(y_cor) + '_' + str(x_cor) + '.io.configs_en := io.configs_en(' + str(_end_index) + ', ' + str(_start_index) + ')\n'
            fpga_tile_fp.write(line_to_print)

def generate_verilog_fpga_tile(fpga_route, fpga_config_depth, fpga_config_start_index, fpga_lut_tile, fpga_io_tile, x_size, y_size, num_io_ipin, num_io_opin, num_config_depth, const_node_count):

    # open_file_for_writing
    fpga_tile_filename = 'gen_src/fpga.v'
    fpga_tile_fp = open (fpga_tile_filename, 'w')

    if x_size == y_size:

        generate_verilog_fpga_header (fpga_tile_fp, num_io_ipin*x_size, num_io_opin*x_size, 32*(x_size+2), num_config_depth)
        generate_verilog_wires (fpga_tile_fp, fpga_route, const_node_count)
        generate_verilog_fpga_tile_declare (fpga_tile_fp, fpga_lut_tile, fpga_io_tile, x_size, y_size, fpga_config_depth, fpga_config_start_index)

        generate_verilog_lut_tile_ipin (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count)
        generate_verilog_lut_tile_opin (fpga_tile_fp, fpga_lut_tile, x_size, y_size)
        generate_verilog_lut_tile_chanxy (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count)
        generate_verilog_io_tile_ipin (fpga_tile_fp, fpga_io_tile, fpga_route)
        generate_verilog_io_tile_opin (fpga_tile_fp, fpga_io_tile)
        generate_verilog_io_tile_chanxy (fpga_tile_fp, fpga_io_tile, fpga_route)

    else:

        print 'WARNING: CHIP IS NOT IN SQUARE SHAPE'

    # close file
    fpga_tile_fp.write('endmodule\n')
    fpga_tile_fp.close()

#def generate_scala_fpga_tile(fpga_route, fpga_config_depth, fpga_config_start_index, fpga_lut_tile, fpga_io_tile, x_size, y_size, const_node_count):
#
#    # open file for writing
#    fpga_tile_filename = 'gen_src/fpga.scala'
#    fpga_tile_fp = open (fpga_tile_filename, 'w')
#
#    generate_fpga_tile_declare (fpga_tile_fp, fpga_lut_tile, fpga_io_tile, x_size, y_size)
#    generate_wires (fpga_tile_fp, fpga_route, const_node_count)
#    generate_fpga_tile_ff_en (fpga_tile_fp, x_size, y_size)
#    generate_lut_tile_ipin (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count)
#    generate_lut_tile_chanxy (fpga_tile_fp, fpga_lut_tile, fpga_route, x_size, y_size, const_node_count)
#    generate_fpga_configs_in (fpga_tile_fp, x_size, y_size)
#    generate_fpga_io_conn(fpga_tile_fp, fpga_io_tile, x_size, y_size)
#    generate_io_tile_chanxy (fpga_tile_fp, fpga_io_tile, fpga_route)
#    generate_io_tile_ipin (fpga_tile_fp, fpga_io_tile, fpga_route)
#    generate_io_tile_opin (fpga_tile_fp, fpga_io_tile)
#    generate_lut_tile_opin (fpga_tile_fp, fpga_lut_tile, x_size, y_size)
#    generate_tile_configs_en (fpga_tile_fp, fpga_config_depth, fpga_config_start_index, x_size, y_size)
#
#    # close file
#    fpga_tile_fp.write('\n}\n')
#    fpga_tile_fp.close()
