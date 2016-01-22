import sys, os
import argparse
import math

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'FILE MERGER')

    arg_parser.add_argument('--tag', required=True)
    arg_parser.add_argument('--src-file', required=True)
    arg_parser.add_argument('--rep-file', required=True)
    arg_parser.add_argument('--dst-file', required=True)

    args = arg_parser.parse_args()

    TAG = args.tag
    SRC_F = args.src_file
    REP_F = args.rep_file
    DST_F = args.dst_file

    src_fp = open ( SRC_F, 'r' )
    rep_fp = open ( REP_F, 'r' )
    dst_fp = open ( DST_F, 'w' )

    src_line = src_fp.readline()

    while len(src_line) != 0:

        if src_line.find(TAG) != -1:

            src_line = rep_fp.readline()

            while len(src_line) != 0:
                dst_fp.write(src_line)
                src_line = rep_fp.readline()

            src_line = src_fp.readline()

        else:
            dst_fp.write(src_line)
            src_line = src_fp.readline()

    # close config files
    src_fp.close()
    rep_fp.close()
    dst_fp.close()

if __name__ == "__main__":
     sys.exit(main())
