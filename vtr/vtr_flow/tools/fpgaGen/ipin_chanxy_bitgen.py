import sys
import shlex

import route_modules
import sbcbGen

class tree_node(object):

    def __init__ (self, p_value):

        self.value = p_value
        self.children = []

def tree_add_child(head, child_value):

    new_node = tree_node(child_value)

    head.children.append(new_node)

    return new_node

def search_tree(head, value):

    if head.value == value:
        return head
    else:
        if len(head.children) == 0:
            return 0
        else:
            node_ptr = 0
            for i in range (0, len(head.children)):
                node_ptr = search_tree(head.children[i], value)

                if node_ptr!= 0:
                    return node_ptr

            return 0

def net_to_tree(net_list, route_tree):

    head = route_tree

    last_node = head

    for i in range (1, len(net_list)):

        node_ptr = search_tree(head, net_list[i])

        if node_ptr == 0:
            last_node = tree_add_child(last_node, net_list[i])

        else:
            last_node = node_ptr

def bitgen(filename_route, fpga_route, fpga_lut_tile, fpga_io_tile, bf_array):

    route_fp = open(filename_route, 'r')

    line = route_fp.readline()

    while len(line) != 0:

        if line.startswith('route_start'):

            net_list = []
            line = route_fp.readline()

            while ((len(line) != 0) and (not line.startswith('route_start'))):

                line = line.split()
                net_list.append(int(line[1]))
                line = route_fp.readline()

            route_tree = tree_node(net_list[0])
            net_to_tree(net_list, route_tree)

            route_tree_to_bitstream(route_tree, fpga_route, fpga_lut_tile, fpga_io_tile, bf_array)

def loc_to_tile(x_loc, y_loc, fpga_lut_tile, fpga_io_tile):

    for i in range (0, len(fpga_io_tile)):

        if fpga_io_tile[i].x_cor == x_loc and fpga_io_tile[i].y_cor == y_loc:

            return fpga_io_tile[i]

    return fpga_lut_tile[y_loc-1][x_loc-1]

def id_to_config(list_in, bit_config_index, start_index, end_index):

    bit_width = end_index - start_index + 1

    for i in range (0, bit_width):
        list_in[start_index+i] = bit_config_index%2
        bit_config_index = bit_config_index >> 1

def src_dst_bitgen(src_id, dst_id, fpga_route, fpga_lut_tile, fpga_io_tile, bf_array):

    src_rt = fpga_route[src_id]
    dst_rt = fpga_route[dst_id]

    x_loc = 0
    y_loc = 0

    if dst_rt.r_dir == 'DEC':
        x_loc = dst_rt.xhigh
        y_loc = dst_rt.yhigh
    else:
        x_loc = dst_rt.xlow
        y_loc = dst_rt.ylow

    if dst_rt.r_type == route_modules.R_TYPE_CHANX or dst_rt.r_type == route_modules.R_TYPE_CHANY:

        chanxy_index = -1

        this_tile = loc_to_tile(x_loc, y_loc, fpga_lut_tile, fpga_io_tile)

        for i in range (0, len(this_tile.chanxy_out_list)):

            if dst_id == this_tile.chanxy_out_list[i]:

                chanxy_index = i
                break

        if chanxy_index == -1:
            print 'ERROR: dst_id in chanxy not found'
        else:
            this_frame = bf_array[y_loc][x_loc]
            bit_config_index = -1

            for i in range (0, len(dst_rt.sup_r)):

                if dst_rt.sup_r[i] == src_id:
                    bit_config_index = i
                    break

            if bit_config_index == -1:
                print 'ERROR: src_id dst ' + str(dst_id) + ' src ' + str(src_id) + ' in chanxy not found'
            elif len(dst_rt.sup_r) != 1:
                start_index = this_tile.chanxy_config_start_list[chanxy_index]
                end_index = this_tile.chanxy_config_start_list[chanxy_index] + this_tile.chanxy_config_width_list[chanxy_index]  - 1

                id_to_config(this_frame.chanxy_config, bit_config_index, start_index, end_index)

    elif dst_rt.r_type == route_modules.R_TYPE_IPIN:

        ipin_index = -1

        this_tile = loc_to_tile(x_loc, y_loc, fpga_lut_tile, fpga_io_tile)

        for i in range (0, len(this_tile.ipin_list)):

            if dst_id == this_tile.ipin_list[i]:

                ipin_index = i
                break

        if ipin_index == -1:
            print 'ERROR: dst_id in ipin not found'
        else:
            this_frame = bf_array[y_loc][x_loc]
            bit_config_index = -1

            for i in range (0, len(dst_rt.sup_r)):

                if dst_rt.sup_r[i] == src_id:
                    bit_config_index = i
                    break

            if bit_config_index == -1:
                print 'ERROR: src_id dst ' + str(dst_id) + ' src ' + str(src_id) + ' in ipin not found'
            else:
                start_index = ipin_index*this_tile.ipin_configs_width
                end_index = start_index + this_tile.ipin_configs_width - 1

                id_to_config(this_frame.ipin_config, bit_config_index, start_index, end_index)

    else:
        print 'ERROR: TO NON DST ROUTE ' + str(dst_id)
        sys.exit(1)

def route_tree_to_bitstream(head, fpga_route, fpga_lut_tile, fpga_io_tile, bf_array):

    src_id = head.value

    for i in range (0, len(head.children)):

        dst_id = head.children[i].value

        src_dst_bitgen(src_id, dst_id, fpga_route, fpga_lut_tile, fpga_io_tile, bf_array)

        route_tree_to_bitstream(head.children[i], fpga_route, fpga_lut_tile, fpga_io_tile, bf_array)
