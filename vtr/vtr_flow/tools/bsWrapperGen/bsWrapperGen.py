import sys, os
import argparse
import math

class io_tile (object):

    def __init__ (self, p_x_cor, p_y_cor, p_num_in, p_num_out):
        self.x_cor = p_x_cor
        self.y_cor = p_y_cor
        self.in_signal_name = []
        self.in_signal_idx = []
        self.in_used = []
        self.out_signal_name = []
        self.out_signal_idx = []
        self.out_used = []
        self.num_in = p_num_in
        self.num_out = p_num_out

def io_list_init(x_size, y_size, num_in, num_out, top_io_list, bot_io_list, left_io_list, right_io_list):

    # top
    y_cor = y_size + 1
    for x_cor in range (1, x_size + 1):
        top_io_list.append(io_tile(x_cor, y_cor, num_in, num_out))

    for x_cor in range (1, x_size + 1):
        this_tile = top_io_list[x_cor-1]

        for i in range (0, this_tile.num_in):

            this_tile.in_signal_name.append('')
            this_tile.in_used.append(0)
            this_tile.in_signal_idx.append(-1)

        for i in range (0, this_tile.num_out):

            this_tile.out_signal_name.append('')
            this_tile.out_used.append(0)
            this_tile.out_signal_idx.append(-1)

    # bot
    y_cor = 0
    for x_cor in range (1, x_size + 1):
        bot_io_list.append(io_tile(x_cor, y_cor, num_in, num_out))

    for x_cor in range (1, x_size + 1):
        this_tile = bot_io_list[x_cor-1]

        for i in range (0, this_tile.num_in):

            this_tile.in_signal_name.append('')
            this_tile.in_used.append(0)
            this_tile.in_signal_idx.append(-1)

        for i in range (0, this_tile.num_out):

            this_tile.out_signal_name.append('')
            this_tile.out_used.append(0)
            this_tile.out_signal_idx.append(-1)

    # left
    x_cor = 0
    for y_cor in range (1, y_size + 1):
        left_io_list.append(io_tile(x_cor, y_cor, num_in, num_out))

    for y_cor in range (1, y_size + 1):
        this_tile = left_io_list[y_cor-1]

        for i in range (0, this_tile.num_in):

            this_tile.in_signal_name.append('')
            this_tile.in_used.append(0)
            this_tile.in_signal_idx.append(-1)

        for i in range (0, this_tile.num_out):

            this_tile.out_signal_name.append('')
            this_tile.out_used.append(0)
            this_tile.out_signal_idx.append(-1)

    # right
    x_cor = x_size + 1
    for y_cor in range (1, y_size + 1):
        right_io_list.append(io_tile(x_cor, y_cor, num_in, num_out))

    for y_cor in range (1, y_size + 1):
        this_tile = right_io_list[y_cor-1]

        for i in range (0, this_tile.num_in):

            this_tile.in_signal_name.append('')
            this_tile.in_used.append(0)
            this_tile.in_signal_idx.append(-1)

        for i in range (0, this_tile.num_out):

            this_tile.out_signal_name.append('')
            this_tile.out_used.append(0)
            this_tile.out_signal_idx.append(-1)

def check_if_on_edge(X_SIZE, Y_SIZE, x_loc, y_loc):

    if x_loc == 0:
        return 1
    if y_loc == 0:
        return 1
    if x_loc == X_SIZE + 1:
        return 1
    if y_loc == Y_SIZE + 1:
        return 1

def find_list (X_SIZE, Y_SIZE, x_loc, y_loc, top_io_list, bot_io_list, left_io_list, right_io_list):

    if x_loc == 0:
        return left_io_list
    if y_loc == 0:
        return bot_io_list
    if x_loc == X_SIZE + 1:
        return right_io_list
    if y_loc == Y_SIZE + 1:
        return top_io_list

