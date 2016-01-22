##################################################################################################
# ICC Hierarchical RM								 	 	
# optimization_dp: Clokc Tree Planning, Pin Assignment, IPO on Feedthrough, and Timing Budgetting
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##################################################################################################

source -echo icc_setup.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL -to $ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL
open_mw_cel $ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL
link

source common_placement_settings_icc.tcl
source common_optimization_settings_icc.tcl

#########################################################################################
## Clock Tree Planning (Optional; uncomment the section to use it)			#
#########################################################################################
#if {$ICC_DP_CTP} {
#	# For abutted designs, set following variables:
#	#	set cp_in_full_abut_mode true
#	#	set cp_full_abut_cts_region_aware true
#
#	set clock_plan_option_cmd "set_fp_clock_plan_options \
#				-route_mode none \
#				-keep_block_tree true \
#				-update_clock_latency false \
#				-output_directory ${RESULTS_DIR}/ctp_output"
#	if {$ICC_DP_CTP_ANCHOR_CEL != ""} {lappend clock_plan_option_cmd -anchor_cell $ICC_DP_CTP_ANCHOR_CEL}
#	eval $clock_plan_option_cmd
#
#	## To specify the clock root nets to be synthesized, add the option:
#	#	-clock_nets {list_of_clock_nets}
#	## To avoid clock feedthrough on plan groups:
#	#	set_clock_tree_exceptions -preserve_hierarchy {plan_group_name}
#	
#	report_fp_clock_plan_options
#	
#	compile_fp_clock_plan
#	save_mw_cel -as ${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ctp
#	redirect -file ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ctp.clk {report_clock_tree -summary}
#	redirect -file ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ctp.rpt {report_timing -cap -tran -input -net -delay max -attribute -physical}
#}

#########################################################################################
## Pin Assignment									#
#########################################################################################
if {$ICC_DP_ALLOW_FEEDTHROUGH} {
  set_fp_pin_constraints -allow_feedthroughs on -keep_buses_together on
} else {
  set_fp_pin_constraints -keep_buses_together on
}

report_fp_pin_constraints

if {$ICC_DP_USE_ZROUTE} {
        set_route_zrt_global_options -effort low
        set_route_zrt_common_options -plan_group_aware all_routing
	## For large designs, you can try top level routing only by:
	#	        set_route_zrt_common_options -plan_group_aware top_level_routing_only
        route_zrt_global
} else {
        set_fp_flow_strategy -plan_group_aware_routing true
        route_global
}

analyze_fp_routing -finalize plan_groups
save_mw_cel -as ${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_pincut

# analyze_fp_routing -output_feedthroughs < nets | ports >
# use the following to view feedthough nets:
# File/Task/Design Planning/Pin Assignment/Analyze Pin Routing

#########################################################################################
## Optimization										#
#########################################################################################
## For large designs, you can try using trace mode by using the following command:
#	set_fp_trace_mode

set compile_instance_name_prefix dp_ipo

optimize_fp_timing
# Here're some options to consider:
#       -fix_design_rule (fix max tran violations)
#       -effort effort (medium and high)
#       -report_qor (report QoR of optimization)

## If you turn on trace mode before optimize_fp_timing, please use the following command to turn it off:
#	end_fp_trace_mode

save_mw_cel -as ${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ipo
redirect -file ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ipo.rpt {report_timing -cap -tran -input -net -delay max -attribute -physical}
create_qor_snapshot -name ${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_ipo

#########################################################################################
## Timing Budgeting									#
#########################################################################################
check_fp_timing_environment -unbudgetable_pins -unconstrained_pins > $REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_check_timing_env.rpt

## If clock tree is fully synthesized on the design, set the following to let timing budgeting recognize the clock tree:
#	set synthesized_clocks TRUE
#	set_propagated_clock [get_clocks *]

allocate_fp_budgets -file_format_spec "$BUDGETING_SDC_OUTPUT_DIR/m.sdc"
# use ./sdc/m.sdc to write budgets to "sdc" dir in files named based on cell master
# use ./sdc/i.sdc to write budgets to "sdc" dir in files named based on instance name
# We're using cell master style through out the RM

check_fp_budget_result -block $ICC_DP_PLAN_GROUPS -file_name ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_budget_result.rpt

# remove_propagated_clock [all_fanout -clock]
# remove_propagated_clock *

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

save_mw_cel
close_mw_lib

exit
