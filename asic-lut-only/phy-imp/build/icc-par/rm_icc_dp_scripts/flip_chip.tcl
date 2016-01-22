##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################

##########################################################################################
## Place flip chip arrays
##########################################################################################
## Bump Ring1 and Ring2
place_flip_chip_ring -physical_lib_cell $ICC_FLIP_CHIP_SIGNAL_BUMP_CELL -prefix "$ICC_FLIP_CHIP_SIGNAL_BUMP_PREFIX" -bump_spacing $ICC_FLIP_CHIP_BUMP_SPACING -ring_number $ICC_FLIP_CHIP_BUMP_RING_NUMBER  -ring_spacing $ICC_FLIP_CHIP_BUMP_RING_SPACING -number $ICC_FLIP_CHIP_SIGNAL_BUMP_NUMBER -boundary $ICC_FLIP_CHIP_BUMP_RING_BOUNDARY

## Core VDD Array
place_flip_chip_array -physical_lib_cell $ICC_FLIP_CHIP_VDD_BUMP_CELL -prefix "$ICC_FLIP_CHIP_VDD_BUMP_PREFIX" -start_point $ICC_FLIP_CHIP_VDD_ARRAY_START -number $ICC_FLIP_CHIP_VDD_BUMP_NUMBER -delta $ICC_FLIP_CHIP_VDD_ARRAY_DELTA -repeat $ICC_FLIP_CHIP_VDD_ARRAY_REPETITION
change_selection [get_cells -all $ICC_FLIP_CHIP_VDD_BUMP_PREFIX*]
change_selection ""

## Core VSS Array
place_flip_chip_array -physical_lib_cell $ICC_FLIP_CHIP_VSS_BUMP_CELL -prefix "$ICC_FLIP_CHIP_VSS_BUMP_PREFIX" -start_point $ICC_FLIP_CHIP_VSS_ARRAY_START  -number $ICC_FLIP_CHIP_VSS_BUMP_NUMBER -delta $ICC_FLIP_CHIP_VSS_ARRAY_DELTA -repeat $ICC_FLIP_CHIP_VSS_ARRAY_REPETITION
change_selection [get_cells -all $ICC_FLIP_CHIP_VSS_BUMP_PREFIX*]
change_selection ""

save_mw_cel -as init_design_icc_place_flip_chip_array

##########################################################################################
## Assign flip chip nets
##########################################################################################
set_flip_chip_grid -grid_origin $ICC_FLIP_CHIP_GRID_ORIGIN -x_step $ICC_FLIP_CHIP_GRID_X_STEP -y_step $ICC_FLIP_CHIP_GRID_Y_STEP
create_fp_placement

## Set Fixed attribute
if {[all_macro_cells] != ""} {set_dont_touch_placement [all_macro_cells]}

change_selection [get_cells -all $ICC_FLIP_CHIP_SIGNAL_BUMP_PREFIX*]
change_selection -add [get_cells -all $ICC_FLIP_CHIP_VDD_BUMP_PREFIX*]
change_selection -add [get_cells -all $ICC_FLIP_CHIP_VSS_BUMP_PREFIX*]
set_dont_touch_placement [get_selection]

change_selection ""

## Automatic Net Assignment
#  Please use ICC GUI or tcl command to select a group of FC drivers and Bumps to set a personality type.
#  Below is an example by using the tcl commands.

## Select the P/G drivers based on the ref cell name
#  change_selection [get_cells -all -hierarchical -filter {ref_name=="PVSS2DGZ" || ref_name=="PVSS1DGZ" || ref_name=="PVDD2POC" || ref_name=="PVDD2DGZ" || ref_name=="PVDD1DGZ"}]

## Select a set of Bumps close to the P/G drivers ##########
#  win_select_objects -within { 137.000 1190.000 390.000 1730.000 } -slct_targets global -slct_targets_operation add
#  win_select_objects -within { 1190.000 135.000 1740.000 390.000  } -slct_targets global -slct_targets_operation add
#  win_select_objects -within { 2830.000 880.000 3090.000 1145.000 } -slct_targets global -slct_targets_operation add

## Assign the personality type PG to the selected Drivers and Bumps
#  set_flip_chip_type -personality "PG" [get_selection]

## Select the Signal drivers based on the ref cell name
#  change_selection [get_cells -all -hierarchical -filter {ref_name=="PDB04SDGZ"}]

