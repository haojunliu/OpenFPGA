import sys, os
import argparse
import math
import route_modules

import sbcbGen
import ioGen
import fpgaGen
import bit_conf_gen
import bit_frame

# FPGA Parameter Objects

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'FPGA Gen for VPR FPGA')

    arg_parser.add_argument('--num-luts', required=True)
    arg_parser.add_argument('--lut-size', required=True)
    arg_parser.add_argument('--lut-output', required=True)
    arg_parser.add_argument('--clb-size', required=True)
    arg_parser.add_argument('--num-ipin', required=True)
    arg_parser.add_argument('--x-size', required=True)
    arg_parser.add_argument('--y-size', required=True)
    arg_parser.add_argument('--route-dump', required=True)
    arg_parser.add_argument('--route', required=True)
    arg_parser.add_argument('--placement', required=True)
    arg_parser.add_argument('--net-file', required=True)
    arg_parser.add_argument('--abc', required=True)
    arg_parser.add_argument('--bitstream', required=True)

    args = arg_parser.parse_args()

    filename_route_dump = args.route_dump
    filename_route = args.route
    filename_abc = args.abc
    filename_net = args.net_file
    filename_place = args.placement
    filename_bitstream = args.bitstream

    NUM_LUTS = int(args.num_luts)
    LUT_SIZE = int(args.lut_size)
    LUT_OUTPUT = int(args.lut_output)
    CLB_SIZE = int(args.clb_size)
    NUM_IPIN = int(args.num_ipin)
    X_SIZE = int(args.x_size)
    Y_SIZE = int(args.y_size)

    # array for holding all fpga routing resources
    fpga_route = []
    node_count = init_fpga_route(filename_route_dump, fpga_route)

    # array for holding lut_tiles
    fpga_lut_tile = []
    fpga_config_depth = []
    fpga_config_max_depth = []
    fpga_config_start_index = []
    for i in range (1, Y_SIZE + 1):
        fpga_lut_tile.append([])
        for j in range (1, X_SIZE + 1):
            fpga_lut_tile[i-1].append(sbcbGen.sbcb_tile(j, i))

            # update num of configs bits
            fpga_lut_tile[i-1][j-1].num_lut_configs = int(1 << LUT_SIZE)*NUM_LUTS
            fpga_lut_tile[i-1][j-1].num_mux_configs = LUT_OUTPUT*NUM_LUTS

            _NUM_XBAR_INPUTS = NUM_IPIN + LUT_OUTPUT * NUM_LUTS
            _NUM_XBAR_PER_MUX_CONFIGS = int(math.floor(math.log(_NUM_XBAR_INPUTS - 0.000001, 2) + 1))
            fpga_lut_tile[i-1][j-1].num_xbar_configs = _NUM_XBAR_PER_MUX_CONFIGS * LUT_SIZE * NUM_LUTS

    # initialize config depth
    for i in range (0, Y_SIZE + 2):
        fpga_config_depth.append([])
        fpga_config_max_depth.append(0)
        fpga_config_start_index.append(0)
        for j in range (0, X_SIZE + 2):
            fpga_config_depth[i].append(0)

    # array for holding io_tiles, do it in edge_order
    fpga_io_tile = []
    for i in range (1, Y_SIZE + 1):
        fpga_io_tile.append(ioGen.io_tile(0, i))

    for i in range (1, Y_SIZE + 1):
        fpga_io_tile.append(ioGen.io_tile(X_SIZE + 1, i))

    for i in range (1, X_SIZE + 1):
        fpga_io_tile.append(ioGen.io_tile(i, 0))

    for i in range (1, X_SIZE + 1):
        fpga_io_tile.append(ioGen.io_tile(i, Y_SIZE + 1))

    # import node and structures
    print 'INFO: IMPORTING FPGA ROUTING DIAGRAM'
    route_modules.import_fpga_route(filename_route_dump, fpga_route, node_count)

    # generate lut, clb; we do this by parameters (gen_src/lut_tile_config.scala)
    lut_tile_config_filename = 'gen_src/lut_tile_config.scala'
    lut_tile_config_fp = open(lut_tile_config_filename, 'w')
    generate_lut_tile_configs_chisel_header(lut_tile_config_fp)
    generate_lut_tile_configs(lut_tile_config_fp, LUT_SIZE, LUT_OUTPUT, CLB_SIZE, NUM_IPIN)

    # generate sbcb
    print 'INFO: CONSTRUCTING SBCB TILE'
    sbcbGen.generate_sbcb(fpga_route, fpga_lut_tile, fpga_config_depth, lut_tile_config_fp, X_SIZE, Y_SIZE, node_count)
    lut_tile_config_fp.close()

    # generate io
    print 'INFO: CONSTRUCTING IO TILE'
    ioGen.generate_io(fpga_route, fpga_io_tile, fpga_config_depth, X_SIZE, Y_SIZE, node_count)

    # config depth processing
    process_config_depth(fpga_config_depth, fpga_config_max_depth, fpga_config_start_index)

    # generate fpga config depth by row
    fpga_config_depth_filename = 'gen_src/fpga_config_depth.config'
    fpga_config_depth_fp = open (fpga_config_depth_filename, 'w')
    total_config_depth = 0

    for i in range (0, Y_SIZE + 2):
        total_config_depth = total_config_depth + fpga_config_max_depth[i]
        line_to_write = str(fpga_config_max_depth[i]) + '\n'
        fpga_config_depth_fp.write ( line_to_write )

    fpga_config_depth_fp.close()

    # generate fpga config file
    # fpga_config_filename = 'gen_src/fpga_config.scala'
    # fpga_config_fp = open (fpga_config_filename, 'w')

    # generate_fpga_configs_chisel_header(fpga_config_fp)
    # generate_fpga_configs(fpga_config_fp, X_SIZE, Y_SIZE, fpga_io_tile[0].num_ipin, fpga_io_tile[0].num_opin, total_config_depth)

    # generate fpga global connection
    fpgaGen.generate_verilog_fpga_tile(fpga_route, fpga_config_depth, fpga_config_start_index, fpga_lut_tile, fpga_io_tile, X_SIZE, Y_SIZE, fpga_io_tile[0].num_ipin, fpga_io_tile[0].num_opin, total_config_depth, node_count)

    # generate configuration file format
    bit_conf_gen.generate_bit_config(fpga_route, fpga_lut_tile, fpga_io_tile, X_SIZE, Y_SIZE)

    # generate bitstream
    bf_array = []
    bit_frame.generate_bit_stream(bf_array, fpga_lut_tile, fpga_io_tile, fpga_route, X_SIZE, Y_SIZE, LUT_SIZE, NUM_LUTS, LUT_OUTPUT, NUM_IPIN, NUM_LUTS*LUT_OUTPUT, fpga_config_max_depth, filename_net, filename_place, filename_route, filename_abc, filename_bitstream)

