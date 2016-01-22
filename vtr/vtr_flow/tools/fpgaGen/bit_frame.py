import sys
import shlex
import math
import bitgen_lut
import ff_xbar_gen
import ipin_chanxy_bitgen

FRAME_TYPE_LUT = 1
FRAME_TYPE_MEM = 2
FRAME_TYPE_MULT = 3
FRAME_TYPE_IO = 4
FRAME_TYPE_EMPTY = 5

class bit_frame(object):

    def __init__(self, p_x_loc, p_y_loc):
        self.x_loc = p_x_loc
        self.y_loc = p_y_loc
        self.frame_type = FRAME_TYPE_EMPTY
        self.name = ''
        self.num_lut_configs = 0
        self.num_mux_configs = 0
        self.num_xbar_configs = 0
        self.num_ipin_configs = 0
        self.num_chanxy_configs = 0
        self.total_number_configs = 0
        self.total_config_layer = 0
        self.lut_config = []
        self.sub_block_name = []
        self.mux_config = []
        self.xbar_config = []
        self.ipin_config = []
        self.chanxy_config = []
        self.all_config = []

def combine_all_config(bf_array, X_SIZE, Y_SIZE):

    for i in range (0, Y_SIZE + 2):
        for j in range (0, X_SIZE + 2):

            this_frame = bf_array[i][j]

            if this_frame.frame_type == FRAME_TYPE_LUT:

                this_frame.total_number_configs = this_frame.num_lut_configs + this_frame.num_mux_configs + this_frame.num_xbar_configs + this_frame.num_ipin_configs + this_frame.num_chanxy_configs
                this_frame.total_config_layer = int(math.ceil(this_frame.total_number_configs/32.00))

                #init all_config
                for k in range (0, this_frame.total_config_layer):
                    for x in range (0, 32):
                        this_frame.all_config.append(0)

                all_config_index = 0

                for k in range (0, this_frame.num_lut_configs):
                    this_frame.all_config[all_config_index] = this_frame.lut_config[k]
                    all_config_index = all_config_index + 1

                for k in range (0, this_frame.num_mux_configs):
                    this_frame.all_config[all_config_index] = this_frame.mux_config[k]
                    all_config_index = all_config_index + 1

                for k in range (0, this_frame.num_xbar_configs):
                    this_frame.all_config[all_config_index] = this_frame.xbar_config[k]
                    all_config_index = all_config_index + 1

                for k in range (0, this_frame.num_ipin_configs):
                    this_frame.all_config[all_config_index] = this_frame.ipin_config[k]
                    all_config_index = all_config_index + 1

                for k in range (0, this_frame.num_chanxy_configs):
                    this_frame.all_config[all_config_index] = this_frame.chanxy_config[k]
                    all_config_index = all_config_index + 1

            elif this_frame.frame_type == FRAME_TYPE_IO:

                this_frame.total_number_configs = this_frame.num_ipin_configs + this_frame.num_chanxy_configs
                this_frame.total_config_layer = int(math.ceil(this_frame.total_number_configs/32.00))

                #init all_config
                for k in range (0, this_frame.total_config_layer):
                    for x in range (0, 32):
                        this_frame.all_config.append(0)

                all_config_index = 0

                for k in range (0, this_frame.num_ipin_configs):
                    this_frame.all_config[all_config_index] = this_frame.ipin_config[k]
                    all_config_index = all_config_index + 1

                for k in range (0, this_frame.num_chanxy_configs):
                    this_frame.all_config[all_config_index] = this_frame.chanxy_config[k]
                    all_config_index = all_config_index + 1


def reorg_all_config(bf_array, bf_stream, fpga_max_depth, X_SIZE, Y_SIZE):

    bf_stream_depth_index = 0

    for i in range (0, len(fpga_max_depth)):
        for j in range (0, fpga_max_depth[i]):
            bf_stream.append([])

            for k in range (0, (X_SIZE + 2)*32):
                bf_stream[bf_stream_depth_index].append(0)

            bf_stream_depth_index = bf_stream_depth_index + 1

    bf_stream_y_index = 0
    for i in range (0, Y_SIZE + 2):
        for j in range (0, X_SIZE + 2):

            this_frame = bf_array[i][j]

            for k in range (0, this_frame.total_config_layer):
                bf_stream_index = bf_stream_y_index + k

                for x in range (31, -1, -1):
                    bf_stream[bf_stream_index][j*32 + x] = this_frame.all_config[k*32 + x]

        bf_stream_y_index = bf_stream_y_index + fpga_max_depth[i]

def print_all_config(bf_stream, line_width, filename_bitstream):

    bitstream_fp = open(filename_bitstream, 'w')

    bf_stream_depth = len(bf_stream)

    for i in range (0, bf_stream_depth):
        #line_to_write = 'row ' + str(i) + '\n'
        #bitstream_fp.write(line_to_write)

        line_to_write = ''
        for j in range (line_width - 1, -1, -1):
            line_to_write = line_to_write + str(bf_stream[i][j])

        line_to_write = line_to_write + '\n'
        bitstream_fp.write(line_to_write)

    bitstream_fp.close()

def update_bf_array_xbar_config(xbar_config_list, lut_config_index, config_width, ble_input_pin_num):

    for i in range (0, config_width):

        xbar_config_list[lut_config_index + i] = (ble_input_pin_num & 0x1)
        ble_input_pin_num = ble_input_pin_num >> 1

