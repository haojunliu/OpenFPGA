##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################

source -echo icc_setup.tcl

###########################################################################
## signoff_opt_icc: Signoff optimization using StarRC and PT
###########################################################################

if {![file exists [which $PT_DIR/pt_shell]]} {
  echo "SCRIPT-Info : $PT_DIR/pt_shell does not exist. Skipping signoff_opt step"
  redirect -file signoff_opt_icc {echo "SCRIPT-Info : signoff_opt has not been run"}
  exit
}

open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_SIGNOFF_OPT_CEL}"
copy_mw_cel -from $ICC_CHIP_FINISH_CEL -to $ICC_SIGNOFF_OPT_CEL
open_mw_cel $ICC_SIGNOFF_OPT_CEL


source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl



########################################
#    LOAD THE ROUTE AND SI SETTINGS    #
########################################

source -echo common_route_si_settings_zrt_icc.tcl


########################################
#       SIGNOFF_OPT CORE COMMAND       #
########################################

## setup PT
  if {[file exists [which $PT_SDC_FILE]]} {
    set_primetime_options  -exec_dir $PT_DIR -sdc_file $PT_SDC_FILE
  } else {
    set_primetime_options  -exec_dir $PT_DIR
  }

## setup StarRC
  if {$STARRC_MIN_NXTGRD == ""} {set STARRC_MIN_NXTGRD $STARRC_MAX_NXTGRD}
  set_starrcxt_options  -exec_dir $STARRC_DIR \
     -max_nxtgrd_file $STARRC_MAX_NXTGRD \
     -min_nxtgrd_file $STARRC_MIN_NXTGRD \
     -map_file        $STARRC_MAP_FILE

if { [check_error -verbose] != 0} { echo "SCRIPT-Error, flagging ..." }
report_primetime_options
report_starrcxt_options
run_signoff -check_only
run_signoff

if {$ICC_REPORTING_EFFORT != "OFF" } {
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_CEL.max.tim {report_timing -capacitance -transition_time -input_pins -nets -delay max}
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_CEL.min.tim {report_timing -capacitance -transition_time -input_pins -nets -delay min}
  redirect -tee -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_CEL.qor {report_qor}
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_CEL.con {report_constraints}
}

##Run Signoff Opt
signoff_opt -skip_initial_analysis

##To run when design doesn't meet initial criteria use:
# signoff_opt -ignore_design_readiness -num_iteration 2

if {$ICC_REPORTING_EFFORT != "OFF" } {
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_OPT_CEL.max.tim {report_timing -capacitance -transition_time -input_pins -nets -delay max}
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_OPT_CEL.min.tim {report_timing -capacitance -transition_time -input_pins -nets -delay min}
  redirect -tee -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_OPT_CEL.qor {report_qor}
  redirect -file $REPORTS_DIR_SIGNOFF_OPT/$ICC_SIGNOFF_OPT_CEL.con {report_constraints}
}

run_signoff -signoff_analysis false

if { [check_error -verbose] != 0} { echo "SCRIPT-Error, flagging ..." }

########################################
#          STD CELL FILLERS            #
########################################
if {$ADD_FILLER_CELL } {
  if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL}
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
if {$ICC_TIE_CELL_FLOW} {
  echo "SCRIPT-Info : List of TIE-CELL instances in your design :"
  all_tieoff_cells
} else { report_tie_nets
  }

if { [check_error -verbose] != 0} { echo "SCRIPT-Error, flagging ..." }

## Uncomment if you want detailed routing violation report with or without antenna info
# if {$ICC_FIX_ANTENNA} {
#    verify_zrt_route -antenna true ;
# } else {
#    verify_zrt_route -antenna false ;
#   }



save_mw_cel -as $ICC_SIGNOFF_OPT_CEL



exit