def init_fpga_route(filename_route_dump, fpga_route):

    node_count = 0

    # open file for read
    route_f = open (filename_route_dump, 'r')

    line = route_f.readline()
    while len(line) != 0:

        if line.startswith('Node'):
            node_count = node_count + 1

        line = route_f.readline()

    #print 'Total number of routing resources is: ',
    #print node_count

    for i in range (0, node_count):
        fpga_route.append(route_modules.sbcb_route(route_modules.R_TYPE_EMPTY))

    return node_count

def generate_fpga_configs_chisel_header(fpga_config_fp):

    line_to_print = 'package fpga_components\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '{\n\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = 'import Chisel._\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = 'import scala.math._\n\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = 'object IOConstants { \n'
    fpga_config_fp.write(line_to_print)

def generate_lut_tile_configs_chisel_header(lut_tile_config_fp):

    line_to_print = 'package fpga_components\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '{\n\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = 'import Chisel._\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = 'import scala.math._\n\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = 'object LutConstants { \n'
    lut_tile_config_fp.write(line_to_print)

def generate_fpga_configs(fpga_config_fp, x_size, y_size, num_ipin, num_opin, total_config_depth):

    line_to_print = '    var VAR_NUM_FPGA_TOP_IN = ' + str(x_size*num_ipin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_TOP_OUT = ' + str(x_size*num_opin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_BOT_IN = ' + str(x_size*num_ipin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_BOT_OUT = ' + str(x_size*num_opin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_LEFT_IN = ' + str(y_size*num_ipin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_LEFT_OUT = ' + str(y_size*num_opin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_RIGHT_IN = ' + str(y_size*num_ipin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_RIGHT_OUT = ' + str(y_size*num_opin) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_CONFIGS_IN = ' + str(x_size*32) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_FPGA_CONFIGS_EN = ' + str(total_config_depth) + '\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '}\n'
    fpga_config_fp.write(line_to_print)

    line_to_print = '\n}\n'
    fpga_config_fp.write(line_to_print)

def generate_lut_tile_configs(lut_tile_config_fp, LUT_SIZE, LUT_OUTPUT, CLB_SIZE, NUM_IPIN):

    # LUT CONFIG
    line_to_print = '    // LUT CONFIG\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_INPUTS_PER_LUT = ' + str(LUT_SIZE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_OUTPUTS_PER_LUT = ' + str(LUT_OUTPUT) + '\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_CONFIGS_PER_LUT = ' + str(1<<LUT_SIZE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    VAR_NUM_MUXES_PER_LUT = 0
    if (LUT_SIZE == 6 and LUT_OUTPUT == 2):
        VAR_NUM_MUXES_PER_LUT = 3
        line_to_print = '    var VAR_NUM_MUXES_PER_LUT = 3\n'
        lut_tile_config_fp.write(line_to_print)
    else:
        VAR_NUM_MUXES_PER_LUT = 1
        line_to_print = '    var VAR_NUM_MUXES_PER_LUT = 1\n'
        lut_tile_config_fp.write(line_to_print)

    # CLB_CONFIG
    line_to_print = '    // CLB CONFIG\n'
    lut_tile_config_fp.write(line_to_print)

    VAR_NUM_CLB_IN = LUT_SIZE * CLB_SIZE
    line_to_print = '    var VAR_NUM_CLB_IN = ' + str(VAR_NUM_CLB_IN) + '\n'
    lut_tile_config_fp.write(line_to_print)

    VAR_NUM_CLB_OUT = LUT_OUTPUT * CLB_SIZE
    line_to_print = '    var VAR_NUM_CLB_OUT = ' + str(VAR_NUM_CLB_OUT) + '\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_NUM_LUTS_PER_CLB = ' + str(CLB_SIZE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    VAR_NUM_CLB_LUT_CONFIGS = (1<<LUT_SIZE) * CLB_SIZE
    line_to_print = '    var VAR_NUM_CLB_LUT_CONFIGS = ' + str(VAR_NUM_CLB_LUT_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    VAR_NUM_CLB_MUX_CONFIGS = 1 * CLB_SIZE
    line_to_print = '    var VAR_NUM_CLB_MUX_CONFIGS = ' + str(VAR_NUM_CLB_MUX_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    # currently we only use LUTs with one Mux
    TOTAL_MUX_CONFIGS = CLB_SIZE * VAR_NUM_MUXES_PER_LUT
    line_to_print = '    var VAR_TOTAL_MUX_CONFIGS = ' + str(TOTAL_MUX_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_IPIN_PER_TILE = NUM_IPIN
    line_to_print = '    var VAR_NUM_IPIN_PER_TILE = ' + str(NUM_IPIN_PER_TILE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_OPIN_PER_TILE = CLB_SIZE * LUT_OUTPUT
    line_to_print = '    var VAR_NUM_OPIN_PER_TILE = ' + str(NUM_OPIN_PER_TILE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_XBAR_INPUTS = NUM_IPIN + LUT_OUTPUT * CLB_SIZE
    line_to_print = '    var VAR_NUM_XBAR_INPUTS = ' + str(NUM_XBAR_INPUTS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_XBAR_OUTPUTS = LUT_SIZE * CLB_SIZE
    line_to_print = '    var VAR_NUM_XBAR_OUTPUTS = ' + str(NUM_XBAR_OUTPUTS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_XBAR_PER_MUX_CONFIGS = int(math.floor(math.log(NUM_XBAR_INPUTS - 0.000001, 2) + 1))
    line_to_print = '    var VAR_NUM_XBAR_PER_MUX_CONFIGS = ' + str(NUM_XBAR_PER_MUX_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_XBAR_CONFIGS = NUM_XBAR_PER_MUX_CONFIGS * NUM_XBAR_OUTPUTS
    line_to_print = '    var VAR_NUM_XBAR_CONFIGS = ' + str(NUM_XBAR_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    TOTAL_XBAR_CONFIGS = NUM_XBAR_CONFIGS
    line_to_print = '    var VAR_TOTAL_XBAR_CONFIGS = ' + str(TOTAL_XBAR_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

def process_config_depth(fpga_config_depth, fpga_config_max_depth, fpga_config_start_index):

    y_len = len(fpga_config_depth)
    x_len = len(fpga_config_depth[0])

    for i in range (0, y_len):
        fpga_config_max_depth[i] = 0
        for j in range (0, x_len):

            if fpga_config_depth[i][j] > fpga_config_max_depth[i]:
                 fpga_config_max_depth[i] = fpga_config_depth[i][j]

    fpga_config_start_index[0] = 0
    for i in range (1, len(fpga_config_max_depth)):
        fpga_config_start_index[i] = fpga_config_start_index[i-1] + fpga_config_max_depth[i-1]

if __name__ == "__main__":
     sys.exit(main())
