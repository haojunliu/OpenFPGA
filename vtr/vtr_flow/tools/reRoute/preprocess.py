import sys, os
import argparse
import math
import shlex

import place
import route
import fpga_net
import ble

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'LUT TILE PreProcess')

    arg_parser.add_argument('--net-file', required=True)
    arg_parser.add_argument('--in-abc-file', required=True)
    arg_parser.add_argument('--out-abc-file', required=True)

    args = arg_parser.parse_args()

    filename_net_file = args.net_file
    filename_in_abc_file = args.in_abc_file
    filename_out_abc_file = args.out_abc_file

    net_fp = open(filename_net_file, 'r')
    in_abc_fp = open(filename_in_abc_file, 'r')
    out_abc_fp = open(filename_out_abc_file, 'w')

    latch_list = []
    new_lut_list = []

    import_in_abc_list (in_abc_fp, latch_list)
    in_abc_fp.close()

    ###########################################
    # Central Processing
    ###########################################
    preprocess_net (net_fp, latch_list, new_lut_list)

    ###########################################
    # Central Printing
    ###########################################
    in_abc_fp = open(filename_in_abc_file, 'r')
    print_abc(in_abc_fp, out_abc_fp, new_lut_list)

    net_fp.close()
    in_abc_fp.close()
    out_abc_fp.close()

def import_in_abc_list (in_abc_fp, latch_list):

    line = in_abc_fp.readline()
    while len(line)!=0:
        if line.startswith('.latch'):
            latch_list.append(line.split())
        line = in_abc_fp.readline()

def print_abc (in_abc_fp, out_abc_fp, new_lut_list):

    line = in_abc_fp.readline()
    while not line.startswith('.names'):
        out_abc_fp.write(line)
        line = in_abc_fp.readline()

    for item in new_lut_list:
        wline = '.names ' + item[0] + ' ' + item[1] + '\n'
        wline = wline + '1 1\n'
        out_abc_fp.write(wline)

    while len(line)!=0:
        out_abc_fp.write(line)
        line = in_abc_fp.readline()

def get_digits(string_in):

    num = ""
    for i in string_in:
        if i.isdigit():
            num += i

    num = int(num)

    return num

def process_clb (clb_name, clb_input_list, ble_list, latch_list, new_lut_list):

    # Go Through BLE again for pin swapping
    for i in range (0, len(ble_list)):
        if ble_list[i].name != 'OPEN':
            for j in range (0, len(ble_list[i].ble_input)):
                if ble_list[i].ble_input[j] != 'open':
                    input_name = ble_list[i].ble_input[j]
                    if input_name.startswith('clb'):
                        input_index = get_digits(input_name)
                        input_name = clb_input_list[input_index]

                        for latch in latch_list:
                            if ble_list[i].name == latch[2] and input_name == latch[1]:
                                new_lut_list.append([])
                                new_lut_list[len(new_lut_list)-1].append(input_name)
                                new_lut_list[len(new_lut_list)-1].append(ble_list[i].name)

def preprocess_net (net_fp, latch_list, new_lut_list):

    line = net_fp.readline()

    while len(line) != 0:

        if line.startswith('CLB'):

            line = line.split()
            clb_name = line[1]

            line = net_fp.readline()
            line = line.split()
            clb_input_list = []
            ble_list = []

            for i in range (1, len(line)):
                clb_input_list.append(line[i])

            line = net_fp.readline()

            while line.startswith('    BLE'):

                line = line.split()

                if(line[1] == 'OPEN'):
                    ble_list.append(ble.ble(line[1]))
                else:
                    ble_list.append(ble.ble(line[1]))

                    line1 = net_fp.readline()
                    line2 = net_fp.readline()

                    line1 = line1.split()

                    for i in range (1, len(line1)):
                        ble_list[len(ble_list)-1].ble_input.append(line1[i])

                    ble_list[len(ble_list)-1].ff = line2

                line = net_fp.readline()

            process_clb (clb_name, clb_input_list, ble_list, latch_list, new_lut_list)

if __name__ == "__main__":
     sys.exit(main())
