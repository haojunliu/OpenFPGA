### Updated added $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT

#########################################################################################
# ICC Design Planning RM
# baseline.tcl: Virtual flat placement, PNS, PNA, IPO, and Proto Route
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
#########################################################################################

##############################################################################################################################
## Set placement strategies
##############################################################################################################################

## Set placement strategies to further fine tune the placer based on your design style.
## To find all available strategies and current values, use:
#       report_fp_placement_strategy

## To place macros on edge of chip or plan group which is default is off:
#	set_fp_placement_strategy -macros_on_edge on

## To control channels among macros which std cell can not be placed which is default 0:
set_fp_placement_strategy -sliver_size 10

## For multi-voltage designs, to place level shifters and isolation cells closer to the boundary, set voltage area interface net weight:
# set_fp_placement_strategy -voltage_area_interface_net_weight $ICC_DP_PLACEMENT_VA_NET_WEIGHT
# set_fp_placement_strategy -voltage_area_net_weight_LS_only on


##############################################################################################################################
## Create virtual flat placement
##############################################################################################################################

## create_fp_placement is default with -effort low
## Alternatively, you can break the placement into 3 steps and fine tune the results gradually :
# 	create_fp_placement -effort low -no_legalize
# 	1st placement is intended to give you a fast and default macro placement result which allows you to observe design characteristics.
#   	Then please check GUI for macro locations and connectivity.
#
#	legalize_fp_placement
#
#	create_fp_placement -effort high -incremental all
# 	2nd placement is intended to let you add appropriate options to improve results
#	 for ex,
#	-timing_driven
#	-congestion_driven
create_fp_placement


##############################################################################################################################
## Check routability & timing
##############################################################################################################################
route_fp_proto -effort medium
save_mw_cel -as flat_dp_groute_after_place
remove_route_by_type -signal_detail_route -clock_tie_off -pg_tie_off

extract_rc -estimate
create_qor_snapshot -name flat_dp_place -qor -timing -constraint


##############################################################################################################################
## Power Network Synthesis (PNS)
##############################################################################################################################
#######################
## Setup constraints ##
#######################
## To use your existing virtual pad file, please load it before PNS by the following:
## (virtual pad is created by user or tool to serve as temporary source of power or ground for power network synthesis consideration)
#       create_fp_virtual_pad -load_file $YOUR_PNS_VIRTUAL_PAD_FILE
#################################################################
## Setup synthesize_fp_rail options based on your design style ##
#################################################################
## To run it on block level with existing PG pins, you can use following option
#	-use_pins_as_pads
## To run it on a block without existing PG pins, you can use following option
#       -use_strap_ends_as_pads
## To run it on top level with existing power pads, you can use one of the following options
#	-pad_masters $PNS_PAD_MASTERS                   (specify pad cell masters) or
#	-read_pad_master_file $PNS_PAD_MASTER_FILE      (specify a file with pad cell masters) or
#	-read_pad_instance_file $PNS_PAD_INSTANCE_FILE  (specify a file with pad cell instances)
## To run it on top level without existing power pads, you can use following option
#       -synthesize_power_pads
## To simulate standard cell rail during PNS, you can use following option
#       -create_virtual_rails $PNS_VIRTUAL_RAIL_LAYER
#synthesize_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS -synthesize_power_plan

derive_pg_connection -power_net VDD -power_pin vdd -ground_net VSS -ground_pin vss
synthesize_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS -synthesize_power_plan -target_voltage_drop $PNS_TARGET_VOLTAGE_DROP -create_virtual_rails $PNS_VIRTUAL_RAIL_LAYER -use_strap_ends_as_pads -synthesize_power_pads
commit_fp_rail

##############################################################################################################################
## Power Network Synthesis (PNA)
##############################################################################################################################
## To run it on block level with existing PG pins, you can use following option
#	-use_pins_as_pads
## To run it on a block without existing PG pins, you can use following commands before analyze_fp_rail
#       create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad (VDD is your power net name)
#       create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad (VSS is your ground net name
##   then add the following option to analyze_fp_rail
#       -use_pins_as_pads
## To run it on top level with existing power pads, you can use one of the following options
#       -pad_masters $PNS_PAD_MASTERS                   (specify pad cell masters) or
#       -read_pad_master_file $PNS_PAD_MASTER_FILE      (specify a file with pad cell masters) or
#       -read_pad_instance_file $PNS_PAD_INSTANCE_FILE  (specify a file with pad cell instances)
## To run it on top level without existing power pads, you cna use following commands before analyze_fp_rail
#       create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad (VDD is your power net name)
#       create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad (VSS is your ground net name
## To simulate standard cell rail during PNA, you can use the following option
#       -create_virtual_rails $PNS_VIRTUAL_RAIL_LAYER
## To use more accurate power consumption of each instance calculated in ICC, you can use the following option
#	-analyze_power
analyze_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS

source common_optimization_settings_icc.tcl
extract_rc -estimate
report_timing -cap -tran -input -net -delay max > $REPORTS_DIR_DP/optimize_fp_timing_before.rpt

set compile_instance_name_prefix dp_ipo
optimize_fp_timing

if {[file exists [which $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT]]} {
        source $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT
}

route_fp_proto -effort medium
save_mw_cel -as flat_dp_groute
remove_route_by_type -signal_detail_route -clock_tie_off -pg_tie_off

extract_rc -estimate
create_qor_snapshot -name flat_dp -qor -timing -constraint
report_qor_snapshot > ${REPORTS_DIR_DP}/final.qor
report_timing -cap -tran -input -net -delay max > ${REPORTS_DIR_DP}/final.rpt

set_dont_touch_placement [all_macro_cells]
save_mw_cel -overwrite
write_floorplan -placement {io hard_macro soft_macro} ${RESULTS_DIR}/dump.floorplan
write_floorplan -preroute ${RESULTS_DIR}/dump.route
write_floorplan -all ${RESULTS_DIR}/dump.complete_floorplan
write_pin_pad_physical_constraints -cel [get_object_name  [current_mw_cel]] -io_only -constraint_type side_order ${RESULTS_DIR}/dump.tdf

### Outputs for DCT ###
write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output ${RESULTS_DIR}/dump.DCT.def
write_floorplan -create_terminal -create_bound -row -preroute -placement {io hard_macro soft_macro} ${RESULTS_DIR}/dump.DCT.fp

close_mw_cel

