import sys
import shlex
import math

import route_modules

class io_tile (object):

    def __init__(self, p_x_cor, p_y_cor):
        self.tile_type = 'IO'
        # var x_loc: Int = _
        self.x_cor = p_x_cor
        # var y_loc: Int = _
        self.y_cor = p_y_cor
        # var num_ipin: Int = _
        self.num_ipin = 0
        # var num_ipin_in: Int = _
        self.num_ipin_in = 0
        self.ipin_list = []
        # ipin_input_width_list
        # ipin_index_start_list
        # ipin_config_width_list
        # ipin_config_start_list
        self.ipin_input_width_list = []
        self.ipin_index_start_list = []
        self.ipin_config_width_list = []
        self.ipin_config_start_list = []
        self.ipin_configs_width = 0
        self.opin_list = []
        # num_opin
        self.num_opin = 0
        # num_chanxy_out
        self.num_chanxy_out = 0
        self.chanxy_out_list = []
        # num_chanxy_in
        self.num_chanxy_in = 0
        # chanxy_out_input_width_list
        # chanxy_out_index_start_list
        # chanxy_config_width_list
        # chanxy_config_start_list
        self.chanxy_out_input_width_list = []
        self.chanxy_out_index_start_list = []
        self.chanxy_config_width_list = []
        self.chanxy_config_start_list = []
        # num_ipin_configs
        self.num_ipin_configs = 0
        # num_chanxy_configs_start
        # num_chanxy_configs_end
        # num_chanxy_configs
        self.num_chanxy_configs_start = 0
        self.num_chanxy_configs_end = 0
        self.num_chanxy_configs = 0
        # configs_depth
        self.configs_depth = 0

def print_io_route(io_route, route_id):

    print route_id,
    print io_route.xlow,
    print io_route.ylow,
    print io_route.xhigh,
    print io_route.yhigh,
    print io_route.ptc,

    if io_route.r_type == route_modules.R_TYPE_SINK:
        print 'SINK',
    elif io_route.r_type == route_modules.R_TYPE_SOURCE:
        print 'SOURCE',
    elif io_route.r_type == route_modules.R_TYPE_OPIN:
        print 'OPIN',
    elif io_route.r_type == route_modules.R_TYPE_IPIN:
        print 'IPIN',
    elif io_route.r_type == route_modules.R_TYPE_CHANX:
        print 'CHANX',
        print io_route.r_dir,
    elif io_route.r_type == route_modules.R_TYPE_CHANY:
        print 'CHANY',
        print io_route.r_dir,

    print ''

def print_io_route_sub(fpga_route, io_route, route_id):

    print_io_route(io_route, route_id)

    print '    Sub'

    for i in range (0, len(io_route.sub_r)):
        print '   ',
        print_io_route(fpga_route[io_route.sub_r[i]], io_route.sub_r[i])

def print_io_route_sup(fpga_route, io_route, route_id):

    print_io_route(io_route, route_id)

    print '    Sup'

    for i in range (0, len(io_route.sup_r)):
        print '   ',
        print_io_route(fpga_route[io_route.sup_r[i]], io_route.sup_r[i])

