import sys
import shlex

class clb (object):

    def __init__(self, p_name):
        self.name = p_name
        self.x_loc = 0
        self.y_loc = 0
        self.inputs = []
        self.outputs = []
        self.ble_list = []

class ble (object):

    def __init__(self, p_name):
        self.name = p_name
        self.inputs = []
        self.ffs = 0

class clb_loc (object):

    def __init__(self, p_name, p_x_loc, p_y_loc):

        self.name = p_name
        self.x_loc = p_x_loc
        self.y_loc = p_y_loc

def ff_xbar_bitgen(clb_list, filename_net, filename_place):

    net_fp = open(filename_net, 'r')
    place_fp = open(filename_place, 'r')

    import_clb_list(clb_list, net_fp)

    clb_loc_list = []
    import_clb_loc_list(clb_loc_list, place_fp)

    match_clb_name(clb_list, clb_loc_list)

    check_clb_loc(clb_list)

    net_fp.close()
    place_fp.close()

def get_digits(string_in):

    num = ""
    for i in string_in:
        if i.isdigit():
            num += i

    num = int(num)

    return num

def net_string_to_index(string_in, num_input):

    index = 0

    if string_in.startswith('clb'):

        index = get_digits(string_in)

    elif string_in.startswith('ble'):

        index = get_digits(string_in)
        index = index/10

        index = index + num_input

    return index

def check_clb_loc(clb_list):

    for clb in clb_list:

        if clb.x_loc == 0 and clb.y_loc == 0:

            print 'ERROR: clb_loc location not updated, bitgen error'
            print '       ' + clb.name

def match_clb_name(clb_list, clb_loc_list):

    for i in range (0, len(clb_list)):
        for j in range (0, len(clb_loc_list)):

            if clb_list[i].name == clb_loc_list[j].name:

                clb_list[i].x_loc = clb_loc_list[j].x_loc
                clb_list[i].y_loc = clb_loc_list[j].y_loc

                break

def import_clb_loc_list(clb_loc_list, place_fp):

    line = place_fp.readline()

    while len(line) != 0:

        if line.startswith('top_level'):

            line = line.split()

            clb_loc_list.append(clb_loc(line[1], int(line[2]), int(line[3])))

        line = place_fp.readline()

def import_clb_list(clb_list, net_fp):

    clb_count = 0
    ble_count = 0
    clb_num_input = 0
    line = net_fp.readline()

    while len(line) != 0:

        if line.startswith('CLB'):

            line = line.split()
            clb_list.append(clb(line[1]))
            clb_count = clb_count + 1

            this_clb = clb_list[clb_count - 1]

            line1 = net_fp.readline()
            line1 = line1.split()

            for i in range (0, len(line1) - 1):
                this_clb.inputs.append(line1[i+1])

            clb_num_input = len(line1) - 1
            ble_count = 0

        elif line.startswith('    BLE'):

            line = line.split()
            clb_list[clb_count-1].ble_list.append(ble(line[1]))
            ble_count = ble_count + 1

            if line[1] != "OPEN":

                this_ble = clb_list[clb_count-1].ble_list[ble_count-1]

                line1 = net_fp.readline()
                line2 = net_fp.readline()

                # line1 is input
                line1 = line1.split()

                if len(line1) == 1:
                    print 'Error: No Input to BLE'

                for i in range (1, len(line1)):
                    this_ble.inputs.append(net_string_to_index(line1[i], clb_num_input))

                # line2 is FF enable
                line2 = line2.split()

                if line2[1] != 'OPEN':
                    this_ble.ffs = 1

        line = net_fp.readline()

if __name__ == "__main__":
    sys.exit(ff_xbar_bitgen())

