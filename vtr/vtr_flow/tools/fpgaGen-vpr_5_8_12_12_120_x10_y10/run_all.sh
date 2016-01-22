#!/bin/csh

run_10_10.sh single_inv
run_10_10.sh single_inv_reg
run_10_10.sh wide_inv
run_10_10.sh wide_inv_reg
run_10_10.sh ff_en
run_10_10.sh simple_comp
run_10_10.sh multi_consumer
run_10_10.sh counter

run_10_10_bs.sh single_inv
run_10_10_bs.sh single_inv_reg
run_10_10_bs.sh wide_inv
run_10_10_bs.sh wide_inv_reg
run_10_10_bs.sh ff_en
run_10_10_bs.sh simple_comp
run_10_10_bs.sh multi_consumer
run_10_10_bs.sh counter

cd ../../../../archipelago/verilog/lut_tile
run_one_test.sh
cp ./tools/*v ../../../full-fpga-testing/middle/src
cd ../lut_tile_sp
run_lut_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/middle/src
cd ../io_tile_sp
run_io_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/middle/src
cd ../
rm -rf */tools/*v
cd ../../full-fpga-testing/middle/src
rm -rf *old*

