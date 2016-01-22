import sys
import shlex
import math

class lut (object):

    def __init__ (self, p_line):
        self.line = p_line
        self.input_name = ''
        self.output_name = ''
        self.entries = []
