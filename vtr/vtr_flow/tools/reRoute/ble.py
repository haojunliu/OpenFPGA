import sys
import shlex
import math

class ble (object):

    def __init__ (self, p_name):
        self.name = p_name
        self.ble_input = []
        self.ble_old_loc = []
        self.ff = 'OPEN'
