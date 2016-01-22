import sys, os, math

def main(argv=None):

    shell_fn = "collect_all_asic.sh"
    shell_fp = open(shell_fn, 'w')

    line_to_print = '#!/bin/bash\n'
    shell_fp.write(line_to_print)

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [8, 12, 16]:
                for chanxy_w in [8, 12, 16]:
                    for chanxy_num in [80, 120, 160]:
                        config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num)

                        gen_collect_script(shell_fp, config_name)

def gen_collect_script(shell_fp, config_name):

    dir_name = 'lut_tile_' + config_name
    pwr_f_name = dir_name + '/phy-imp/build/icc-par/current-icc/reports/chip_finish_icc.power.rpt'
    qor_f_name = dir_name + '/phy-imp/build/icc-par/current-icc/reports/chip_finish_icc.qor.rpt'

    line_to_print = 'echo ' + config_name + '\n'
    shell_fp.write(line_to_print)

    line_to_print = 'grep "Critical Path Length" ' + qor_f_name + '\n'
    line_to_print = line_to_print + 'grep "Noncombinational Area" ' + qor_f_name + '\n'
    line_to_print = line_to_print + 'grep "Cell Area" ' + qor_f_name + '\n'
    line_to_print = line_to_print + 'grep "lut_tile" ' + pwr_f_name + ' | grep 100 \n'
    shell_fp.write(line_to_print)

if __name__ == "__main__":
    sys.exit(main())