def map_name_to_list (this_list, io_name, x_loc, y_loc, sub_id):

    found = 0

    for i in range (0, len(this_list)):
        this_tile = this_list[i]
        if this_tile.x_cor == x_loc and this_tile.y_cor == y_loc:
            found = 1
            break

    if found == 1:

        if io_name.find('out:') != -1:
            # output case
            this_tile.out_used[sub_id] = 1

            signal_name = io_name.replace("out:top^", "")

            if signal_name.find('~') != -1:
                signal_name = signal_name.split('~')
                this_tile.out_signal_name[sub_id] = signal_name[0]
                this_tile.out_signal_idx[sub_id] = int(signal_name[1])

            else:
                this_tile.out_signal_name[sub_id] = signal_name
                this_tile.out_signal_idx[sub_id] = -1

        else:
            # input case
            this_tile.in_used[sub_id] = 1

            signal_name = io_name.replace("top^", "")

            if signal_name.find('~') != -1:
                signal_name = signal_name.split('~')
                this_tile.in_signal_name[sub_id] = signal_name[0]
                this_tile.in_signal_idx[sub_id] = int(signal_name[1])

            else:
                this_tile.in_signal_name[sub_id] = signal_name
                this_tile.in_signal_idx[sub_id] = -1

    else:
        print 'ERROR: IO MAPPING ERROR'

def line_to_list(this_line, X_SIZE, Y_SIZE, top_io_list, bot_io_list, left_io_list, right_io_list):

    line_split = this_line.split()
    io_name = line_split[0]
    x_loc = int(line_split[1])
    y_loc = int(line_split[2])
    sub_id = int(line_split[3])

    # check if on edge
    on_edge = check_if_on_edge(X_SIZE, Y_SIZE, x_loc, y_loc)

    # clock signal bypass
    if io_name.find('top^clock') != -1:
        on_edge = 0

    if on_edge == 1:
        this_list = find_list(X_SIZE, Y_SIZE, x_loc, y_loc, top_io_list, bot_io_list, left_io_list, right_io_list)
        map_name_to_list(this_list, io_name, x_loc, y_loc, sub_id)

def io_processing(filename_place, X_SIZE, Y_SIZE, top_io_list, bot_io_list, left_io_list, right_io_list):

    place_fp = open(filename_place, 'r')

    this_line = place_fp.readline()
    this_line = place_fp.readline()
    this_line = place_fp.readline()
    this_line = place_fp.readline()
    this_line = place_fp.readline()
    this_line = place_fp.readline()

    while len(this_line) != 0:

        line_to_list(this_line, X_SIZE, Y_SIZE, top_io_list, bot_io_list, left_io_list, right_io_list)

        this_line = place_fp.readline()

    place_fp.close()

def io_generate(verilog_fp, top_io_list, bot_io_list, left_io_list, right_io_list):

    # output print
    for i in range (0, len(top_io_list)):
        this_tile = top_io_list[i]

        for j in range (0, this_tile.num_out):

            if this_tile.out_used[j] == 1:
                if this_tile.out_signal_idx[j] == -1:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + ' = fpga_top_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + '[' + str(this_tile.out_signal_idx[j]) + '] = fpga_top_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(bot_io_list)):
        this_tile = bot_io_list[i]

        for j in range (0, this_tile.num_out):

            if this_tile.out_used[j] == 1:
                if this_tile.out_signal_idx[j] == -1:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + ' = fpga_bot_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + '[' + str(this_tile.out_signal_idx[j]) + '] = fpga_bot_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(left_io_list)):
        this_tile = left_io_list[i]

        for j in range (0, this_tile.num_out):

            if this_tile.out_used[j] == 1:
                if this_tile.out_signal_idx[j] == -1:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + ' = fpga_left_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + '[' + str(this_tile.out_signal_idx[j]) + '] = fpga_left_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(right_io_list)):
        this_tile = right_io_list[i]

        for j in range (0, this_tile.num_out):

            if this_tile.out_used[j] == 1:
                if this_tile.out_signal_idx[j] == -1:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + ' = fpga_right_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign ' + this_tile.out_signal_name[j] + '[' + str(this_tile.out_signal_idx[j]) + '] = fpga_right_out[' + str(i*this_tile.num_in+j) + '];\n'
                    verilog_fp.write(line_to_print)

    # input print
    for i in range (0, len(top_io_list)):
        this_tile = top_io_list[i]

        for j in range (0, this_tile.num_in):

            if this_tile.in_used[j] == 0:
                line_to_print = '    assign fpga_top_in[' + str(i*this_tile.num_in+j) + '] = 1\'b0;\n'
                verilog_fp.write(line_to_print)
            else:
                if this_tile.in_signal_idx[j] == -1:
                    line_to_print = '    assign fpga_top_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + ';\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign fpga_top_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + '[' + str(this_tile.in_signal_idx[j]) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(bot_io_list)):
        this_tile = bot_io_list[i]

        for j in range (0, this_tile.num_in):

            if this_tile.in_used[j] == 0:
                line_to_print = '    assign fpga_bot_in[' + str(i*this_tile.num_in+j) + '] = 1\'b0;\n'
                verilog_fp.write(line_to_print)
            else:
                if this_tile.in_signal_idx[j] == -1:
                    line_to_print = '    assign fpga_bot_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + ';\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign fpga_bot_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + '[' + str(this_tile.in_signal_idx[j]) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(left_io_list)):
        this_tile = left_io_list[i]

        for j in range (0, this_tile.num_in):

            if this_tile.in_used[j] == 0:
                line_to_print = '    assign fpga_left_in[' + str(i*this_tile.num_in+j) + '] = 1\'b0;\n'
                verilog_fp.write(line_to_print)
            else:
                if this_tile.in_signal_idx[j] == -1:
                    line_to_print = '    assign fpga_left_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + ';\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign fpga_left_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + '[' + str(this_tile.in_signal_idx[j]) + '];\n'
                    verilog_fp.write(line_to_print)

    for i in range (0, len(right_io_list)):
        this_tile = right_io_list[i]

        for j in range (0, this_tile.num_in):

            if this_tile.in_used[j] == 0:
                line_to_print = '    assign fpga_right_in[' + str(i*this_tile.num_in+j) + '] = 1\'b0;\n'
                verilog_fp.write(line_to_print)
            else:
                if this_tile.in_signal_idx[j] == -1:
                    line_to_print = '    assign fpga_right_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + ';\n'
                    verilog_fp.write(line_to_print)
                else:
                    line_to_print = '    assign fpga_right_in[' + str(i*this_tile.num_in+j) + '] = ' + this_tile.in_signal_name[j] + '[' + str(this_tile.in_signal_idx[j]) + '];\n'
                    verilog_fp.write(line_to_print)

    line_to_print = '\n\n'
    verilog_fp.write(line_to_print)

