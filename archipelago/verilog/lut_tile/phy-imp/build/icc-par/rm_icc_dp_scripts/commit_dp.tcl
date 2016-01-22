##########################################################################################
# ICC Hierarchical RM								 	
# commit_dp: Commit, Check Pin Assignment, and Split Libraries			 	
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################

source -echo icc_setup.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL -to $ICC_DP_COMMIT_CEL
open_mw_cel $ICC_DP_COMMIT_CEL
link

source common_placement_settings_icc.tcl

#########################################################################################
## Commit Plangroups									#
#########################################################################################
## Write out floorplan with plan groups
write_floorplan -create_terminal -placement {io hard_macro} -row -track ${RESULTS_DIR}/fullchip_plangroup.tcl
write_def -version 5.6 -rows -macro -pins -blockages -verbose -output ${RESULTS_DIR}/fullchip.def

commit_fp_plan_groups -push_down_power_and_ground_straps
save_mw_cel -hierarchy

if {$DFT && $ICC_DP_DFT_FLOW} {
  redirect -file $REPORTS_DIR_DP_COMMIT/${ICC_DP_COMMIT_CEL}_check_scan_chain.rpt {check_scan_chain}
  #redirect -file $REPORTS_DIR_DP_COMMIT/${ICC_DP_COMMIT_CEL}_report_scan_chain.rpt {report_scan_chain}
}

#########################################################################################
## Check Pin Assignment Quality								#
#########################################################################################
check_fp_pin_assignment -pin_spacing -pin_preroute_spacing -shorts -missing > ${REPORTS_DIR_DP_COMMIT}/${ICC_DP_COMMIT_CEL}_check_pin_assignment.rpt
check_fp_pin_alignment > ${REPORTS_DIR_DP_COMMIT}/${ICC_DP_COMMIT_CEL}_check_pin_alignment.rpt

# use the following to view feedthough nets:
# File/Task/Design Planning/Pin Assignment/Feedthrough Analysis

#########################################################################################
## Split Libraries									#
#########################################################################################
close_mw_lib
split_mw_lib -from $MW_DESIGN_LIBRARY $ICC_DP_COMMIT_CEL

exit

