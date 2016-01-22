import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'IO TILE Name Replace')

    arg_parser.add_argument('--src-file', required=True)
    args = arg_parser.parse_args()

    src_file = args.src_file
    src_fp = open (src_file, 'r')
    src_line = src_fp.readline()

    io_tile_sp_ct = 0

    while len(src_line) != 0:

        if src_line.find('io_tile_woc') != -1 and src_line.find('module') != -1:

            linte_to_print = 'module io_tile_sp_' + str(io_tile_sp_ct) + '(input clk, input reset,'
            print linte_to_print
            src_line = src_fp.readline()

            io_tile_sp_ct = io_tile_sp_ct + 1

        elif src_line.find('io_tile_wc') != -1 and src_line.find('module') != -1:

            linte_to_print = 'module io_tile_sp_' + str(io_tile_sp_ct) + '(input clk, input reset,'
            print linte_to_print
            src_line = src_fp.readline()

            io_tile_sp_ct = io_tile_sp_ct + 1

        else:

            print src_line,
            src_line = src_fp.readline()

if __name__ == "__main__":
    sys.exit(main())
