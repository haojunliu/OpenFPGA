import sys, os, math

def main(argv=None):

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [16]:
                for chanxy_w in [16]:
                    for chanxy_num in [160]:
                        for fpga_size in [5, 10, 25]:
                            config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num) + '_x' + str(fpga_size) + '_y' + str(fpga_size)

                            old_fn = 'k6_N10_soft_logic_only_5_5.xml'
                            new_fn = 'vpr_' + config_name + '.xml'

                            line_to_print = 'cp ' + old_fn + ' ' + new_fn
                            print line_to_print

if __name__ == "__main__":
    sys.exit(main())
