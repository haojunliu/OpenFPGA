#!/bin/csh

run_25_25.sh single_inv
run_25_25.sh single_inv_reg
run_25_25.sh wide_inv
run_25_25.sh wide_inv_reg
run_25_25.sh ff_en
run_25_25.sh simple_comp
run_25_25.sh multi_consumer
run_25_25.sh counter

run_25_25_bs.sh single_inv
run_25_25_bs.sh single_inv_reg
run_25_25_bs.sh wide_inv
run_25_25_bs.sh wide_inv_reg
run_25_25_bs.sh ff_en
run_25_25_bs.sh simple_comp
run_25_25_bs.sh multi_consumer
run_25_25_bs.sh counter

cd ../../../../archipelago/verilog/lut_tile
run_one_test.sh
cp ./tools/*v ../../../full-fpga-testing/large/src
cd ../lut_tile_sp
run_lut_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/large/src
cd ../io_tile_sp
run_io_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/large/src
cd ../
rm -rf */tools/*v
cd ../../full-fpga-testing/large/src
rm -rf *old*
