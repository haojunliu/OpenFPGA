import sys
import shlex
import math

import route_modules

class sbcb_tile (object):

    def __init__(self, p_x_cor, p_y_cor):
        self.tile_type = 'LUT'
        # var x_loc: Int = _
        self.x_cor = p_x_cor
        # var y_loc: Int = _
        self.y_cor = p_y_cor
        # var num_ipin: Int = _
        self.num_ipin = 0
        self.ipin_list = []
        self.ipin_input_width_list = []
        self.ipin_index_start_list = []
        self.ipin_configs_width = 0
        self.opin_list = []
        self.num_opin = 0
        self.num_chanxy_out = 0
        self.chanxy_out_list = []
        # num_chanxy_in
        self.num_chanxy_in = 0
        self.chanxy_out_input_width_list = []
        self.chanxy_out_index_start_list = []
        self.chanxy_config_width_list = []
        self.chanxy_config_start_list = []
        self.num_lut_configs = 0
        self.num_mux_configs = 0
        self.num_xbar_configs = 0
        self.num_ipin_configs = 0
        # num_chanxy_configs_start
        # num_chanxy_configs_end
        # num_chanxy_configs
        self.num_chanxy_configs_start = 0
        self.num_chanxy_configs_end = 0
        self.num_chanxy_configs = 0
        self.total_num_configs = 0
        # configs_depth
        self.configs_depth = 0

def print_sbcb_route(sbcb_route, route_id):

    print route_id,
    print sbcb_route.xlow,
    print sbcb_route.ylow,
    print sbcb_route.xhigh,
    print sbcb_route.yhigh,
    print sbcb_route.ptc,

    if sbcb_route.r_type == route_modules.R_TYPE_SINK:
        print 'SINK',
    elif sbcb_route.r_type == route_modules.R_TYPE_SOURCE:
        print 'SOURCE',
    elif sbcb_route.r_type == route_modules.R_TYPE_OPIN:
        print 'OPIN',
    elif sbcb_route.r_type == route_modules.R_TYPE_IPIN:
        print 'IPIN',
    elif sbcb_route.r_type == route_modules.R_TYPE_CHANX:
        print 'CHANX',
        print sbcb_route.r_dir,
    elif sbcb_route.r_type == route_modules.R_TYPE_CHANY:
        print 'CHANY',
        print sbcb_route.r_dir,

    print ''

def print_sbcb_route_sub(fpga_route, sbcb_route, route_id):

    print_sbcb_route(sbcb_route, route_id)

    print '    Sub'

    for i in range (0, len(sbcb_route.sub_r)):
        print '   ',
        print_sbcb_route(fpga_route[sbcb_route.sub_r[i]], sbcb_route.sub_r[i])

def print_sbcb_route_sup(fpga_route, sbcb_route, route_id):

    print_sbcb_route(sbcb_route, route_id)

    print '    Sup'

    for i in range (0, len(sbcb_route.sup_r)):
        print '   ',
        print_sbcb_route(fpga_route[sbcb_route.sup_r[i]], sbcb_route.sup_r[i])

