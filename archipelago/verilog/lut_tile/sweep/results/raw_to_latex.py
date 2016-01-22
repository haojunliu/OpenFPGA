import sys, os, math

def main(argv=None):

    in_fn = 'asic.perf.raw'
    out_fn = 'asic.perf.latex'

    in_fp = open(in_fn, 'r')
    out_fp = open(out_fn, 'w')

    line1 = in_fp.readline()

    while len(line1) != 0:

        line2 = in_fp.readline()
        line3 = in_fp.readline()
        line4 = in_fp.readline()
        line5 = in_fp.readline()

        line1 = line1.split()
        tile_name = line1[0]

        tile_name = tile_name.split('_')
        tile_name = tile_name[0] + '\t&\t' + tile_name[1] + '\t&\t' + tile_name[2] + '\t&\t' + tile_name[3] + '\t&\t' + tile_name[4]

        line2 = line2.split()
        critical_path_length = line2[3]

        line3 = line3.split()
        storage_area = line3[2]
        storage_area = string_float_trunc(storage_area)
        if storage_area.__len__() < 8:
            storage_area = storage_area + '\t'


        line4 = line4.split()
        total_area = line4[2]
        total_area = string_float_trunc(total_area)
        if total_area.__len__() < 8:
            total_area = total_area + '\t'

        if total_area.__len__() < 12:
            total_area = total_area + '\t'

        line5 = line5.split()
        static_pwr = line5[3]

        #write it to file
        line_to_print = tile_name + '\t&\t' + critical_path_length + '\t&\t' + storage_area + '\t&\t' + total_area + '\t&\t' + static_pwr + '    \\\\ \\hline' + '\n'
        out_fp.write(line_to_print)

        line1 = in_fp.readline()

def string_float_trunc(input_string):

    for i in range (0, 32):
        if input_string[i] == '.':
            return input_string[0:i+3]

if __name__ == "__main__":
    sys.exit(main())
