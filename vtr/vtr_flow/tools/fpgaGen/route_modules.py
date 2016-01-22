
# Routing Resources
R_TYPE_EMPTY = 0
R_TYPE_SINK = 1
R_TYPE_SOURCE = 2
R_TYPE_OPIN = 3
R_TYPE_IPIN = 4
R_TYPE_CHANX = 5
R_TYPE_CHANY = 6

class sbcb_src_dst(object):

    def __init__(self, p_x, p_y, p_pin):
        self.x = p_x
        self.y = p_y
        self.pin = pin

class sbcb_route(object):

    def __init__(self, p_r_type):
        self.xlow = 0
        self.ylow = 0
        self.xhigh = 0
        self.yhigh = 0
        self.ptc = 0
        self.r_type = p_r_type
        self.r_dir = 'NA'
        self.sub_r = []
        self.sup_r = []
        self.src = 0
        self.dst = []
        self.tile_ptr = ''

def import_fpga_route (filename_route, fpga_route, const_node_count):

    # opne sbcbDump for reading
    route_f = open (filename_route, 'r')

    line = route_f.readline()

    while len(line) != 0:

        if line.startswith('Node'):

            route_type = R_TYPE_EMPTY

            line_elements = line.split( )

            route_id = int(line_elements[1])
            route_type = line_elements[3]
            route_xlow = int(line_elements[4])
            route_ylow = int(line_elements[5])
            route_xhigh = int(line_elements[6])
            route_yhigh = int(line_elements[7])
            route_ptc = int(line_elements[8])
            route_dir = 'NA'

            if route_type == 'SINK':
                route_type = R_TYPE_SINK
            elif route_type == 'SOURCE':
                route_type = R_TYPE_SOURCE
            elif route_type == 'OPIN':
                route_type = R_TYPE_OPIN
            elif route_type == 'IPIN':
                route_type = R_TYPE_IPIN
            elif route_type == 'CHANX':
                route_type = R_TYPE_CHANX
                route_dir = line_elements[9]
            elif route_type == 'CHANY':
                route_type = R_TYPE_CHANY
                route_dir = line_elements[9]

            fpga_route[route_id].xlow = route_xlow
            fpga_route[route_id].ylow = route_ylow
            fpga_route[route_id].xhigh = route_xhigh
            fpga_route[route_id].yhigh = route_yhigh
            fpga_route[route_id].ptc = route_ptc
            fpga_route[route_id].r_type = route_type
            fpga_route[route_id].r_dir = route_dir

        line = route_f.readline()

    # reopen sbcbDump for importing SubNode
    route_f.close()
    route_f = open (filename_route, 'r')

    line = route_f.readline()

    while len(line) != 0:

        if line.startswith('Sub'):

            line_elements = line.split( )

            route_id = int(line_elements[1])
            route_par_id = int(line_elements[2])

            fpga_route[route_id].sup_r.append(route_par_id)
            fpga_route[route_par_id].sub_r.append(route_id)

        line = route_f.readline()

    for i in range (0, const_node_count):
        fpga_route[i].sup_r = list(set(fpga_route[i].sup_r))
        fpga_route[i].sup_r.sort()
        fpga_route[i].sub_r = list(set(fpga_route[i].sub_r))
        fpga_route[i].sub_r.sort()