## Select a set of Bumps close to the Signal drivers
#  win_select_objects -within { 137.000 430.000 390.000 1150.000 } -slct_targets global -slct_targets_operation add
#  win_select_objects -within { 440.000 135.000 1145.000 390.000 } -slct_targets global -slct_targets_operation add
#  win_select_objects -within { 1790.000 135.000 2790.000 390.000 } -slct_targets global -slct_targets_operation add
#  win_select_objects -within { 2830.000 430.000 3090.000 850.000 } -slct_targets global -slct_targets_operation add

## Assign the personality type signal to the selected Drivers and Bumps ####
#  set_flip_chip_type -personality "signal" [get_selection]

assign_flip_chip_nets
save_mw_cel -as init_design_icc_assign_flip_chip_nets

##########################################################################################
## Route flip chip
##########################################################################################
## Output all the flip chip nets to the specified file
if { $ICC_FLIP_CHIP_NET_FILE != "" } {
  write_flip_chip_nets -file_name $ICC_FLIP_CHIP_NET_FILE
}

## Define flip chip routing rules and options
set_route_flip_chip_options -layer_spacing $ICC_FLIP_CHIP_ROUTE_SPACE -layer_width $ICC_FLIP_CHIP_ROUTE_WIDTH -rule_name $ICC_FLIP_CHIP_ROUTE_RULE_NAME

## Define the minimum length of the first wire segment coming out from pad or entering bump must be kept perpendicular to pad pin or bump cell respectively
if { $ICC_FLIP_CHIP_MIN_ACCESS_EDGE_LENGTH != "" } {
  set_route_flip_chip_options -min_access_edge_length $ICC_FLIP_CHIP_MIN_ACCESS_EDGE_LENGTH
}

## Output unrouted nets to the specified file
if {[file exists [which $ICC_FLIP_CHIP_UNROUTED_NET_FILE]]} {
  set_route_flip_chip_options -output_unrouted_nets $ICC_FLIP_CHIP_UNROUTED_NET_FILE
}

## Specify design style to apply appropriate routing algorithm to achieve best connection rate
if { $ICC_FLIP_CHIP_DESIGN_STYLE != "" } {
  set_route_flip_chip_options -design_style $ICC_FLIP_CHIP_DESIGN_STYLE
}

## Check whether RDL routing rule has been successfully set to a NDR rule or not
report_routing_rules $ICC_FLIP_CHIP_ROUTE_RULE_NAME

## Remove pre-existing RDL routes
remove_flip_chip_route -contact

## Create stack via on driver or pad pin
if {[file exists [which $ICC_FLIP_CHIP_NO_STACKVIA_NET_FILE]]} {
  create_stack_via_on_pad_pin -from_metal $ICC_FLIP_CHIP_STACKVIA_BOTLAYER -to_metal $ICC_FLIP_CHIP_ROUTE_LAYER -output_nets_without_stack_via $ICC_FLIP_CHIP_NO_STACKVIA_NET_FILE -all_driver_pins
} else {
  create_stack_via_on_pad_pin -from_metal $ICC_FLIP_CHIP_STACKVIA_BOTLAYER -to_metal $ICC_FLIP_CHIP_ROUTE_LAYER -all_driver_pins
}

## Perform 45/90 degree RDL routing
if { $ICC_FLIP_CHIP_45_DEGREE_ROUTE } {
  route_flip_chip -routing_layer $ICC_FLIP_CHIP_ROUTE_LAYER -45_degree
} else {
  route_flip_chip -routing_layer $ICC_FLIP_CHIP_ROUTE_LAYER
}

## Split each RDL route into two wires according to the specified split width and split spacing rules
#  Change the route_type of RDL routes to "user_enter" to freeze routing
if { $ICC_FLIP_CHIP_SPLIT_ROUTE } {
  set_route_flip_chip_options -layer_spacing $ICC_FLIP_CHIP_SPLIT_SPACE -layer_width $ICC_FLIP_CHIP_SPLIT_WIDTH -rule_name $ICC_FLIP_CHIP_SPLIT_RULE_NAME
  report_routing_rules $ICC_FLIP_CHIP_SPLIT_RULE_NAME
  optimize_flip_chip_route -split_net -layer $ICC_FLIP_CHIP_ROUTE_LAYER
  optimize_flip_chip_route -layer $ICC_FLIP_CHIP_ROUTE_LAYER -change_route_type user_enter
} else {
  optimize_flip_chip_route -layer $ICC_FLIP_CHIP_ROUTE_LAYER -change_route_type user_enter
}

save_mw_cel -as init_design_icc_route_flip_chip
