import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'Verilog Module Remove')

    arg_parser.add_argument('--modules-to-rm', required=True)
    arg_parser.add_argument('--src-file', required=True)

    args = arg_parser.parse_args()

    modules_to_rm = args.modules_to_rm
    src_file = args.src_file

    modules_to_rm = modules_to_rm.split()

    src_fp = open (src_file, 'r')

    src_line = src_fp.readline()

    while len(src_line) != 0:

        for i in range (0, len(modules_to_rm)):

            if src_line.find('module ' + modules_to_rm[i]) != -1:

                src_line = src_fp.readline()

                while src_line.find('endmodule') == -1:
                    src_line = src_fp.readline()

                src_line = src_fp.readline()
                break

        if len(src_line) != 0:
            print src_line,

        src_line = src_fp.readline()

if __name__ == "__main__":
    sys.exit(main())
