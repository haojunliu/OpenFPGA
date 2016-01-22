import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'Config Latches Replace')

    arg_parser.add_argument('--src-file', required=True)
    args = arg_parser.parse_args()

    src_file = args.src_file
    src_fp = open (src_file, 'r')
    src_line = src_fp.readline()

    while len(src_line) != 0:

        if src_line.find('this_config_io_configs_out') != -1 and src_line.find('wire') != -1:

                print src_line,

                src_line = src_line.split()
                config_str = src_line[0]
                config_str = config_str.split(':')

                #print 'WARN ' + config_str[0]

                config_size_str = config_str[0].split('[')
                config_size = int(config_size_str[1]) + 1
                config_name = 'configs_latches_' + str(config_size/32)

                src_line = src_fp.readline()

                while len(src_line) != 0:

                    if src_line.find('configs_latches') != -1:
                        print '    ' + config_name + ' this_config(.clk(clk), .reset(reset),'
                        src_line = src_fp.readline()
                        break

                    else:
                        print src_line,
                        src_line = src_fp.readline()

        else:

            print src_line,
            src_line = src_fp.readline()

if __name__ == "__main__":
    sys.exit(main())