def print_io_config(fpga_route, fpga_io_tile, x_size, y_size, const_node_count):

    io_tile_scala_filename = 'gen_src/io_tile_scala.config'
    io_tile_scala_fp = open (io_tile_scala_filename, 'w')

    for i in range (0, len(fpga_io_tile)):

        # scala parameters
        line_to_write = 'Y_COR: ' + str(fpga_io_tile[i].y_cor) + ' X_COR: ' + str(fpga_io_tile[i].x_cor)
        line_to_write = line_to_write + ' IPIN: ' + str(fpga_io_tile[i].num_ipin) + ' OPIN: ' + str(fpga_io_tile[i].num_opin) + ' CHANXY: ' + str(fpga_io_tile[i].num_chanxy_out) + ' IPIN_IN: ' + str(fpga_io_tile[i].num_ipin_in) + ' CHANXY_IN: ' + str(fpga_io_tile[i].num_chanxy_in) + '\n'
        io_tile_scala_fp.write(line_to_write)

        line_to_write = 'IPIN_CONFIGS: ' + str(fpga_io_tile[i].num_ipin_configs) + ' XY_CONFIGS: ' + str(fpga_io_tile[i].num_chanxy_configs) + ' XY_CONFIGS_START: ' + str(fpga_io_tile[i].num_chanxy_configs_start) + ' XY_CONFIGS_END: ' + str(fpga_io_tile[i].num_chanxy_configs_end) + ' CONFIGS_DPETH: ' + str(fpga_io_tile[i].configs_depth) + '\n'
        io_tile_scala_fp.write(line_to_write)

        # vector parameters
        line_to_write = 'IPIN_INPUT_WIDTH: '
        for j in range (0, fpga_io_tile[i].num_ipin):
            line_to_write = line_to_write + str(fpga_io_tile[i].ipin_input_width_list[j]) + ' '
        line_to_write = line_to_write + '\n'
        io_tile_scala_fp.write(line_to_write)

        line_to_write = 'IPIN_INDEX_START: '
        for j in range (0, fpga_io_tile[i].num_ipin):
            line_to_write = line_to_write + str(fpga_io_tile[i].ipin_index_start_list[j]) + ' '
        line_to_write = line_to_write + '\n'
        io_tile_scala_fp.write(line_to_write)

        line_to_write = 'IPIN_CONFIG_WIDTH: '
        for j in range (0, fpga_io_tile[i].num_ipin):
            line_to_write = line_to_write + str(fpga_io_tile[i].ipin_config_width_list[j]) + ' '
        line_to_write = line_to_write + '\n'
        io_tile_scala_fp.write(line_to_write)

        line_to_write = 'IPIN_CONFIG_START: '
        for j in range (0, fpga_io_tile[i].num_ipin):
            line_to_write = line_to_write + str(fpga_io_tile[i].ipin_config_start_list[j]) + ' '
        line_to_write = line_to_write + '\n'
        io_tile_scala_fp.write(line_to_write)

        if fpga_io_tile[i].num_chanxy_out != 0:

            line_to_write = 'CHANXY_INPUT_WIDTH: '
            for j in range (0, fpga_io_tile[i].num_chanxy_out):
                line_to_write = line_to_write + str(fpga_io_tile[i].chanxy_out_input_width_list[j]) + ' '
            line_to_write = line_to_write + '\n'
            io_tile_scala_fp.write(line_to_write)

            line_to_write = 'CHANXY_INDEX_START: '
            for j in range (0, fpga_io_tile[i].num_chanxy_out):
                line_to_write = line_to_write + str(fpga_io_tile[i].chanxy_out_index_start_list[j]) + ' '
            line_to_write = line_to_write + '\n'
            io_tile_scala_fp.write(line_to_write)

            line_to_write = 'CHANXY_CONFIG_WIDTH: '
            for j in range (0, fpga_io_tile[i].num_chanxy_out):
                line_to_write = line_to_write + str(fpga_io_tile[i].chanxy_config_width_list[j]) + ' '
            line_to_write = line_to_write + '\n'
            io_tile_scala_fp.write(line_to_write)

            line_to_write = 'CHANXY_CONFIG_START: '
            for j in range (0, fpga_io_tile[i].num_chanxy_out):
                line_to_write = line_to_write + str(fpga_io_tile[i].chanxy_config_start_list[j]) + ' '
            line_to_write = line_to_write + '\n'
            io_tile_scala_fp.write(line_to_write)

        io_tile_scala_fp.write('\n')

    io_tile_scala_fp.close()

