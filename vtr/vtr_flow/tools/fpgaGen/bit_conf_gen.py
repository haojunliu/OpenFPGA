import sys
import shlex
import math

import sbcbGen
import route_modules

def generate_bit_io_tile_chanxy_config(bit_config_fp, fpga_route, fpga_io_tile):

    #line_to_print = '    //IO CHANXY\n'
    line_to_print = ''
    bit_config_fp.write(line_to_print)

    for this_tile in fpga_io_tile:

        for i in range (0, this_tile.num_chanxy_out):

            _start_index = this_tile.chanxy_config_start_list[i]
            _end_index = this_tile.chanxy_config_start_list[i] + this_tile.chanxy_config_width_list[i] - 1

            line_to_print = 'out ' + str(this_tile.chanxy_out_list[i]) + ' ' + str(this_tile.y_cor) + ' ' + str(this_tile.x_cor)
            line_to_print = line_to_print + ' ' + str(_end_index) + ' ' + str(_start_index) + '\n'
            bit_config_fp.write(line_to_print)

            driver_list = fpga_route[this_tile.chanxy_out_list[i]].sup_r

            for j in range (0, len(driver_list)):
                route_num = driver_list[j]
                line_to_print = 'in ' + str(route_num) + ' ' + bin(j) + '\n'

                bit_config_fp.write(line_to_print)

def generate_bit_io_tile_ipin_config(bit_config_fp, fpga_route, fpga_io_tile):

    #line_to_print = '    //IO IPIN\n'
    line_to_print = ''
    bit_config_fp.write(line_to_print)

    for this_tile in fpga_io_tile:

        for i in range (0, this_tile.num_ipin):
            line_to_print = 'out ' + str(this_tile.ipin_list[i]) + ' ' + str(this_tile.y_cor) + ' ' + str(this_tile.x_cor)

            _start_index = this_tile.ipin_config_start_list[i]
            _end_index = this_tile.ipin_config_start_list[i] + this_tile.ipin_config_width_list[i] - 1

            line_to_print = line_to_print + ' ' + str(_end_index) + ' ' + str(_start_index) + '\n'

            bit_config_fp.write(line_to_print)

            driver_list = fpga_route[this_tile.ipin_list[i]].sup_r

            for j in range (0, len(driver_list)):
                route_num = driver_list[j]
                line_to_print = 'in ' + str(route_num) + ' ' + bin(j) + '\n'

                bit_config_fp.write(line_to_print)

def generate_bit_lut_tile_chanxy_config(bit_config_fp, fpga_route, fpga_lut_tile, x_size, y_size):

    #line_to_print = '    //LUT CHANXY\n'
    line_to_print = ''
    bit_config_fp.write(line_to_print)

    for y_cor in range (0, y_size):
        for x_cor in range (0, x_size):

            this_tile = fpga_lut_tile[y_cor][x_cor]

            for i in range (0, this_tile.num_chanxy_out):

                _start_index = this_tile.chanxy_config_start_list[i]
                _end_index = this_tile.chanxy_config_start_list[i] + this_tile.chanxy_config_width_list[i] - 1

                line_to_print = 'out ' + str(this_tile.chanxy_out_list[i]) + ' ' + str(y_cor+1) + ' ' + str(x_cor+1)
                line_to_print = line_to_print + ' ' + str(_end_index) + ' ' + str(_start_index) + '\n'
                bit_config_fp.write(line_to_print)

                driver_list = fpga_route[this_tile.chanxy_out_list[i]].sup_r

                for j in range (0, len(driver_list)):
                    route_num = driver_list[j]
                    line_to_print = 'in ' + str(route_num) + ' ' + bin(j) + '\n'

                    bit_config_fp.write(line_to_print)

def generate_bit_lut_tile_ipin_config(bit_config_fp, fpga_route, fpga_lut_tile, x_size, y_size):

    #line_to_print = '    //LUT IPIN\n'
    line_to_print = ''
    bit_config_fp.write(line_to_print)

    for y_cor in range (0, y_size):
        for x_cor in range (0, x_size):

            this_tile = fpga_lut_tile[y_cor][x_cor]

            _config_index = 0

            _start_index = _config_index
            _end_index = _config_index + this_tile.ipin_configs_width - 1

            for i in range (0, this_tile.num_ipin):
                line_to_print = 'out ' + str(this_tile.ipin_list[i]) + ' ' + str(y_cor+1) + ' ' + str(x_cor+1)
                line_to_print = line_to_print + ' ' + str(_end_index) + ' ' + str(_start_index) + '\n'
                bit_config_fp.write(line_to_print)

                driver_list = fpga_route[this_tile.ipin_list[i]].sup_r

                for j in range (0, len(driver_list)):
                    route_num = driver_list[j]
                    line_to_print = 'in ' + str(route_num) + ' ' + bin(j) + '\n'

                    bit_config_fp.write(line_to_print)

                _start_index = _start_index + this_tile.ipin_configs_width
                _end_index = _end_index + this_tile.ipin_configs_width

def generate_bit_config (fpga_route, fpga_lut_tile, fpga_io_tile, x_size, y_size):

    # open file for writing
    bit_config_filename = 'gen_bit_config/bit.config'
    bit_config_fp = open (bit_config_filename, 'w')

    line_to_print = 'NUMTRACKS: ' + str(len(fpga_route)) + '\n'
    bit_config_fp.write(line_to_print)

    generate_bit_lut_tile_ipin_config(bit_config_fp, fpga_route, fpga_lut_tile, x_size, y_size)
    generate_bit_io_tile_ipin_config(bit_config_fp, fpga_route, fpga_io_tile)
    generate_bit_lut_tile_chanxy_config(bit_config_fp, fpga_route, fpga_lut_tile, x_size, y_size)
    generate_bit_io_tile_chanxy_config(bit_config_fp, fpga_route, fpga_io_tile)

    # close file
    bit_config_fp.close()
