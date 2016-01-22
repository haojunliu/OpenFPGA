import sys, os
import argparse
import math
import shlex

import place
import route
import fpga_net
import ble

def main(argv=None):

    arg_parser = argparse.ArgumentParser(description = 'LUT TILE ReRoute')

    arg_parser.add_argument('--net-file', required=True)
    arg_parser.add_argument('--net-reroute-file', required=True)
    arg_parser.add_argument('--place-file', required=True)
    arg_parser.add_argument('--route-file', required=True)
    arg_parser.add_argument('--abc-file', required=True)

    args = arg_parser.parse_args()

    filename_net_file = args.net_file
    filename_net_out_file = args.net_reroute_file
    filename_place_file = args.place_file
    filename_route_file = args.route_file
    filename_abc_file = args.abc_file

    net_fp = open(filename_net_file, 'r')
    place_fp = open(filename_place_file, 'r')
    route_fp = open(filename_route_file, 'r')
    net_out_fp = open(filename_net_out_file, 'w')
    abc_fp = open(filename_abc_file, 'r')

    place_list = []
    route_list = []
    lut_list = []

    import_in_abc_list (abc_fp, lut_list)
    place.import_place_list (place_fp, place_list)
    route.import_route_list (route_fp, route_list)

    ###########################################
    # Central Processing
    ###########################################
    process_reroute_net (net_fp, net_out_fp, place_list, route_list, lut_list)
    ###########################################

    net_fp.close()
    net_out_fp.close()
    place_fp.close()
    route_fp.close()
    abc_fp.close()

def import_in_abc_list (in_abc_fp, lut_list):

    # Copy until reach the line of latch
    line = in_abc_fp.readline()

    while not line.startswith('.latch'):
        line = in_abc_fp.readline()
        if line.startswith('.names'):
            break

    # Read and Process Latch Lines
    while not line.startswith('.names'):
        line = in_abc_fp.readline()

    # Read and Process LUT Lines
    while len(line)!= 0:
        if line.startswith('.names'):
            lut_list.append(line)
            line = in_abc_fp.readline()
            while len(line)!= 0 and (not line.startswith('.names')) and (not line.startswith('.end')):
                line = in_abc_fp.readline()
        else:
            line = in_abc_fp.readline()

def get_digits(string_in):

    num = ""
    for i in string_in:
        if i.isdigit():
            num += i

    num = int(num)

    return num

def print_clb(net_out_fp, clb_name, clb_input_list, ble_list):

    line = 'CLB ' + clb_name + '\n'
    net_out_fp.write(line)

    line = 'INPUT: '
    new_clb_input_list = []
    for i in range (0, len(clb_input_list)):
        new_clb_input_list.append('open')

    for i in range (0, len(clb_input_list)):
        if clb_input_list[i].name != 'open':
            new_clb_input_list[clb_input_list[i].new_id] = clb_input_list[i].name

    for i in range (0, len(new_clb_input_list)):
        line = line + new_clb_input_list[i] + ' '

    line = line + '\n'
    net_out_fp.write(line)

    for i in range (0, len(ble_list)):

        if ble_list[i].name == 'OPEN':
            line = '    BLE OPEN\n'
            net_out_fp.write(line)
        else:
            line = '    BLE ' + ble_list[i].name + '\n'
            net_out_fp.write(line)

            line = '        INPUT: '
            last_input_name = ''
            for j in range (0, len(ble_list[i].ble_input)):
                for k in range (0, len(ble_list[i].ble_input)):
                    if ble_list[i].ble_old_loc[k] == j:
                        line = line + ble_list[i].ble_input[k] + ' '
                        last_input_name = ble_list[i].ble_input[k]

            for j in range (0, len(ble_list[i].ble_input)):
                if ble_list[i].ble_input[j] == 'open':
                    line = line + last_input_name + ' '
            line = line + '\n'
            net_out_fp.write(line)

            line = ble_list[i].ff
            net_out_fp.write(line)

def process_clb(net_out_fp, clb_name, clb_input_list, ble_list, place_list, route_list, lut_list):

    # Find x_loc and y_loc
    x_loc = -1
    y_loc = -1
    p_index = -1

    for i in range (0, len(place_list)):
        if clb_name == place_list[i].name:
            x_loc = place_list[i].x_loc
            y_loc = place_list[i].y_loc
            p_index = i
            break

    # Remap CLB INPUT
    for i in range (0, len(clb_input_list)):
        if clb_input_list[i].name != 'open':
            for j in range (0, len(route_list)):
                if route_list[j].name == clb_input_list[i].name and route_list[j].x_loc == x_loc and route_list[j].y_loc == y_loc:
                    clb_input_list[i].new_id = route_list[j].pin_id

    # Go Through BLE again for pin swapping
    for i in range (0, len(ble_list)):
        if ble_list[i].name != 'OPEN':
            # Map the name to an abc input line
            abc_in_and_out = []
            for line in lut_list:
                line = line.split()
                if ble_list[i].name == line[len(line)-1]:
                    abc_in_and_out = line
                    break

            # For each input of the ble, find name and map to abc location
            # 1) clb xbar input
            # 2) ble input
            for j in range (0, len(ble_list[i].ble_input)):
                ble_list[i].ble_old_loc.append(-1)
                if ble_list[i].ble_input[j] != 'open':
                    input_name = ble_list[i].ble_input[j]

                    # print '====================='
                    # print 'ble_in ' + input_name

                    if input_name.startswith('clb'):
                        index = get_digits(input_name)
                        clb_input_name = ''

                        # print 'clb ' + clb_input_list[index].name
                        # print len(abc_in_and_out)
                        for k in range (0, len(abc_in_and_out)):
                            # print 'abc ' + abc_in_and_out[k]
                            if abc_in_and_out[k] == clb_input_list[index].name:
                                ble_list[i].ble_old_loc[j] = k-1
                                break

                    elif input_name.startswith('ble'):
                        index = get_digits(input_name)/10
                        clb_input_name = ''

                        ble_src = ble_list[index]
                        ff_name = ble_src.ff.split()
                        ff_name = ff_name[1]
                        if ff_name == 'OPEN':
                            clb_input_name = ble_src.name
                        else:
                            clb_input_name = ff_name

                        for k in range (0, len(abc_in_and_out)):
                            if abc_in_and_out[k] == clb_input_name:
                                ble_list[i].ble_old_loc[j] = k-1
                                break

                    else:
                        assert 0

    # Go Through BLE
    for i in range (0, len(ble_list)):
        if ble_list[i].name != 'OPEN':
            for j in range (0, len(ble_list[i].ble_input)):
                if ble_list[i].ble_input[j] != 'open':

                    input_name = ble_list[i].ble_input[j]
                    index = -1

                    if input_name.startswith('clb'):
                        index = get_digits(input_name)
                        assert index != -1
                        new_name = 'clb.I[' + str(clb_input_list[index].new_id) + ']->crossbar'
                    else:
                        new_name = input_name

                    ble_list[i].ble_input[j] = new_name

def process_reroute_net (net_fp, net_out_fp, place_list, route_list, lut_list):

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
                clb_input_list.append(fpga_net.ipin(line[i], i-1, i-1))

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

            process_clb (net_out_fp, clb_name, clb_input_list, ble_list, place_list, route_list, lut_list)
            print_clb (net_out_fp, clb_name, clb_input_list, ble_list)

if __name__ == "__main__":
     sys.exit(main())
