#!/bin/csh

echo $1

set test_case_name = $argv[1]
set target_dir_v = ../../../../full-fpga-testing/small/src

~/bin/python bsWrapperGen.py \
    --num-ipin 8 \
    --num-opin 8 \
    --x-size 5 \
    --y-size 5 \
    --configs-en 262 \
    --placement ../../tasks/func_test_circuit/current-run/vpr_6_10_16_16_160_x5_y5.xml/${test_case_name}.v/${test_case_name}.place \
    --verilog-wrapper ${test_case_name}_wrapper.v

#cp gen_src/*v ${target_dir_v}
