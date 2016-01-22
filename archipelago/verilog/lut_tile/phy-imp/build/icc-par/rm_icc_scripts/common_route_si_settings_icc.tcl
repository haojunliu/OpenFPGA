##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################


echo "\tLoading :\t\t [info script]"

#########################################
#           TIMING OPTIONS              #
#########################################

## By default, Xtalk Delta Delay is enabled for all flows
set_si_options -delta_delay true
## For the QoR flow, we also enable min_delta_delay
 set_si_options -min_delta_delay true

#########################################
#    MAX_TRAN FIXING                    #
#########################################
## From 2006.06-SP5-1 onwards, route_opt will NOT fix nor report Delta Max
## Tran violations.  Hence all max_tran violations exclude the portion
## that is introduced by Xtalk.
## If you want to change this behavior, and fix max_transition violations
## including these caused by Xtalk, please use the switch -max_transition_mode
## in set_si_options. Keep in mind that you can expect a runtime hit of up
## to 2x in DRC fixing during route_opt.

# set_si_options -delta_delay true \
#                -route_xtalk_prevention true \
#                -route_xtalk_prevention_threshold 0.25 \
#                -max_transition_mode total_slew

#########################################
#      ADVANCED TIMING FEATURES         #
#########################################

## if static noise (aka glitches) needs to be reduced, please use the extra options below :
# set_si_options -delta_delay true \
#                -static_noise true \
#                -static_noise_threshold_above_low 0.35 \
#                -static_noise_threshold_below_high 0.35 \
#                -route_xtalk_prevention true \
#                -route_xtalk_prevention_threshold 0.25


set_delay_calculation -arnoldi
if {$ICC_FULL_ARNOLDI} {
    echo "SCRIPT-Info : Enabling Arnoldi for all nets of the design"
    set rc_rd_more_than_rnet_arnoldi_threshold 100000000
}

## if you want to enable Timing Windows during XDD calculation, please use :
#  set_si_options -timing_window true





########################################
#          ROUTING OPTIONS             #
########################################

set_route_options -same_net_notch check_and_fix

## Distributed routing on multiple processors of the same host
if {$ICC_NUM_CPUS >= 2} { set_distributed_route }

## If you want to fix antenna violations during routing ( i.e. without inserting diodes), please uncomment :
#  set_droute_options -name doAntennaConx -value 4
#  set_droute_options -name maxAntennaRatio -value 1000000
#  set_droute_options -name maxCutAntennaRatio -value 1000000
#  source -echo $ANTENNA_RULES_FILE
#  report_antenna_rules


## Set Area Critical Range
## Typical value: 3-4 percent of critical clock period
if {$AREA_CRITICAL_RANGE_POST_RT != ""} {set_app_var physopt_area_critical_range $AREA_CRITICAL_RANGE_POST_RT}


## Set Power Critical Range
## Typical value: 3-4 percent of critical clock period
if {$POWER_CRITICAL_RANGE_POST_RT != ""} {set_app_var physopt_power_critical_range $POWER_CRITICAL_RANGE_POST_RT}




########################################
#       ROUTE_OPT ONLY OPTIONS         #
########################################
set_app_var routeopt_skip_report_qor true  ;##default is false - set to skip second report_qor in route_opt

# set_app_var routeopt_xtalk_reduction_setup_threshold 0.10


