import sys, os, math

def main(argv=None):

    for lut_size in range (4, 6+1):
        for clb_size in range (4, 10+1):
            for ipin_w in [8, 12, 16]:
                for chanxy_w in [8, 12, 16]:
                    for chanxy_num in [80, 120, 160]:
                        config_name = str(lut_size) + '_' + str(clb_size) + '_' + str(ipin_w) + '_' + str(chanxy_w) + '_' + str(chanxy_num)
                        gen_config_file(config_name, lut_size, clb_size, ipin_w, chanxy_w, chanxy_num)

def gen_config_file(config_name, lut_size, clb_size, ipin_w, chanxy_w, chanxy_num):

    config_file_name = 'lut_tile_config_' + config_name

    config_fp = open (config_file_name, 'w')

    line_to_print = 'package fpga_components\n'
    config_fp.write(line_to_print)
    line_to_print = '{\n'
    config_fp.write(line_to_print)
    line_to_print = '\n'
    config_fp.write(line_to_print)
    line_to_print = 'import Chisel._\nimport scala.math._\n\nobject LutConstants {\n'
    config_fp.write(line_to_print)

    line_to_print = '    // LUT CONFIG\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_INPUTS_PER_LUT = ' + str(lut_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_OUTPUTS_PER_LUT = ' + str(1) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CONFIGS_PER_LUT = ' + str(1<<lut_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_MUXES_PER_LUT = ' + str(1) + '\n'
    config_fp.write(line_to_print)

    line_to_print = '    // CLB CONFIG\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CLB_IN = ' + str(lut_size*clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CLB_OUT = ' + str(clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_LUTS_PER_CLB = ' + str(clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CLB_LUT_CONFIGS = ' + str((1<<lut_size)*clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CLB_MUX_CONFIGS = ' + str(clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_TOTAL_MUX_CONFIGS = ' + str(clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_IPIN_PER_TILE = ' + str(int(lut_size*clb_size*0.5)+3) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_OPIN_PER_TILE = ' + str(clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_XBAR_INPUTS = ' + str(int(lut_size*clb_size*0.5)+3+clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_XBAR_OUTPUTS = ' + str(lut_size*clb_size) + '\n'
    config_fp.write(line_to_print)

    per_mux_config = int(math.floor(math.log((int(lut_size*clb_size*0.5)+3+clb_size)- 0.000001, 2) + 1))
    line_to_print = '    var VAR_NUM_XBAR_PER_MUX_CONFIGS = ' + str(per_mux_config) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_XBAR_CONFIGS = ' + str(per_mux_config*lut_size*clb_size) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_TOTAL_XBAR_CONFIGS = VAR_NUM_XBAR_CONFIGS\n'
    config_fp.write(line_to_print)

    line_to_print = '    var VAR_IPIN_INPUT_WIDTH = ' + str(ipin_w) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_IPIN_CONFIG_WIDTH = ' + str(int(math.floor(math.log(ipin_w - 0.00001, 2) + 1))) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_NUM_CHANXY_PER_TILE = ' + str(int(chanxy_num*0.5)) + '\n'
    config_fp.write(line_to_print)

    line_to_print = '    var VAR_CHANXY_INPUT_WIDTH = ' + str(chanxy_w) + '\n'
    config_fp.write(line_to_print)
    line_to_print = '    var VAR_CHANXY_CONFIG_WIDTH = ' + str(int(math.floor(math.log(chanxy_w - 0.00001, 2) + 1))) + '\n'
    config_fp.write(line_to_print)

    line_to_print = '    var VAR_LUT_CONFIGS_START = 0\n'
    line_to_print = line_to_print + '    var VAR_LUT_CONFIGS_END = VAR_LUT_CONFIGS_START + VAR_NUM_CLB_LUT_CONFIGS - 1\n'
    line_to_print = line_to_print + '    var VAR_MUX_CONFIGS_START = VAR_NUM_CLB_LUT_CONFIGS\n'
    line_to_print = line_to_print + '    var VAR_MUX_CONFIGS_END = VAR_MUX_CONFIGS_START + VAR_TOTAL_MUX_CONFIGS - 1\n'
    line_to_print = line_to_print + '    var VAR_XBAR_CONFIGS_START = VAR_MUX_CONFIGS_END + 1\n'
    line_to_print = line_to_print + '    var VAR_XBAR_CONFIGS_END = VAR_XBAR_CONFIGS_START + VAR_TOTAL_XBAR_CONFIGS - 1\n'
    num_ipin_config = (int(lut_size*clb_size*0.5)+3)*(int(math.floor(math.log(ipin_w - 0.00001, 2) + 1)))
    line_to_print = line_to_print + '    var VAR_TOTAL_IPIN_CONFIGS = ' + str(num_ipin_config) + '\n'
    line_to_print = line_to_print + '    var VAR_SBCB_IPIN_CONFIGS_START = VAR_XBAR_CONFIGS_END + 1\n'
    line_to_print = line_to_print + '    var VAR_SBCB_IPIN_CONFIGS_END = VAR_SBCB_IPIN_CONFIGS_START + VAR_TOTAL_IPIN_CONFIGS - 1\n'
    num_chanxy_config = int(chanxy_num*0.5)*(int(math.floor(math.log(chanxy_w - 0.00001, 2) + 1)))
    line_to_print = line_to_print + '    var VAR_TOTAL_CHANXY_CONFIGS = ' + str(num_chanxy_config) + '\n'
    line_to_print = line_to_print + '    var VAR_SBCB_CHANXY_CONFIGS_START = VAR_SBCB_IPIN_CONFIGS_END + 1\n'
    line_to_print = line_to_print + '    var VAR_SBCB_CHANXY_CONFIGS_END = VAR_SBCB_CHANXY_CONFIGS_START + VAR_TOTAL_CHANXY_CONFIGS - 1\n'
    total_num_config = (1<<lut_size)*clb_size + clb_size + per_mux_config*lut_size*clb_size + num_ipin_config + num_chanxy_config
    line_to_print = line_to_print + '    var VAR_TOTAL_NUM_CONFIGS = ' + str(total_num_config) + '\n'
    level_of_config_depth = 1 + total_num_config/32
    line_to_print = line_to_print + '    var VAR_CONFIGS_FILE_DEPTH = ' + str(level_of_config_depth) + '\n'
    config_fp.write(line_to_print)

    line_to_print = '}\n\n}\n'
    config_fp.write(line_to_print)

    config_fp.close()

if __name__ == "__main__":
    sys.exit(main())
