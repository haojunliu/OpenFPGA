import sys
import shlex
import math

class ipin_route (object):

    def __init__(self, p_name, p_x_cor, p_y_cor, p_pin_id):
        self.name = p_name
        self.x_loc = p_x_cor
        self.y_loc = p_y_cor
        self.pin_id = p_pin_id

def import_route_list(route_fp, route_list):

    line = route_fp.readline()

    while len(line) != 0:

        line = line.split()

        route_list.append(ipin_route(line[1], int(line[2]), int(line[3]), int(line[4])))

        line = route_fp.readline()