def generate_lut_tile_comm_configs(lut_tile_config_fp, fpga_lut_tile):

    # generate comm lut tile configs
    NUM_IPIN = fpga_lut_tile.num_ipin
    NUM_CHANXY_OUT = fpga_lut_tile.num_chanxy_out
    IPIN_WIDTH = fpga_lut_tile.ipin_input_width_list[0]

    IPIN_INPUT_WIDTH = IPIN_WIDTH
    line_to_print = '    var VAR_IPIN_INPUT_WIDTH = ' + str(IPIN_INPUT_WIDTH) + '\n'
    lut_tile_config_fp.write(line_to_print)

    IPIN_CONFIG_WIDTH = int(math.floor(math.log(IPIN_INPUT_WIDTH - 0.000001, 2) + 1))
    line_to_print = '    var VAR_IPIN_CONFIG_WIDTH = ' + str(IPIN_CONFIG_WIDTH) + '\n'
    lut_tile_config_fp.write(line_to_print)

    NUM_CHANXY_PER_TILE = NUM_CHANXY_OUT
    line_to_print = '    var VAR_NUM_CHANXY_PER_TILE = ' + str(NUM_CHANXY_PER_TILE) + '\n'
    lut_tile_config_fp.write(line_to_print)

    LAST_CHANXY_IDX = NUM_CHANXY_OUT - 1

    TOTAL_CHANXY_INPUT = fpga_lut_tile.chanxy_out_index_start_list[LAST_CHANXY_IDX] + fpga_lut_tile.chanxy_out_input_width_list[LAST_CHANXY_IDX]

    line_to_print = '    var TOTAL_CHANXY_IN = ' + str(TOTAL_CHANXY_INPUT) + '\n'
    lut_tile_config_fp.write(line_to_print)

    # array for width and config
    line_to_print = '    var VAR_CHANXY_INPUT_WIDTH_ARR = Array('
    for i in range (0, NUM_CHANXY_OUT):
        line_to_print = line_to_print + str(fpga_lut_tile.chanxy_out_input_width_list[i])

        if i != LAST_CHANXY_IDX:
            line_to_print = line_to_print + ','
        else:
            line_to_print = line_to_print + ')\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_CHANXY_CONFIG_WIDTH_ARR = Array('
    for i in range (0, NUM_CHANXY_OUT):
        line_to_print = line_to_print + str(fpga_lut_tile.chanxy_config_width_list[i])

        if i != LAST_CHANXY_IDX:
            line_to_print = line_to_print + ','
        else:
            line_to_print = line_to_print + ')\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_CHANXY_INPUT_START_ARR = Array('
    for i in range (0, NUM_CHANXY_OUT):
        line_to_print = line_to_print + str(fpga_lut_tile.chanxy_out_index_start_list[i])

        if i != LAST_CHANXY_IDX:
            line_to_print = line_to_print + ','
        else:
            line_to_print = line_to_print + ')\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_CHANXY_CONFIG_START_ARR = Array('
    for i in range (0, NUM_CHANXY_OUT):
        line_to_print = line_to_print + str(fpga_lut_tile.chanxy_config_start_list[i])

        if i != LAST_CHANXY_IDX:
            line_to_print = line_to_print + ','
        else:
            line_to_print = line_to_print + ')\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_LUT_CONFIGS_START = 0\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_LUT_CONFIGS_END = VAR_LUT_CONFIGS_START + VAR_NUM_CLB_LUT_CONFIGS - 1\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_MUX_CONFIGS_START = VAR_NUM_CLB_LUT_CONFIGS\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_MUX_CONFIGS_END = VAR_MUX_CONFIGS_START + VAR_TOTAL_MUX_CONFIGS - 1\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_XBAR_CONFIGS_START = VAR_MUX_CONFIGS_END + 1\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_XBAR_CONFIGS_END = VAR_XBAR_CONFIGS_START + VAR_TOTAL_XBAR_CONFIGS - 1\n'
    lut_tile_config_fp.write(line_to_print)

    TOTAL_IPIN_CONFIGS = NUM_IPIN * IPIN_CONFIG_WIDTH
    line_to_print = '    var VAR_TOTAL_IPIN_CONFIGS = ' + str(TOTAL_IPIN_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_SBCB_IPIN_CONFIGS_START = VAR_XBAR_CONFIGS_END + 1\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_SBCB_IPIN_CONFIGS_END = VAR_SBCB_IPIN_CONFIGS_START + VAR_TOTAL_IPIN_CONFIGS - 1\n'
    lut_tile_config_fp.write(line_to_print)

    TOTAL_CHANXY_CONFIGS = fpga_lut_tile.chanxy_config_start_list[LAST_CHANXY_IDX] + fpga_lut_tile.chanxy_config_width_list[LAST_CHANXY_IDX]
    line_to_print = '    var VAR_TOTAL_CHANXY_CONFIGS = ' + str(TOTAL_CHANXY_CONFIGS) + '\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_SBCB_CHANXY_CONFIGS_START = VAR_SBCB_IPIN_CONFIGS_END + 1\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_SBCB_CHANXY_CONFIGS_END = VAR_SBCB_CHANXY_CONFIGS_START + VAR_TOTAL_CHANXY_CONFIGS - 1\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '    var VAR_TOTAL_NUM_CONFIGS = VAR_SBCB_CHANXY_CONFIGS_END + 1\n'
    lut_tile_config_fp.write(line_to_print)
    line_to_print = '    var VAR_CONFIGS_FILE_DEPTH = 1 + (VAR_TOTAL_NUM_CONFIGS/32)\n'
    lut_tile_config_fp.write(line_to_print)

    line_to_print = '}\n\n}\n\n'
    lut_tile_config_fp.write(line_to_print)

def generate_lut_tile_edge_configs(lut_tile_config_fp, fpga_route, this_tile, const_node_count):

    # scala parameters
    line_to_write = 'Y_COR: ' + str(this_tile.y_cor) + ' X_COR: ' + str(this_tile.x_cor)
    line_to_write = line_to_write + ' IPIN: ' + str(this_tile.num_ipin) + ' OPIN: ' + str(this_tile.num_opin) + ' CHANXY: ' + str(this_tile.num_chanxy_out) + ' CHANXY_IN: ' + str(this_tile.num_chanxy_in) + '\n'
    lut_tile_config_fp.write(line_to_write)

    line_to_write = 'XY_CONFIGS: ' + str(this_tile.num_chanxy_configs) + ' XY_CONFIGS_START: ' + str(this_tile.num_chanxy_configs_start) + ' XY_CONFIGS_END: ' + str(this_tile.num_chanxy_configs_end) + ' CONFIGS_DPETH: ' + str(this_tile.configs_depth) + '\n'
    lut_tile_config_fp.write(line_to_write)

    # vector parameters
    line_to_write = 'CHANXY_INPUT_WIDTH: '
    for j in range (0, this_tile.num_chanxy_out):
        line_to_write = line_to_write + str(this_tile.chanxy_out_input_width_list[j]) + ' '
    line_to_write = line_to_write + '\n'
    lut_tile_config_fp.write(line_to_write)

    line_to_write = 'CHANXY_INDEX_START: '
    for j in range (0, this_tile.num_chanxy_out):
        line_to_write = line_to_write + str(this_tile.chanxy_out_index_start_list[j]) + ' '
    line_to_write = line_to_write + '\n'
    lut_tile_config_fp.write(line_to_write)

    line_to_write = 'CHANXY_CONFIG_WIDTH: '
    for j in range (0, this_tile.num_chanxy_out):
        line_to_write = line_to_write + str(this_tile.chanxy_config_width_list[j]) + ' '
    line_to_write = line_to_write + '\n'
    lut_tile_config_fp.write(line_to_write)

    line_to_write = 'CHANXY_CONFIG_START: '
    for j in range (0, this_tile.num_chanxy_out):
        line_to_write = line_to_write + str(this_tile.chanxy_config_start_list[j]) + ' '
    line_to_write = line_to_write + '\n'
    lut_tile_config_fp.write(line_to_write)

    line_to_write = '\n'
    lut_tile_config_fp.write(line_to_write)

def generate_lut_and_sbcb_edge_tile (fpga_route, fpga_lut_tile, x_size, y_size, const_node_count):

    lut_tile_config_filename = 'gen_src/lut_tile_scala.config'
    lut_tile_config_fp = open (lut_tile_config_filename, 'w')

    for y_cor in range (1, y_size + 1):
        x_cor = 1

        generate_lut_tile_edge_configs (lut_tile_config_fp, fpga_route, fpga_lut_tile[y_cor-1][x_cor-1], const_node_count)

    for y_cor in range (1, y_size + 1):
        x_cor = x_size

        generate_lut_tile_edge_configs (lut_tile_config_fp, fpga_route, fpga_lut_tile[y_cor-1][x_cor-1], const_node_count)

    for x_cor in range (2, x_size):
        y_cor = 1

        generate_lut_tile_edge_configs (lut_tile_config_fp, fpga_route, fpga_lut_tile[y_cor-1][x_cor-1], const_node_count)

    for x_cor in range (2, x_size):
        y_cor = y_size

        generate_lut_tile_edge_configs (lut_tile_config_fp, fpga_route, fpga_lut_tile[y_cor-1][x_cor-1], const_node_count)

    lut_tile_config_fp.close()

def test_common_sbcb(fpga_route, fpga_lut_tile, fpga_config_depth, x_size, y_size, const_node_count):

    lut_tile_config_filename = 'gen_src/lut_tile_scala_comm.config.txt'
    lut_tile_config_fp = open (lut_tile_config_filename, 'w')

    for y_cor in range (2, y_size):
        for x_cor in range (2, x_size):

            this_tile = fpga_lut_tile[y_cor-1][x_cor-1]

            line_to_print = 'This Tile ' + str(y_cor) + ' ' + str(x_cor) + '\n'

            for i in range (0, len(this_tile.chanxy_out_input_width_list)):
                line_to_print = line_to_print + str(this_tile.chanxy_out_input_width_list[i]) + ' '

            line_to_print = line_to_print + '\n'

            lut_tile_config_fp.write(line_to_print)

    lut_tile_config_fp.close()

def generate_sbcb(fpga_route, fpga_lut_tile, fpga_config_depth, lut_tile_config_fp, x_size, y_size, const_node_count):

    for x_cor in range (1, x_size + 1):
        for y_cor in range (1, y_size + 1):

            # count IPIN
            for i in range (0, const_node_count):
                if fpga_route[i].xlow == x_cor and fpga_route[i].ylow == y_cor and fpga_route[i].r_type == route_modules.R_TYPE_IPIN:
                    if len(fpga_route[i].sup_r) != 0:
                        fpga_lut_tile[y_cor-1][x_cor-1].num_ipin = fpga_lut_tile[y_cor-1][x_cor-1].num_ipin + 1
                        fpga_lut_tile[y_cor-1][x_cor-1].ipin_list.append(i)
                        fpga_lut_tile[y_cor-1][x_cor-1].ipin_input_width_list.append(len(fpga_route[i].sup_r))
                        fpga_route[i].tile_ptr = fpga_lut_tile[y_cor-1][x_cor-1]

            _IPIN_INPUT_WIDTH = fpga_lut_tile[y_cor-1][x_cor-1].ipin_input_width_list[0]
            _IPIN_CONFIG_WIDTH = int(math.floor(math.log(_IPIN_INPUT_WIDTH - 0.00001, 2) + 1))
            fpga_lut_tile[y_cor-1][x_cor-1].ipin_configs_width = _IPIN_CONFIG_WIDTH
            fpga_lut_tile[y_cor-1][x_cor-1].num_ipin_configs = _IPIN_CONFIG_WIDTH * fpga_lut_tile[y_cor-1][x_cor-1].num_ipin

            # org IPIN start index
            fpga_lut_tile[y_cor-1][x_cor-1].ipin_index_start_list.append(0)

            for i in range (1, len(fpga_lut_tile[y_cor-1][x_cor-1].ipin_input_width_list)):
                fpga_lut_tile[y_cor-1][x_cor-1].ipin_index_start_list.append( fpga_lut_tile[y_cor-1][x_cor-1].ipin_index_start_list[i-1] + fpga_lut_tile[y_cor-1][x_cor-1].ipin_input_width_list[i-1] )

            # count OPIN
            for i in range (0, const_node_count):
                if fpga_route[i].xlow == x_cor and fpga_route[i].ylow == y_cor and fpga_route[i].r_type == route_modules.R_TYPE_OPIN:
                    fpga_lut_tile[y_cor-1][x_cor-1].num_opin = fpga_lut_tile[y_cor-1][x_cor-1].num_opin + 1
                    fpga_lut_tile[y_cor-1][x_cor-1].opin_list.append(i)

            # count CHANXY out
            for i in range (0, const_node_count):
                if (fpga_route[i].xlow == x_cor and fpga_route[i].ylow == y_cor) and (fpga_route[i].xhigh == x_cor and fpga_route[i].yhigh == y_cor):
                    if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
                        fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out + 1
                        fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_list.append(i)
                        fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))
                        fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in + len(fpga_route[i].sup_r)

                        config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                        fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_width_list.append(config_width)

                        fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs + config_width
                        fpga_route[i].tile_ptr = fpga_lut_tile[y_cor-1][x_cor-1]

                elif (fpga_route[i].xlow == x_cor and fpga_route[i].ylow == y_cor):
                    if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
                        if fpga_route[i].r_dir == 'INC':
                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out + 1
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_list.append(i)
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))
                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in + len(fpga_route[i].sup_r)
                            config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_width_list.append(config_width)

                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs + config_width
                            fpga_route[i].tile_ptr = fpga_lut_tile[y_cor-1][x_cor-1]

                elif (fpga_route[i].xhigh == x_cor and fpga_route[i].yhigh == y_cor):
                    if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
                        if fpga_route[i].r_dir == 'DEC':
                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_out + 1
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_list.append(i)
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))
                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_in + len(fpga_route[i].sup_r)

                            config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_width_list.append(config_width)

                            fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs = fpga_lut_tile[y_cor-1][x_cor-1].num_chanxy_configs + config_width
                            fpga_route[i].tile_ptr = fpga_lut_tile[y_cor-1][x_cor-1]

            _this_tile = fpga_lut_tile[y_cor-1][x_cor-1]
            _this_tile.num_chanxy_configs_start = _this_tile.num_lut_configs + _this_tile.num_mux_configs + _this_tile.num_xbar_configs + _this_tile.num_ipin_configs
            _this_tile.num_chanxy_configs_end = _this_tile.num_chanxy_configs_start + _this_tile.num_chanxy_configs - 1
            _this_tile.total_num_configs = _this_tile.num_chanxy_configs_end + 1

            _this_tile.configs_depth = int(math.ceil((_this_tile.total_num_configs)/32.00))
            fpga_config_depth[y_cor][x_cor] = int(math.ceil((_this_tile.total_num_configs)/32.00))

            # org CHANXY start index
            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_index_start_list.append(0)
            fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_start_list.append(0)

            for i in range (1, len(fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_input_width_list)):
                fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_index_start_list.append( fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_index_start_list[i-1] + fpga_lut_tile[y_cor-1][x_cor-1].chanxy_out_input_width_list[i-1] )

                fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_start_list.append( fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_start_list[i-1] + fpga_lut_tile[y_cor-1][x_cor-1].chanxy_config_width_list[i-1] )


    generate_lut_tile_comm_configs(lut_tile_config_fp, fpga_lut_tile[2][2])

    # generate edge lut tile configs
    generate_lut_and_sbcb_edge_tile (fpga_route, fpga_lut_tile, x_size, y_size, const_node_count)

    test_common_sbcb(fpga_route, fpga_lut_tile, fpga_config_depth, x_size, y_size, const_node_count)