def top_level_declare(verilog_fp, X_SIZE, Y_SIZE, num_configs_in, num_configs_en, top_io_list, left_io_list):

    hor_in_num = X_SIZE * top_io_list[0].num_in
    hor_out_num = X_SIZE * top_io_list[0].num_out

    vert_in_num = Y_SIZE * left_io_list[0].num_in
    vert_out_num = Y_SIZE * left_io_list[0].num_out

    line_to_print = '    wire [' + str(hor_in_num-1) + ':0]' + 'fpga_top_in;\n'
    line_to_print = line_to_print + '    wire [' +  str(hor_out_num-1) + ':0]' + ' fpga_top_out;\n'
    line_to_print = line_to_print + '    wire [' + str(hor_in_num-1) + ':0]' + ' fpga_bot_in;\n'
    line_to_print = line_to_print + '    wire [' +  str(hor_out_num-1) + ':0]' + ' fpga_bot_out;\n'
    line_to_print = line_to_print + '    wire [' + str(vert_in_num-1) + ':0]' + ' fpga_left_in;\n'
    line_to_print = line_to_print + '    wire [' +  str(vert_out_num-1) + ':0]' + ' fpga_left_out;\n'
    line_to_print = line_to_print + '    wire [' + str(vert_in_num-1) + ':0]' + ' fpga_right_in;\n'
    line_to_print = line_to_print + '    wire [' +  str(vert_out_num-1) + ':0]' + ' fpga_right_out;\n'
    line_to_print = line_to_print + '    reg [' + str(num_configs_in-1) + ':0]' + ' fpga_configs_in;\n'
    line_to_print = line_to_print + '    reg [' + str(num_configs_en-1) + ':0]' + ' fpga_configs_en;\n\n'

    verilog_fp.write(line_to_print)

def dut_fpga(verilog_fp):

    line_to_print = '    fpga fpag_dut (\n'
    line_to_print = line_to_print + '        .top_in(fpga_top_in),\n'
    line_to_print = line_to_print + '        .bot_in(fpga_bot_in),\n'
    line_to_print = line_to_print + '        .left_in(fpga_left_in),\n'
    line_to_print = line_to_print + '        .right_in(fpga_right_in),\n'
    line_to_print = line_to_print + '        .top_out(fpga_top_out),\n'
    line_to_print = line_to_print + '        .bot_out(fpga_bot_out),\n'
    line_to_print = line_to_print + '        .left_out(fpga_left_out),\n'
    line_to_print = line_to_print + '        .right_out(fpga_right_out),\n'
    line_to_print = line_to_print + '        .ff_en(ff_en),\n'
    line_to_print = line_to_print + '        .configs_en(fpga_configs_en),\n'
    line_to_print = line_to_print + '        .configs_in(fpga_configs_in),\n'
    line_to_print = line_to_print + '        .clock(clock),\n'
    line_to_print = line_to_print + '        .rst(rst)\n'
    line_to_print = line_to_print + '    );\n\n'

    verilog_fp.write(line_to_print)