def generate_io_tile(fpga_route, this_tile, x_loc, y_loc, const_node_count):

    # count IPIN
    for i in range (0, const_node_count):
        if fpga_route[i].xlow == x_loc and fpga_route[i].ylow == y_loc and fpga_route[i].r_type == route_modules.R_TYPE_IPIN:
            if len(fpga_route[i].sup_r) != 0:
                this_tile.num_ipin = this_tile.num_ipin + 1
                this_tile.ipin_list.append(i)
                this_tile.ipin_input_width_list.append(len(fpga_route[i].sup_r))
                this_tile.num_ipin_in = this_tile.num_ipin_in + len(fpga_route[i].sup_r)

                config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                this_tile.ipin_configs_width = config_width
                this_tile.num_ipin_configs = this_tile.num_ipin_configs + config_width
                this_tile.ipin_config_width_list.append(config_width)

                fpga_route[i].tile_ptr = this_tile

    # count IPIN start index
    this_tile.ipin_index_start_list.append(0)
    this_tile.ipin_config_start_list.append(0)

    # ipin index
    i = 0

    for i in range (1, this_tile.num_ipin):
        this_tile.ipin_index_start_list.append ( this_tile.ipin_index_start_list[i-1] + this_tile.ipin_input_width_list[i-1] )
        this_tile.ipin_config_start_list.append ( this_tile.ipin_config_start_list[i-1] + this_tile.ipin_config_width_list[i-1] )

    this_tile.num_ipin_in = this_tile.ipin_index_start_list[i] + this_tile.ipin_input_width_list[i]
    this_tile.num_ipin_configs = this_tile.ipin_config_start_list[i] + this_tile.ipin_config_width_list[i]

    this_tile.num_ipin_configs = this_tile.ipin_configs_width * this_tile.num_ipin

    # count OPIN
    for i in range (0, const_node_count):
        if fpga_route[i].xlow == x_loc and fpga_route[i].ylow == y_loc and fpga_route[i].r_type == route_modules.R_TYPE_OPIN:
            this_tile.num_opin = this_tile.num_opin + 1
            this_tile.opin_list.append(i)

    # count CHANXY out
    for i in range (0, const_node_count):
        if (fpga_route[i].xlow == x_loc and fpga_route[i].ylow == y_loc) and (fpga_route[i].xhigh == x_loc and fpga_route[i].yhigh == y_loc):
            if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:

                this_tile.num_chanxy_out = this_tile.num_chanxy_out + 1
                this_tile.num_chanxy_in = this_tile.num_chanxy_in + len(fpga_route[i].sup_r)
                this_tile.chanxy_out_list.append(i)
                this_tile.chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))

                config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                this_tile.chanxy_config_width_list.append(config_width)

                fpga_route[i].tile_ptr = this_tile


        elif (fpga_route[i].xlow == x_loc and fpga_route[i].ylow == y_loc):
            if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
                if fpga_route[i].r_dir == 'INC':
                    this_tile.num_chanxy_out = this_tile.num_chanxy_out + 1
                    this_tile.num_chanxy_in = this_tile.num_chanxy_in + len(fpga_route[i].sup_r)
                    this_tile.chanxy_out_list.append(i)
                    this_tile.chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))

                    config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                    this_tile.chanxy_config_width_list.append(config_width)

                    fpga_route[i].tile_ptr = this_tile

        elif (fpga_route[i].xhigh == x_loc and fpga_route[i].yhigh == y_loc):
            if fpga_route[i].r_type == route_modules.R_TYPE_CHANX or fpga_route[i].r_type == route_modules.R_TYPE_CHANY:
                if fpga_route[i].r_dir == 'DEC':
                    this_tile.num_chanxy_out = this_tile.num_chanxy_out + 1
                    this_tile.num_chanxy_in = this_tile.num_chanxy_in + len(fpga_route[i].sup_r)
                    this_tile.chanxy_out_list.append(i)
                    this_tile.chanxy_out_input_width_list.append(len(fpga_route[i].sup_r))

                    config_width = int(math.floor(math.log(len(fpga_route[i].sup_r) - 0.000001, 2) + 1))
                    this_tile.chanxy_config_width_list.append(config_width)

                    fpga_route[i].tile_ptr = this_tile

    if this_tile.num_chanxy_out == 0:

        this_tile.num_chanxy_in = 0
        this_tile.num_chanxy_configs = 0

        this_tile.configs_depth = int(math.ceil((this_tile.num_ipin_configs)/32.00))

    else:

        # org CHANXY start index
        this_tile.chanxy_out_index_start_list.append(0)
        this_tile.chanxy_config_start_list.append(0)

        for i in range (1, this_tile.num_chanxy_out):
            this_tile.chanxy_out_index_start_list.append( this_tile.chanxy_out_index_start_list[i-1] + this_tile.chanxy_out_input_width_list[i-1] )
            this_tile.chanxy_config_start_list.append( this_tile.chanxy_config_start_list[i-1] + this_tile.chanxy_config_width_list[i-1] )

        this_tile.num_chanxy_in = this_tile.chanxy_out_index_start_list[i] + this_tile.chanxy_out_input_width_list[i]
        this_tile.num_chanxy_configs = this_tile.chanxy_config_start_list[i] + this_tile.chanxy_config_width_list[i]

        this_tile.num_chanxy_configs_start = this_tile.num_ipin_configs
        this_tile.num_chanxy_configs_end = this_tile.num_chanxy_configs_start + this_tile.num_chanxy_configs - 1

        # calculate configs depth
        this_tile.configs_depth = int(math.ceil((this_tile.num_chanxy_configs_end + 1.00)/32.00))

