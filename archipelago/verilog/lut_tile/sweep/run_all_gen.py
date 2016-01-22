import sys, os, math

def main(argv=None):

    shell_fn = "run_all_asic.sh"
    shell_fp = open(shell_fn, 'w')

    line_to_print = '#!/bin/bash\n'
    shell_fp.write(line_to_print)

    test_case_count = 0

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [8, 12, 16]:
                for chanxy_w in [8, 12, 16]:
                    for chanxy_num in [80, 120, 160]:
                        config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num)

                        gen_dir_file(shell_fp, config_name, test_case_count)
                        test_case_count = test_case_count + 1

def gen_dir_file(shell_fp, config_name, test_case_count):

    dir_name = 'lut_tile_' + config_name
    line_to_print = 'cd ' + dir_name + '\n'
    shell_fp.write(line_to_print)

    line_to_print = '../run_tile.sh > /dev/null 2>&1 &\n'
    shell_fp.write(line_to_print)

    if test_case_count%9 == 8:

        line_to_print = 'wait\n'
        shell_fp.write(line_to_print)

    line_to_print = 'cd ..\n'
    shell_fp.write(line_to_print)

if __name__ == "__main__":
    sys.exit(main())