def configuration_loader(verilog_fp, test_case_name, num_configs_in):

    line_to_print = '    reg ff_en;\n    integer in_f;\n\n    integer read_status;'
    line_to_print = line_to_print + '    initial begin\n'
    line_to_print = line_to_print + '       in_f = $fopen("' + test_case_name + '.bs", "r");\n'
    line_to_print = line_to_print + '       fpga_configs_in = 1\'b0;\n'
    line_to_print = line_to_print + '       ff_en = 1\'b0;\n'
    line_to_print = line_to_print + '       rdy = 1\'b0;\n'
    line_to_print = line_to_print + '       fpga_configs_en = 1\'b1;\n'
    line_to_print = line_to_print + '    end\n\n'

    line_to_print = line_to_print + '    initial begin\n'
    line_to_print = line_to_print + '        repeat (10) @ (posedge clock);\n'
    line_to_print = line_to_print + '        while ( ! $feof(in_f)) begin\n'
    line_to_print = line_to_print + '        @ (posedge clock);\n'
    line_to_print = line_to_print + '        read_status = $fscanf(in_f, "%b\\n", fpga_configs_in);\n'
    line_to_print = line_to_print + '        @ (posedge clock);\n'
    line_to_print = line_to_print + '        fpga_configs_en = fpga_configs_en << 1;\n'
    line_to_print = line_to_print + '        end\n'
    line_to_print = line_to_print + '        repeat (10) @ (posedge clock);\n'
    line_to_print = line_to_print + '        $fclose(in_f);\n'
    line_to_print = line_to_print + '        #100 ff_en = 1\'b1;\n'
    line_to_print = line_to_print + '        #100 rdy = 1\'b1;\n'
    line_to_print = line_to_print + '    end\n\n'

    verilog_fp.write(line_to_print)

def fpga_wrapper_generate(test_case_name, X_SIZE, Y_SIZE, num_configs_in, num_configs_en, top_io_list, bot_io_list, left_io_list, right_io_list):

    verilog_file = 'fpga_wrapper.v'

    verilog_fp = open(verilog_file, 'a')

    top_level_declare(verilog_fp, X_SIZE, Y_SIZE, num_configs_in, num_configs_en, top_io_list, left_io_list)
    io_generate(verilog_fp, top_io_list, bot_io_list, left_io_list, right_io_list)
    configuration_loader(verilog_fp, test_case_name, num_configs_in)
    dut_fpga(verilog_fp)

    line_to_print = 'endmodule\n'
    verilog_fp.write(line_to_print)

    verilog_fp.close()

def main (argv=None):

    arg_parser = argparse.ArgumentParser(description = 'FPGA Testbench Wrapper Generator')

    arg_parser.add_argument('--x-size', required=True)
    arg_parser.add_argument('--y-size', required=True)
    arg_parser.add_argument('--num-ipin', required=True)
    arg_parser.add_argument('--num-opin', required=True)
    arg_parser.add_argument('--placement', required=True)
    arg_parser.add_argument('--configs-en', required=True)
    arg_parser.add_argument('--test-case-name', required=True)

    args = arg_parser.parse_args()

    filename_place = args.placement
    test_case_name = args.test_case_name
    X_SIZE = int(args.x_size)
    Y_SIZE = int(args.y_size)
    NUM_IPIN = int(args.num_ipin)
    NUM_OPIN = int(args.num_opin)
    num_configs_en = int(args.configs_en)

    # four sides
    top_io_list = []
    bot_io_list = []
    left_io_list = []
    right_io_list = []

    # call io list init
    io_list_init(X_SIZE, Y_SIZE, NUM_IPIN, NUM_OPIN, top_io_list, bot_io_list, left_io_list, right_io_list)

    # call to process place file
    io_processing(filename_place, X_SIZE, Y_SIZE, top_io_list, bot_io_list, left_io_list, right_io_list)

    # generate verilog wrapper
    fpga_wrapper_generate(test_case_name, X_SIZE, Y_SIZE, (X_SIZE+2)*32, num_configs_en, top_io_list, bot_io_list, left_io_list, right_io_list)

if __name__ == "__main__":
    sys.exit(main())