def generate_io(fpga_route, fpga_io_tile, fpga_config_depth, x_size, y_size, const_node_count):

    # left
    for y_cor in range (1, y_size + 1):
        this_tile = 0
        x_cor = 0
        for i in range (0, len(fpga_io_tile)):
            if fpga_io_tile[i].x_cor == 0 and fpga_io_tile[i].y_cor == y_cor:
                this_tile = fpga_io_tile[i]

                if this_tile == 0:
                    print 'ERROR: IO TILE NOT FOUND'

                generate_io_tile(fpga_route, this_tile, 0, y_cor, const_node_count)
                fpga_config_depth[y_cor][x_cor] = this_tile.configs_depth

    # right
    for y_cor in range (1, y_size + 1):
        this_tile = 0
        x_cor = x_size + 1
        for i in range (0, len(fpga_io_tile)):
            if fpga_io_tile[i].x_cor == (x_size + 1) and fpga_io_tile[i].y_cor == y_cor:
                this_tile = fpga_io_tile[i]

                if this_tile == 0:
                    print 'ERROR: IO TILE NOT FOUND'

                generate_io_tile(fpga_route, this_tile, x_size + 1, y_cor, const_node_count)
                fpga_config_depth[y_cor][x_cor] = this_tile.configs_depth

    # bottom
    for x_cor in range (1, x_size + 1):
        this_tile = 0
        y_cor = 0
        for i in range (0, len(fpga_io_tile)):
            if fpga_io_tile[i].x_cor == x_cor and fpga_io_tile[i].y_cor == 0:
                this_tile = fpga_io_tile[i]

                if this_tile == 0:
                    print 'ERROR: IO TILE NOT FOUND'

                generate_io_tile(fpga_route, this_tile, x_cor, 0, const_node_count)
                fpga_config_depth[y_cor][x_cor] = this_tile.configs_depth

    # up
    for x_cor in range (1, x_size + 1):
        this_tile = 0
        y_cor = y_size + 1
        for i in range (0, len(fpga_io_tile)):
            if fpga_io_tile[i].x_cor == x_cor and fpga_io_tile[i].y_cor == (y_size + 1):
                this_tile = fpga_io_tile[i]

                if this_tile == 0:
                    print 'ERROR: IO TILE NOT FOUND'

                generate_io_tile(fpga_route, this_tile, x_cor, y_size + 1, const_node_count)
                fpga_config_depth[y_cor][x_cor] = this_tile.configs_depth

    print_io_config(fpga_route, fpga_io_tile, x_size, y_size, const_node_count)
