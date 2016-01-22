import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'XBAR Generator')
    arg_parser.add_argument('--config-file', required=True)
    args = arg_parser.parse_args()

    filename_config = args.config_file

    num_input = -1
    num_output = -1
    input_width = -1

    config_fp = open(filename_config, 'r')
    line = config_fp.readline()

    while len(line) != 0:

        if line.find('VAR_NUM_XBAR_INPUTS') != -1:
            line = line.split()
            num_input = int(line[3])

        elif line.find('VAR_NUM_XBAR_OUTPUTS') != -1:
            line = line.split()
            num_output = int(line[3])

        elif line.find('VAR_NUM_XBAR_PER_MUX_CONFIGS') != -1:
            line = line.split()
            input_width = int (line[3])

        line = config_fp.readline()

    if num_input == -1 or num_output == -1 or input_width == -1:
        print 'ERROR: configuration file corrupted'
    else:
        generate_xbar(num_input, num_output, input_width)

def generate_xbar(num_input, num_output, input_width):

    print 'module xbar(input clk, input reset,'
    print '    input [' + str(num_input-1) + ':0] io_xbar_in,'
    print '    output [' + str(num_output-1) + ':0] io_xbar_out,'
    print '    input [' + str(num_output*input_width-1) + ':0] io_mux_configs);'
    print ''

    for i in range (0, num_output):
        config_start = i*input_width
        config_end = (i+1)*input_width - 1

        print '    assign io_xbar_out[' + str(i) + '] = io_xbar_in[io_mux_configs[' + str(config_end) + ':' + str(config_start) + ']];'

    print ''

    print 'endmodule'

if __name__ == "__main__":
    sys.exit(main())