def generate_ff_xbar_bitstream(clb_list, bf_array, num_ipin, num_luts):

    # find config width
    config_width = int(math.floor(math.log(num_ipin + num_luts - 0.000001, 2)) + 1)

    for this_clb in clb_list:

        this_frame = bf_array[this_clb.y_loc][this_clb.x_loc]

        for i in range (0, len(this_clb.ble_list)):

            # BLE ff mux config
            this_ble = this_clb.ble_list[i]
            this_frame.mux_config[i] = this_ble.ffs

            num_lut_inputs = len(this_ble.inputs)

            for j in range (0, len(this_ble.inputs)):
                lut_config_index = (i*num_lut_inputs + j)*config_width
                update_bf_array_xbar_config(this_frame.xbar_config, lut_config_index, config_width, this_ble.inputs[j])

def generate_bit_stream(bf_array, fpga_lut_tile, fpga_io_tile, route_res_list, X_SIZE, Y_SIZE, LUT_SIZE, NUM_LUTS, LUT_OUTPUT, NUM_IPIN, NUM_CLB_OUT, fpga_config_max_depth, filename_net, filename_place, filename_route, filename_abc, filename_bitstream):

    # init array
    init_fpga_bit_frames_array(bf_array, X_SIZE, Y_SIZE)

    # import array
    import_fpga_bit_frames_array(bf_array, fpga_lut_tile, fpga_io_tile, X_SIZE, Y_SIZE)

    # initialize required field for bit configs
    init_fpga_bit_frames(bf_array, NUM_LUTS, X_SIZE, Y_SIZE)

    # lut config generation
    bitgen_lut.generate_lut_config(bf_array, LUT_SIZE, NUM_LUTS, X_SIZE, Y_SIZE, filename_place, filename_abc)

    # mux and xbar
    clb_list = []
    ff_xbar_gen.ff_xbar_bitgen(clb_list, filename_net, filename_place)
    generate_ff_xbar_bitstream(clb_list, bf_array, NUM_IPIN, NUM_LUTS)

    # ipin and chanxy
    ipin_chanxy_bitgen.bitgen(filename_route, route_res_list, fpga_lut_tile, fpga_io_tile, bf_array)

    # combine all config, reorg and print
    bf_stream = []
    combine_all_config(bf_array, X_SIZE, Y_SIZE)
    reorg_all_config(bf_array, bf_stream, fpga_config_max_depth, X_SIZE, Y_SIZE)
    print_all_config(bf_stream, (X_SIZE + 2)*32, filename_bitstream)

def init_fpga_bit_frames_array(bf_array, x_size, y_size):

    # current implementation assumes io and lut tile only
    for i in range (0, y_size + 2):
        bf_array.append([])
        for j in range (0, x_size + 2):
            bf_array[i].append(bit_frame(j, i))

    # edges are io tiles
    for i in range (1, y_size + 1):
        x_cor = 0
        bf_array[i][x_cor].frame_type = FRAME_TYPE_IO

        x_cor = x_size + 1
        bf_array[i][x_cor].frame_type = FRAME_TYPE_IO

    for i in range (1, x_size + 1):
        y_cor = 0
        bf_array[y_cor][i].frame_type = FRAME_TYPE_IO

        y_cor = y_size + 1
        bf_array[y_cor][i].frame_type = FRAME_TYPE_IO

    # center tiles are lut tiles
    for i in range (1, y_size + 1):
        for j in range (1, x_size + 1):
            bf_array[i][j].frame_type = FRAME_TYPE_LUT

def import_fpga_bit_frames_array(bf_array, fpga_lut_tile, fpga_io_tile, X_SIZE, Y_SIZE):

    for i in range (0, Y_SIZE):
        for j in range (0, X_SIZE):

            src_tile = fpga_lut_tile[i][j]

            bf_array[i+1][j+1].num_lut_configs = src_tile.num_lut_configs
            bf_array[i+1][j+1].num_mux_configs = src_tile.num_mux_configs
            bf_array[i+1][j+1].num_xbar_configs = src_tile.num_xbar_configs
            bf_array[i+1][j+1].num_ipin_configs = src_tile.num_ipin_configs
            bf_array[i+1][j+1].num_chanxy_configs = src_tile.num_chanxy_configs

    for i in range (0, len(fpga_io_tile)):

        src_tile = fpga_io_tile[i]
        dst_tile = bf_array[src_tile.y_cor][src_tile.x_cor]

        dst_tile.num_ipin_configs = src_tile.num_ipin_configs
        dst_tile.num_chanxy_configs = src_tile.num_chanxy_configs

def init_fpga_bit_frames(bf_array, NUM_LUTS, X_SIZE, Y_SIZE):

    for i in range (0, Y_SIZE + 2):
        for j in range (0, X_SIZE + 2):

            this_frame = bf_array[i][j]

            # print str(this_frame.num_lut_configs) + ' ' + str(this_frame.num_mux_configs) + ' ' + str(this_frame.num_xbar_configs) + ' ' + str(this_frame.num_ipin_configs) + ' ' + str(this_frame.num_chanxy_configs)

            if this_frame.frame_type == FRAME_TYPE_LUT:

                for k in range (0, this_frame.num_lut_configs):
                    this_frame.lut_config.append(0)

                for k in range (0, NUM_LUTS):
                    this_frame.sub_block_name.append('holder')

                for k in range (0, this_frame.num_mux_configs):
                    this_frame.mux_config.append(0)

                for k in range (0, this_frame.num_xbar_configs):
                    this_frame.xbar_config.append(0)

                for k in range (0, this_frame.num_ipin_configs):
                    this_frame.ipin_config.append(0)

                for k in range (0, this_frame.num_chanxy_configs):
                    this_frame.chanxy_config.append(0)

            elif this_frame.frame_type == FRAME_TYPE_IO:

                for k in range (0, this_frame.num_ipin_configs):
                    this_frame.ipin_config.append(0)

                for k in range (0, this_frame.num_chanxy_configs):
                    this_frame.chanxy_config.append(0)
