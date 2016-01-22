import sys, os
import argparse
import math

def main(argv=None):

    for i in range (0, 100):
        num_configs_en = i
        num_of_configs_out = i*32
        generate_cm(num_of_configs_out, num_configs_en)

        print '\n'

def generate_cm(num_of_configs_out, num_configs_en):

    print 'module configs_latches_' + str(num_configs_en) + ' (input clk, input reset,'
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
