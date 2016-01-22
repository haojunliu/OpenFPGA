##################################################################################################
# ICC Hierarchical RM								 	 	
# routeability_on_plangroups_dp: PNS/PNA, IPO, and PGAR					 	
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##################################################################################################

source -echo icc_setup.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_CREATE_PLANGROUPS_CEL -to $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL
open_mw_cel $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL
link

source common_placement_settings_icc.tcl

## You can customize power network synthesis constraints by loading a file
## Below are examples for the kind of commands to put in the file using set_fp_rail_constraints
#       set_fp_rail_constraints -set_global -keep_ring_outside_core -no_routing_over_hard_macros
if {[file exists [which $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT]]} {
	source $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT}

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
if {[file exists [which $CUSTOM_ICC_DP_PNS_SCRIPT]]} {
	source $CUSTOM_ICC_DP_PNS_SCRIPT
} else {
	synthesize_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS -synthesize_power_plan
	commit_fp_rail
}
## Use the following command to check the integrity of the power network
#  check_fp_rail

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
if {[file exists [which $CUSTOM_ICC_DP_PNA_SCRIPT]]} {
	source $CUSTOM_ICC_DP_PNA_SCRIPT
} else {
	analyze_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS
}

#########################################################################################
## Check Placement QoR									#
#########################################################################################
mark_clock_tree -clock_net
if {$ICC_DP_ALLOW_FEEDTHROUGH} {
set_fp_pin_constraints -allow_feedthroughs on
}

if {$ICC_DP_USE_ZROUTE} {
	set_host_options -max_cores $ICC_NUM_CORES
        set_route_zrt_global_options -effort minimum
        set_route_zrt_common_options -plan_group_aware all_routing
	## For large designs, you can try top level routing only by:
	#	        set_route_zrt_common_options -plan_group_aware top_level_routing_only
        route_zrt_global -congestion_map_only true
} else {
	set_fp_flow_strategy -plan_group_aware_routing true
	route_fp_proto -effort medium -congestion_map_only
}
save_mw_cel -as ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_groute_after_pna

extract_rc
create_qor_snapshot -name ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_groute_after_pna




#########################################################################################
## Optimization										#
#########################################################################################
source common_optimization_settings_icc.tcl
set compile_instance_name_prefix dp_ipo_hfs

if {[all_macro_cells] != "" } {
  set_dont_touch_placement [all_macro_cells]
}

optimize_fp_timing -hfs_only

save_mw_cel -as ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs
create_qor_snapshot -name ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs
redirect -file ${REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS}/${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs.rpt {report_timing -cap -tran -input -net -delay max -attribute -physical}

########################################
#           CONNECT P/G                #
########################################

## Connect Power & Ground for non-MV and MV-mode

 if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
   source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
 } else {
    derive_pg_connection -power_net $MW_POWER_NET -power_pin $MW_POWER_PORT -ground_net $MW_GROUND_NET -ground_pin $MW_GROUND_PORT
    if {!$ICC_TIE_CELL_FLOW} {derive_pg_connection -power_net $MW_POWER_NET -ground_net $MW_GROUND_NET -tie}
   }
if { [check_error -verbose] != 0} { echo "SCRIPT-Error, flagging ..." }

if {[file exists [which $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT]]} {
	source $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT
}

save_mw_cel
close_mw_lib

exit
