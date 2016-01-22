#!/bin/bash

run_8_8.sh single_inv
run_8_8.sh single_inv_reg
run_8_8.sh wide_inv
run_8_8.sh wide_inv_reg
run_8_8.sh ff_en
run_8_8.sh simple_comp
run_8_8.sh multi_consumer
run_8_8.sh counter
run_8_8.sh dcounter

run_8_8_bs.sh single_inv
run_8_8_bs.sh single_inv_reg
run_8_8_bs.sh wide_inv
run_8_8_bs.sh wide_inv_reg
run_8_8_bs.sh ff_en
run_8_8_bs.sh simple_comp
run_8_8_bs.sh multi_consumer
run_8_8_bs.sh counter
run_8_8_bs.sh dcounter

cd ../../../../archipelago/verilog/lut_tile
run_one_test.sh
cp ./tools/*v ../../../full-fpga-testing/custom_ms/src
cd ../lut_tile_sp
run_lut_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/custom_ms/src
cd ../io_tile_sp
run_io_tile_sp.sh
cp ./tools/*v ../../../full-fpga-testing/custom_ms/src
cd ../
rm -rf */tools/*v
cd ../../full-fpga-testing/custom_ms/src
rm -rf *old*
