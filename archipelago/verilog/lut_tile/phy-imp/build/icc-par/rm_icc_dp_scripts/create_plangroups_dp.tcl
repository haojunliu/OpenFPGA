##################################################################################################
# ICC Hierarchical RM								 	 	
# create_plangroup_dp: Plangroup Creation/Import, Virtual Flat Placement, and Plan Group Shaping
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##################################################################################################

source -echo icc_setup.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_FLOORPLAN_CEL -to $ICC_DP_CREATE_PLANGROUPS_CEL
open_mw_cel $ICC_DP_CREATE_PLANGROUPS_CEL
link

source common_placement_settings_icc.tcl

## (Optional) Set ideal network on nets with fanout larger than the specified threshold
if {$ICC_DP_SET_HFNS_AS_IDEAL_THRESHOLD != ""} {
        set hf_nets [all_high_fanout -nets -threshold $ICC_DP_SET_HFNS_AS_IDEAL_THRESHOLD]
        if { $hf_nets != "" } {
                redirect /dev/null {set_load 0 -subtract_pin_load $hf_nets}
                redirect /dev/null {set_ideal_network -no_propagate $hf_nets}
        }
}

## (Optional) Set ideal network on mixed clock/signal paths with high fanout; this will be removed in clock_opt_psyn_icc.tcl
#if {$ICC_DP_SET_MIXED_AS_IDEAL eq "true"} {set_ideal_network [all_fanout -flat -clock_tree]}

## Additional reporting before the major steps
if {$ICC_DP_VERBOSE_REPORTING} {
        check_design -summary > ${REPORTS_DIR_DP_CREATE_PLANGROUPS}/${ICC_DP_CREATE_PLANGROUPS_CEL}_pre.check_design.rpt
        report_net_fanout -threshold 50 > ${REPORTS_DIR_DP_CREATE_PLANGROUPS}/${ICC_DP_CREATE_PLANGROUPS_CEL}_pre.high_fanout.rpt
}

#########################################################################################
# Create Plangroups									#
#########################################################################################
## 1.To decide which modules to create into plangroups:
## - A.Please use "hierarchy browser" or
## - B.you can run placement without legalization first and based on the result to make your decision:
##	create_fp_placement -effort low -no_legalize
## 2.If you have decided, specify the list of modules in ICC_DP_PLAN_GROUPS (icc_setup.tcl)
## 3.If you already have a dumped floorplan file containing plangroups, specify it in ICC_DP_PLANGROUP_FILE (icc_setup.tcl)
##   Note: Dumped floorplan file should be generated from write_floorplan command.
##   Starting from C-2009.06 release, you need to "set create_fp_plan_groups true" before write_floorplan to write out plangroups.

if {[file exists [which $ICC_DP_PLANGROUP_FILE]]} {
	source $ICC_DP_PLANGROUP_FILE
} elseif {$ICC_DP_PLAN_GROUPS != ""} {
	create_plan_groups $ICC_DP_PLAN_GROUPS -cycle_color
} else {
	echo "WARNING: Please create plan groups before you contunue with hierarchical flow"
}
create_fp_plan_group_padding -internal_widths {2 2 2 2} -external_widths {2 2 2 2} [get_plan_groups *]

#########################################################################################
# Set Placement Constraints								#
#########################################################################################
## You can control if you want to unfix macros before placement:
#       set ICC_DP_FIX_MACRO_LIST ""            : unfix all macros; performs remove_dont_touch_placement
#       set ICC_DP_FIX_MACRO_LIST skip          : skip unfix of macros; retain existing fix status;
#       set ICC_DP_FIX_MACRO_LIST {a list}      : fix specified macros and unfix the others; useful if you want to preserve certain macros locations
#                                                 it performs remove_dont_touch_placement and then set_dont_touch_placement on specified macros
if {[all_macro_cells] != ""} {
        if {$ICC_DP_FIX_MACRO_LIST eq ""} {
                remove_dont_touch_placement [all_macro_cells]
        } elseif {$ICC_DP_FIX_MACRO_LIST eq "skip"} {
                echo "remove_dont_touch_placement for macros is skipped"
        } else {
                remove_dont_touch_placement [all_macro_cells]
                set_dont_touch_placement $ICC_DP_FIX_MACRO_LIST}
}

## You can customize padding and location preference by loading a file with set_keepout_margin and set_fp_macro_array, for example:
#       set_keepout_margin -type soft -all_macros -outer {10 10 10 10}
#       set_fp_macro_array -name array1 -align_edge t -elements {macro_1 macro_2 macro_3}
if {[file exists [which $CUSTOM_ICC_DP_PLACE_CONSTRAINT_SCRIPT]]} {
        source $CUSTOM_ICC_DP_PLACE_CONSTRAINT_SCRIPT}

#########################################################################################
# Below steps are skipped if $ICC_DP_PLANGROUP_FILE is provided				#
#########################################################################################
if {$ICC_DP_PLAN_GROUPS != "" && $ICC_DP_PLANGROUP_FILE == ""} {

	#################################################################################
	# Shape Plangroups								#
	#################################################################################

	## Set placement strategies to further fine tune the placer based on your design style
	## To find all available strategies and current values, use:
	#       report_fp_placement_strategy
	## To control net weight on plan group interface net:
	#	set_fp_placement_strategy -plan_group_interface_net_weight 2
	## To enable auto detection of logical hierarchies other than existing placegroups:
	#	set_fp_placement_strategy -force_auto_detect_hierarchy on
	## To control channels among macros which std cell can not be placed:
	set_fp_placement_strategy -sliver_size 10

	set_fp_placement_strategy -macros_on_edge off

	set_host_options -max_cores $ICC_NUM_CORES	
	create_fp_placement -effort low -no_legalize

	shape_fp_blocks -channels
        ## Even if -channels is speficied, tool may not create channels if tool determines that they are not needed
	#  If you want to create channels with specific spacing btw plangroups, set the following command before shape_fp_blocks:
        #  set_fp_shaping_strategy -min_channel_size value

	save_mw_cel -as ${ICC_DP_CREATE_PLANGROUPS_CEL}_shape
}

#################################################################################
# Placement Based on Plangroups							#
#################################################################################

## To place macros on edge of chip or plan group which is default off.
## Suggested to set it after plan groups are created:
set_fp_placement_strategy -macros_on_edge auto


create_fp_placement -effort high
## Congestion aware shaping:
#  If you see significant congestion after shape_fp_blocks, instead of using the above command,
#  you can try the following combination of commands to reduce congestion:
#  	set_fp_placement_strategy -congestion_effort low|medium|high (low is default;medium and high uses zroute)
#	set_fp_placement_strategy -adjust_shapes on (incremental shaping)
#	create_fp_placement -congestion_driven -effort high


report_fp_placement > ${REPORTS_DIR_DP_CREATE_PLANGROUPS}/${ICC_DP_CREATE_PLANGROUPS_CEL}_place.placement_rpt

if {$DFT && $ICC_DP_DFT_FLOW} {
	optimize_dft -plan_group
	redirect -file $REPORTS_DIR_DP_CREATE_PLANGROUPS/${ICC_DP_CREATE_PLANGROUPS_CEL}_check_scan_chain.rpt {check_scan_chain}
	#redirect -file $REPORTS_DIR_DP_CREATE_PLANGROUPS/${ICC_DP_CREATE_PLANGROUPS_CEL}_report_scan_chain.rpt {report_scan_chain}
}

#####################################################################################################
# REMINDER: After shaping is done, please examine plan group results and make necessary adjustments #
#####################################################################################################

save_mw_cel
close_mw_lib

exit
