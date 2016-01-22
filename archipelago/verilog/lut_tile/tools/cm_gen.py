import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'Configuration Memory Generator')
    arg_parser.add_argument('--config-file', required=True)
    args = arg_parser.parse_args()

    filename_config = args.config_file

    num_of_configs_out = -1
    num_configs_en = -1

    config_fp = open(filename_config, 'r')
    line = config_fp.readline()

    while len(line) != 0:

        if line.find('VAR_CONFIGS_FILE_DEPTH') != -1:

            line = line.split()
            num_configs_en = int(line[3])

        line = config_fp.readline()

    num_of_configs_out = num_configs_en*32

    if num_of_configs_out == -1 or num_configs_en == -1:
        print 'ERROR: configuration file corrupted'
    else:
        generate_cm(num_of_configs_out, num_configs_en)

def generate_cm(num_of_configs_out, num_configs_en):

    print 'module configs_latches(input clk, input reset,'
    print '    input [31:0] io_d_in,'
    print '    input [' + str(num_configs_en-1) + ':0] io_configs_en,'
    print '    output reg [' + str(num_of_configs_out-1) + ':0] io_configs_out);'
    print ''

    for i in range (0, num_configs_en):
        config_start = i*32
        config_end = (i+1)*32 - 1

        print '    always @ (io_configs_en[' + str(i) + '] or io_d_in)'
        print '        begin'
        print '             if (io_configs_en[' + str(i) + '])'
        print '                  begin'
        print '                      io_configs_out[' + str(config_end) + ':' + str(config_start) + '] = io_d_in;'
        print '                  end'
        print '        end'
        print ''

    print 'endmodule'

if __name__ == "__main__":
    sys.exit(main())
