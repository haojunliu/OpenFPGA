#!/bin/csh
echo $1
set test_case_name = $argv[1]

python reRouteMain.py \
    --net-file          ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.reRoute    \
    --net-reroute-file  ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.net.bitGen     \
    --place-file        ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.place.reRoute  \
    --route-file        ../../tasks/func_test_circuit/current-run/vpr_4_4_8_8_40_x5_y5.xml/${test_case_name}.v/${test_case_name}.route.reRoute
