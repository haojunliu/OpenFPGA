import sys, os
import fpga_modules

def print_hr_bits (fpga_configs, size_x, size_y):
    for i in xrange(size_y):
        for j in xrange(size_x):
            if fpga_configs[i][j].name == '':
                print '(unused)',
            else:
                print fpga_configs[i][j].name,
            print fpga_configs[i][j].y_loc,
            print fpga_configs[i][j].x_loc,
            print ''

            if fpga_configs[i][j].tile_type == fpga_modules.TILE_TYPE_LUT:
                sub_block_id = 0
                for sub_block in fpga_configs[i][j].sub_block:
                    print 'lut:',
                    print sub_block_id
                    sub_block_id = sub_block_id + 1

                    for i in sub_block.lut_configs:
                        sys.stdout.write(str(i))

                    print ''
