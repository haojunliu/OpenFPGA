#!/bin/csh

echo $1

set test_case_name = $argv[1]
set target_dir = ../../../../archipelago/src/of_comp
set target_dir_v = ../../../../full-fpga-testing/tiny/src

python rePack.py \
    --in-abc-file ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif \
    --out-abc-file ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif.out

mv ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif \
    ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif.bkp

mv ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif.out \
    ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif

python preprocess.py\
    --in-abc-file ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif \
    --out-abc-file ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif.out \
    --net-file          ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.reRoute

mv ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif.out \
    ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif

python reRouteMain.py \
    --net-file          ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.reRoute      \
    --net-reroute-file  ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.bitGen       \
    --place-file        ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.place.reRoute    \
    --route-file        ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.route.reRoute    \
    --abc-file          ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif

python main.py  \
    --lut-size 4    \
    --num-luts 4    \
    --lut-output 1  \
    --clb-size 4    \
    --num-ipin 11   \
    --x-size 5 \
    --y-size 5 \
    --route ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.route.bitGen \
    --route-dump ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.route.tileDump \
    --net-file ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.bitGen \
    --placement ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.place.bitGen \
    --abc ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.abc.blif \
    --bitstream ${test_case_name}.bs

#copy io_tile_sp files
cp io_tile_gen/* ${target_dir}/../io_tile_sp
cp gen_src/io_tile_scala.config ${target_dir}/../io_tile_sp

#copy lut_tile_sp files
cp lut_tile_gen/* ${target_dir}/../lut_tile_sp

#copy common lut files
cp scala_src/*scala ${target_dir}

#copy unique lut_file files
cp gen_src/lut_tile_config.scala ${target_dir}/../lut_tile
cp gen_src/lut_tile_config.scala ${target_dir}/../lut_tile_sp
cp gen_src/lut_tile_config.scala ${target_dir}

#copy lut_tile_sp files
cp gen_src/lut_tile_scala.config ${target_dir}/../lut_tile_sp

cp gen_src/*v ${target_dir_v}
mv ${test_case_name}.bs ${target_dir_v}/../${test_case_name}/
