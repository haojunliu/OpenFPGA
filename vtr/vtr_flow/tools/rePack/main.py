import sys, os
import argparse
import math
import shlex

import latch
import lut

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'ABC VPR rePack')

    arg_parser.add_argument('--in-abc-file', required=True)
    arg_parser.add_argument('--out-abc-file', required=True)

    args = arg_parser.parse_args()

    filename_in_abc_file = args.in_abc_file
    filename_out_abc_file = args.out_abc_file

    in_abc_fp = open(filename_in_abc_file, 'r')
    out_abc_fp = open(filename_out_abc_file, 'w')

    latch_list = []
    lut_list = []

    import_in_abc_list (in_abc_fp, out_abc_fp, latch_list, lut_list)
    output_out_abc_list (out_abc_fp, latch_list, lut_list)

    in_abc_fp.close()
    out_abc_fp.close()

def import_in_abc_list (in_abc_fp, out_abc_fp, latch_list, lut_list):

    # Copy until reach the line of latch
    line = in_abc_fp.readline()

    while not line.startswith('.latch'):
        out_abc_fp.write(line)
        line = in_abc_fp.readline()
        if line.startswith('.names'):
            break

    # Read and Process Latch Lines
    while not line.startswith('.names'):
        if line.startswith('.latch'):
            latch_list.append(latch.latch(line))
        line = in_abc_fp.readline()

    # Read and Process LUT Lines
    while len(line)!= 0:
        if line.startswith('.names'):
            if line.endswith('\\\n'):
                line_p_2 = in_abc_fp.readline()
                line = line.replace(str('\\\n'), str(line_p_2))
            lut_list.append(lut.lut(line))
            line = in_abc_fp.readline()
            while len(line)!= 0 and (not line.startswith('.names')) and (not line.startswith('.end')):
                lut_list[len(lut_list)-1].entries.append(line)
                line = in_abc_fp.readline()
        else:
            line = in_abc_fp.readline()

def output_out_abc_list (out_abc_fp, latch_list, lut_list):

    # find input for all latches
    # Print Latches (nothing special, everthing to be printed)
    for t_latch in latch_list:
        line = t_latch.line.split()
        t_latch.input_name = line[1]
        t_latch.output_name = line[2]
        out_abc_fp.write(t_latch.line)

    out_abc_fp.write('\n')

    # find first input and output for all luts
    for t_lut in lut_list:
        line = t_lut.line.split()
        t_lut.output_name = line[len(line)-1]

    # Process and Print Lut
    for t_lut in lut_list:
        # print itself
        line = t_lut.line
        out_abc_fp.write(line)
        for line in t_lut.entries:
            out_abc_fp.write(line)

        # search for lut output and latch input matching
        for t_latch in latch_list:
            if t_lut.output_name == t_latch.input_name:
                line = t_lut.line
                line_split = line.split()
                len_line_split = len(line_split)
                line_split[len_line_split-1] = line_split[len_line_split-1].replace(str(t_lut.output_name), str(t_latch.output_name))
                line = line_split[0] + ' '
                for i in range (1, len_line_split):
                    line = line + line_split[i] + ' '
                line = line + '\n'
                out_abc_fp.write(line)
                for line in t_lut.entries:
                    out_abc_fp.write(line)
                break

    # Print ends
    out_abc_fp.write('.end\n')

if __name__ == "__main__":
     sys.exit(main())
