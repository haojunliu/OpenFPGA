##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################

  ## create always on domain
  create_power_domain ALWAYS_ON_TOP

  ## creation of the different power domains
  if {$PD1 != "" } {
    create_power_domain $PD1 \
         -object_list [get_cell $PD1_CELLS]
    #    -power_down \
    #    -power_down_ctrl ctrl/mult_sleep \

  }

  # Create leaf power domain(s).  If they are shutdown blocks, uncomment
  # the power_down and power_down_ctrl switches.
  if {$PD2 != "" } {
    create_power_domain $PD2 \
         -object_list [get_cell $PD2_CELLS]
    #    -power_down \
    #    -power_down_ctrl ctrl/mult_sleep \
  }

  if {$PD3 != "" } {
       create_power_domain $PD3 \
           -object_list [get_cell $PD3_CELLS]
    #    -power_down \
    #    -power_down_ctrl ctrl/mult_sleep \
  }

  if {$PD4 != "" } {
       create_power_domain $PD4 \
           -object_list [get_cell $PD4_CELLS]
    #    -power_down \
    #    -power_down_ctrl ctrl/mult_sleep \
  }

  ##############################################################################
  ## Create Power Nets
  ##
  ## Connect power nets to appropriate power domains.
  ##############################################################################

  create_power_net_info ${MW_POWER_NET} -power                    ;# Power net for main power domain
  if {$PD1 != "" } {create_power_net_info $MW_POWER_NET1 -power}  ;# Power net for LEAF1 power domain
  if {$PD2 != "" } {create_power_net_info $MW_POWER_NET2 -power}  ;# Power net for LEAF2 power domain
  if {$PD3 != "" } {create_power_net_info $MW_POWER_NET3 -power}  ;# Power net for LEAF3 power domain
  if {$PD4 != "" } {create_power_net_info $MW_POWER_NET4 -power}  ;# Power net for LEAF4 power domain
  create_power_net_info $MW_GROUND_NET -gnd          ;# Common ground

  connect_power_domain ALWAYS_ON_TOP \
    -primary_power_net ${MW_POWER_NET} \
    -primary_ground_net ${MW_GROUND_NET}

  if {$PD1 != "" } {
    connect_power_domain $PD1 \
      -primary_power_net $MW_POWER_NET1 \
      -primary_ground_net $MW_GROUND_NET
  }

  if {$PD2 != "" } {
    connect_power_domain $PD2 \
      -primary_power_net $MW_POWER_NET2 \
      -primary_ground_net $MW_GROUND_NET
  }

  if {$PD3 != "" } {
    connect_power_domain $PD3 \
      -primary_power_net $MW_POWER_NET3 \
      -primary_ground_net $MW_GROUND_NET
  }

  if {$PD4 != "" } {
    connect_power_domain $PD4 \
      -primary_power_net $MW_POWER_NET4 \
      -primary_ground_net $MW_GROUND_NET
  }


  #################################################################################
  ##  Insert Level Shifters
  #################################################################################

  ## The correct Level shifters are found based to directives in the library
  insert_level_shifters -all_clock_nets -verbose


  #################################################################################
  ##  Insert Isolation Cells
  #################################################################################

  ## Need to manually insert all missing isolation cells.
  ## User needs to specify an appropriate library cell for '-reference'
  ## User needs to specify the net that will act as the enable signal for the isolation cell using the '-enable'
  ## User needs to specify the location to insert the isolation cell using '-object_list'

  # insert_isolation_cell -reference $lib_cell -enable [find net $enable_net] -object_list [<get_net $nets_missing_isolation_cells>]


  ## Check for isolation cell violations
  check_mv_design -isolation -verbose > $REPORTS_DIR_SETUP_MV/$DESIGN_NAME.mv_iso_drc.rpt

  set_attribute -type boolean [get_cells ${AO_INSTANCES} ] always_on true


  ## Report Power Domain/Net information
  report_power_net_info > $REPORTS_DIR_SETUP_MV/$DESIGN_NAME.power_net.rpt
  report_power_domain > $REPORTS_DIR_SETUP_MV/$DESIGN_NAME.power_net.rpt

  #################################################################################
  ## Apply The Level Shifter Strategy
  #################################################################################
  set_level_shifter_strategy -rule all

  ## Check for level shifter violations
  check_mv_design -level_shifter -verbose > $REPORTS_DIR_SETUP_MV/$DESIGN_NAME.mv_ls_drc.rpt

