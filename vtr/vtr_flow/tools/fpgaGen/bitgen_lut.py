import sys
import shlex

import bit_frame

def generate_lut_config(bf_array, LUT_SIZE, NUM_LUTS, x_size, y_size, filename_place, filename_abc):

    # update_placement_info
    update_placement_info(bf_array, x_size, y_size, filename_place)

    # update_lut_config
    update_lut_config(bf_array, x_size, y_size, LUT_SIZE, NUM_LUTS, filename_abc)

def update_placement_info(bf_array, x_size, y_size, filename_place):

    # open file for read
    place_f = open (filename_place, 'r')

    # top level data structures
    line_count = 0

    top_mod_name = ""
    top_loc_x = ""
    top_loc_y = ""
    top_loc_sub = ""

    line = place_f.readline()

    while len(line) != 0:
        line_count = line_count + 1

        if line.startswith('top_level'):
            line = line.split( )

            top_mod_name = line[1]
            top_loc_x = int(line[2])
            top_loc_y = int(line[3])
            top_loc_sub = int(line[4])

            bf_array[top_loc_y][top_loc_x].name = top_mod_name

        elif line.startswith('sub_level') and bf_array[top_loc_y][top_loc_x].frame_type == bit_frame.FRAME_TYPE_LUT:

            update_lut_sub_block (bf_array[top_loc_y][top_loc_x], line)

        # read another line
        line = place_f.readline()

def update_lut_config(bf_array, x_size, y_size, LUT_SIZE, NUM_LUTS, filename_abc):

    # open file for abc.blif
    abc_f = open(filename_abc, 'r')
    line = abc_f.readline()

    while len(line) != 0:

        this_lut_init_to_1 = 0

        if line.startswith('.names'):

            line = line.split( )
            output_name = line[len(line)-1]

            y_cor = 0
            x_cor = 0
            lut_id = 0
            name_found = 0
            for y_cor in range (1, y_size + 1):
                for x_cor in range (1, x_size + 1):
                    if bf_array[y_cor][x_cor].frame_type == bit_frame.FRAME_TYPE_LUT:
                        for lut_id in range (0, NUM_LUTS):
                            if bf_array[y_cor][x_cor].sub_block_name[lut_id] == output_name:
                                name_found = 1
                                break

                    if name_found == 1:
                        break
                if name_found == 1:
                    break

            if name_found == 1:
                line = abc_f.readline()
                while not line.startswith('.names'):
                    if len(line) == 0: break
                    if line.startswith('.end'): break

                    line = line.split()
                    lut_rep = str(line[0])
                    lut_val = int(line[1])
                    index_list = []

                    if lut_val == 0 and this_lut_init_to_1 == 0:
                        this_lut_init_to_1 = 1
                        init_lut_config_to_1(bf_array[y_cor][x_cor], lut_id, LUT_SIZE)

                    lut_config_str_to_list(lut_rep, LUT_SIZE, index_list)

                    # generate lut config
                    index_to_lut_config(bf_array[y_cor][x_cor], lut_id, LUT_SIZE, index_list, lut_val)

                    line = abc_f.readline()
            else:
                line = abc_f.readline()
                while not line.startswith('.names'):
                    line = abc_f.readline()
                    if len(line) == 0: break
                    if line.startswith('.end'): break
        else:
            line = abc_f.readline()

def reverse_index(LUT_SIZE, config_index):

    new_config_index = 0

    for i in range (0, LUT_SIZE):
        new_config_index += (config_index%2) << (LUT_SIZE - 1 - i)
        config_index = config_index/2

    return new_config_index

def init_lut_config_to_1(this_frame, sub_block_id, LUT_SIZE):

    id_shift = (1 << LUT_SIZE) * sub_block_id

    for i in range (0, (1 << LUT_SIZE)):
        this_frame.lut_config[id_shift + i] = 1

def index_to_lut_config(this_frame, sub_block_id, LUT_SIZE, index_list, lut_val):

    id_shift = (1 << LUT_SIZE) * sub_block_id

    for lut_config_str in index_list:
        config_index = int(lut_config_str, 2)
        config_index = reverse_index(LUT_SIZE, config_index) + id_shift
#        config_index = config_index + id_shift

        this_frame.lut_config[config_index] = lut_val

def lut_config_str_to_list(lut_str, lut_bit_width, index_list):

    lut_str_len = len(lut_str)
    dont_care_found = 0

    if lut_str_len != lut_bit_width:
        for i in range (0, lut_bit_width - lut_str_len):
            lut_str = lut_str + '-'

        lut_config_str_to_list(lut_str, lut_bit_width, index_list)
    else:
        for i in range (0, lut_bit_width):
            if lut_str[i] == '-':
                dont_care_found = 1

                lut_str_0 = ''
                lut_str_1 = ''

                for j in range (0, lut_bit_width):
                    if j == i:
                        lut_str_0 += '0'
                        lut_str_1 += '1'
                    else:
                        lut_str_0 += lut_str[j]
                        lut_str_1 += lut_str[j]

                lut_config_str_to_list(lut_str_0, lut_bit_width, index_list)
                lut_config_str_to_list(lut_str_1, lut_bit_width, index_list)

                break
        if dont_care_found == 0:
            index_list.append(lut_str)

def update_lut_sub_block (bf_frame, sub_block_info):

    sub_block_info = sub_block_info.split( )

    name = sub_block_info[1]
    sub_block_num = int(sub_block_info[3])

    if not name.startswith('(null)'):
        bf_frame.sub_block_name[sub_block_num] = name
