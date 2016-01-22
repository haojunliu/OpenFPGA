##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################

source -echo icc_setup.tcl

#######################################
####ECO Script
#######################################




##Open Design
open_mw_lib $MW_DESIGN_LIBRARY

redirect /dev/null "remove_mw_cel -version_kept 0 $ICC_ECO_CEL"
copy_mw_cel -from $ICC_ECO_STARTING_CEL -to $ICC_ECO_CEL
open_mw_cel $ICC_ECO_CEL





source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl
source -echo common_route_si_settings_zrt_icc.tcl




if {$ICC_ECO_FLOW == "UNCONSTRAINED"} {

 echo "SCRIPT-Info: starting the unconstrained ECO flow, executing the ECO steps"

 if {[file exists [which $ICC_ECO_NETLIST]]} {
   eco_netlist -compare_pg -by_verilog_file $ICC_ECO_NETLIST
   legalize_placement -eco -incremental
   route_zrt_eco
 } else {
   echo "SCRIPT-Error - can't perform eco, eco netlist $ICC_ECO_NETLIST can't be found ..."
 }
}



if {$ICC_ECO_FLOW == "FREEZE_SILICON"} {

 echo "SCRIPT-Info: starting the Freeze Silicon ECO flow, executing the ECO steps"

 if {[file exists [which $ICC_ECO_NETLIST]]} {
   eco_netlist -compare_pg -freeze_silicon -by_verilog_file $ICC_ECO_NETLIST
   place_freeze_silicon
   route_zrt_eco
 } else {
   echo "SCRIPT-Error - can't perform eco, eco netlist $ICC_ECO_NETLIST can't be found ..."
 }
}



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
if {$ICC_REPORTING_EFFORT != "OFF" } {
    redirect -tee -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.clock_tree {report_clock_tree -summary}     ;# global skew report
    redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.clock_timing {report_clock_timing -type skew} ;# local skew report
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -tee -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.qor {report_qor}
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.con {report_constraints}
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.max.tim {report_timing -capacitance -transition_time -input_pins -nets -delay max}
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.min.tim {report_timing -capacitance -transition_time -input_pins -nets -delay min}
}

save_mw_cel -as $ICC_ECO_CEL

if {$ICC_REPORTING_EFFORT != "OFF" } {
  create_qor_snapshot -clock_tree -name $ICC_ECO_CEL
  redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
}




exit
