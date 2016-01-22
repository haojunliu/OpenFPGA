#!/bin/bash

run_5_5.sh single_inv
run_5_5.sh single_inv_reg
run_5_5.sh wide_inv
run_5_5.sh wide_inv_reg
run_5_5.sh ff_en
run_5_5.sh simple_comp
run_5_5.sh multi_consumer
run_5_5.sh counter

run_5_5_bs.sh single_inv
run_5_5_bs.sh single_inv_reg
run_5_5_bs.sh wide_inv
run_5_5_bs.sh wide_inv_reg
run_5_5_bs.sh ff_en
run_5_5_bs.sh simple_comp
run_5_5_bs.sh multi_consumer
run_5_5_bs.sh counter

cd ../../../../archipelago/verilog/lut_tile
run_one_test.sh
cp ./tools/*v ../../../full-fpga-testing/tiny/src
cd ../lut_tile_sp
run_lut_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/tiny/src
cd ../io_tile_sp
run_io_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/tiny/src
cd ../
rm -rf */tools/*v
cd ../../full-fpga-testing/tiny/src
rm -rf *old*
