import sys
import shlex
import math

class clb_place (object):

    def __init__(self, p_name, p_x_cor, p_y_cor):

        self.name = p_name
        self.x_loc = p_x_cor
        self.y_loc = p_y_cor

def import_place_list(place_fp, place_list):

    line = place_fp.readline()

    while len(line) != 0:

        line = line.split()

        place_list.append(clb_place(line[0], int(line[1]), int(line[2])))

        line = place_fp.readline()
