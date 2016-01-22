import sys, os, math

def main(argv=None):

    shell_fn = "run_all_verilog.sh"
    shell_fp = open(shell_fn, 'w')

    line_to_print = '#!/bin/bash\n'
    shell_fp.write(line_to_print)

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [8, 12, 16]:
                for chanxy_w in [8, 12, 16]:
                    for chanxy_num in [80, 120, 160]:
                        config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num)

                        gen_exe_file(shell_fp, config_name)

def gen_exe_file(shell_fp, config_name):

    config_fn = 'lut_tile_config_' + config_name
    sweep_dir = 'lut_tile_' + config_name
    sweep_dir = '../sweep/' + sweep_dir + '/generated-src'

    line_to_print = '# ' + config_name + '\n'
    line_to_print = line_to_print + 'cd ../../src/lut_tile\n'
    line_to_print = line_to_print + 'rm -rf lut_tile_config.scala\n'
    line_to_print = line_to_print + 'ln -s config/' + config_fn + ' lut_tile_config.scala\n'
    line_to_print = line_to_print + 'cd ../../verilog/lut_tile\n'
    line_to_print = line_to_print + 'make\nmv generated-src/lut_tile.v tools/lut_tile_old.v\n'
    line_to_print = line_to_print + 'cd tools\n'
    line_to_print = line_to_print + '~/bin/python code_rm.py --modules-to-rm "xbar configs_latches" --src-file lut_tile_old.v > lut_tile.v\n'
    line_to_print = line_to_print + '~/bin/python xbar_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > xbar.v\n'
    line_to_print = line_to_print + '~/bin/python cm_gen.py --config-file ../../../src/lut_tile/lut_tile_config.scala > cm.v\n'
    line_to_print = line_to_print + 'rm -rf lut_tile_old.v\n'
    line_to_print = line_to_print + 'mv *v ' + sweep_dir + '\n'
    line_to_print = line_to_print + 'cd ..\n'

    shell_fp.write(line_to_print)

if __name__ == "__main__":
    sys.exit(main())
