#!/bin/csh

echo $1

set test_case_name = $argv[1]
set target_dir_v = ../../../../full-fpga-testing/custom_ms/src
set src_tb_dir_v = ../../../../vtr/vtr_flow/benchmarks/verilog/${test_case_name}

# copy hl tb
cp ${src_tb_dir_v}/${test_case_name}_fpga_tb.v ${target_dir_v}/../${test_case_name}/

# copy fpga wrapper
cp ${src_tb_dir_v}/fpga_wrapper.v .

~/bin/python bsWrapperGen.py \
    --num-ipin 8 \
    --num-opin 8 \
    --x-size 8 \
    --y-size 8 \
    --configs-en 172 \
    --placement ../../tasks/func_test_circuit/current-run/vpr_6_4_10_10_96_x8_y8.xml/${test_case_name}.v/${test_case_name}.place \
    --test-case-name ${test_case_name}

mv *v ${target_dir_v}/../${test_case_name}/
