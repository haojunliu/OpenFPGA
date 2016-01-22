##########################################################################################
## ICC Design Planning RM
## flat_dp: Virtual Flat Placement, PNS, PNA, IPO, Proto Route, and Explore Runs
## Version: D-2010.03-SP2 (July 6, 2010)
## Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################

source -echo icc_setup.tcl
source proc_explore.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_FLOORPLAN_CEL -to flat_dp
open_mw_cel flat_dp
link



source common_placement_settings_icc.tcl
source common_optimization_settings_icc.tcl

## (Optional) Set ideal network on nets with fanout larger than the specified threshold
if {$ICC_DP_SET_HFNS_AS_IDEAL_THRESHOLD != ""} {
	set hf_nets [all_high_fanout -nets -threshold $ICC_DP_SET_HFNS_AS_IDEAL_THRESHOLD]
	if { $hf_nets != "" } {
		redirect /dev/null {set_load 0 -subtract_pin_load $hf_nets}
		redirect /dev/null {set_ideal_network -no_propagate $hf_nets}
	}
}

## (Optional) Set ideal network on mixed clock/signal paths with high fanout; this will be removed in clock_opt_psyn_icc.tcl
if {$ICC_DP_SET_MIXED_AS_IDEAL eq "true"} {set_ideal_network [all_fanout -flat -clock_tree]}

## Additional reporting before the major steps
if {$ICC_DP_VERBOSE_REPORTING eq "true"} {
	check_design -summary > ${REPORTS_DIR_DP}/flat_dp.check_design.rpt
	report_net_fanout -threshold 50 > ${REPORTS_DIR_DP}/flat_dp.high_fanout.rpt
}



########################################################################################
## Set Placement Constraints
########################################################################################

## You can control if you want to unfix macros before placement:
#	set ICC_DP_FIX_MACRO_LIST ""		: unfix all macros;
#						  it performs remove_dont_touch_placement on macros
#	set ICC_DP_FIX_MACRO_LIST skip		: skip unfix of macros; retain existing fix status;
#					          it change macro fix status
#	set ICC_DP_FIX_MACRO_LIST {a list}	: fix specified macros and unfix the others; useful if you want to preserve certain macros locations
#						  it performs remove_dont_touch_placement and then set_dont_touch_placement on specified macros
if {[all_macro_cells] != ""} {

	if {$ICC_DP_FIX_MACRO_LIST eq ""} {
	        remove_dont_touch_placement [all_macro_cells]
	} elseif {$ICC_DP_FIX_MACRO_LIST eq "skip"} {
	        echo "remove_dont_touch_placement for macros is skipped"
	} else {
	        remove_dont_touch_placement [all_macro_cells]
	        set_dont_touch_placement $ICC_DP_FIX_MACRO_LIST}

}


## You can customize padding and location preference by loading a file
## Below are examples for the kind of commands to put in the file using set_keepout_margin and set_fp_macro_options
#       set_keepout_margin -type soft -all_macros -outer {10 10 10 10}
#       set_fp_macro_array -name array1 -align_edge t -elements {macro_1 macro_2 macro_3}
if {[file exists [which $CUSTOM_ICC_DP_PLACE_CONSTRAINT_SCRIPT]]} {
        source $CUSTOM_ICC_DP_PLACE_CONSTRAINT_SCRIPT}


## You can customize power network synthesis constraints by loading a file
## Below are examples for the kind of commands to put in the file using set_fp_rail_constraints
#       set_fp_rail_constraints -set_global -keep_ring_outside_core -no_routing_over_hard_macros
if {[file exists [which $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT]]} {
	source $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT}



######################################################################################################################
## Flat Design Planning Flow : Virtual Flat Placement, Power Network Synthesis/Analysis, In Place Optimization, and Proto Route
######################################################################################################################

## There're three ways (or modes) that you can perform flat design planning flow depending on your needs.
## Baseline mode : It performs one run of virtual flat placement + global route + PNS/PNA + IPOplain script for flat design planning flow
##	 	   It can serve as your reference and template for interactive runs
## Explore mode : It automates multiple runs of virtual flat placement each with different combinations of placement parameters and options.
##		  It also performs proto route, IPO, and PNS/PNA for full flow feasibility analysis
## Explore mode with parallel structure: Same as Explore mode above but prepares a sub directory for each run
## All modes are based on same underlying flow steps

if {$ICC_DP_EXPLORE_MODE == "false" || $ICC_DP_EXPLORE_MODE == "FALSE"} {

	## // Baseline mode //
	## baseline.tcl : Plain script without automation which can be used as a template or starting point
	source baseline.tcl

} elseif {$ICC_DP_EXPLORE_MODE == "true" || $ICC_DP_EXPLORE_MODE == "TRUE"} {

	## // Explore mode //
	## macro_placement_exploration_dp.tcl : It contains all the runs to be performed. You can customize this file based on your needs. See the file for more details.
	## gen_explore_table : It runs a Perl script to parse the outputs and generate an HTML table: ./${DESIGN_NAME}_explore.html
	save_mw_cel -as saved_cel_before_explore_mode
	close_mw_cel
	source macro_placement_exploration_dp.tcl
        sh rm_icc_dp_scripts/gen_explore_table ${REPORTS_DIR_DP} ${DESIGN_NAME}_explore.html

} elseif {$ICC_DP_EXPLORE_MODE == "parallel" || $ICC_DP_EXPLORE_MODE == "PARALLEL"} {

	## // Explore mode with parallel structure//
	## 1.It prepares a sub directory with design library and necessary scripts for each exploration run.
	## 2.The run script for each run is created by parsing and splitting runs from rm_icc_dp_scripts/macro_placement_exploration_dp.tcl
	## 3.The actual run is not performed. Only directory structures are created to allow you to submit jobs separately for each run.
	##   When preparation is finished, it will exit IC Compiler. Please refer to "Usage" section in rm_icc_dp_scripts/prepare_parallel.ReadMe.txt for further instructions.
	source prepare_parallel.tcl
        sh rm_icc_dp_scripts/prepare_parallel.csh $REPORTS_DIR_DP $RESULTS_DIR $MW_DESIGN_LIBRARY

}

exit
