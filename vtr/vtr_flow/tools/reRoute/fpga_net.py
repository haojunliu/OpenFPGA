import sys
import shlex
import math

class ipin (object):

    def __init__ (self, p_name, p_old_id, p_new_id):
        self.name = p_name
        self.old_id = p_old_id
        self.new_id = p_new_id
