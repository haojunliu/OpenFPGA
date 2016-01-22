import sys, os, math

def main(argv=None):

    shell_fn = "build_dir_gen.sh"
    shell_fp = open(shell_fn, 'w')

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [8, 12, 16]:
                for chanxy_w in [8, 12, 16]:
                    for chanxy_num in [80, 120, 160]:
                        config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num)

                        gen_dir_file(shell_fp, config_name)

def gen_dir_file(shell_fp, config_name):

    dir_name = 'lut_tile_' + config_name

    line_to_print = 'mkdir ' + dir_name + '\n'
    line_to_print = line_to_print + 'mkdir -p ' + dir_name + '/generated-src\n'

    shell_fp.write(line_to_print)

if __name__ == "__main__":
    sys.exit(main())
