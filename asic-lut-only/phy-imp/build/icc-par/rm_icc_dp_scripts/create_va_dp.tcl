#########################################################################################
# ICC Design Planning RM
# create_va_dp: Create Voltage Area
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
#########################################################################################

source common_placement_settings_icc.tcl

############
## CREATE VA
############

## The following steps are based on the sample design where there're 3 power domains so three voltage areas to be created.
## We'll use tool to decide locations for voltage area so -coordinate is not used
## Please change the value of guard_band and target_utilization as needed
## GUI: You can also use the GUI to create voltage areas interactively: Menu/Floorplan/Create Voltage Area
## GUI: If you're running it with GUI, please turn on display options for voltage area
#	gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting showVoltageArea -value true
if {$PD1 != ""} {create_voltage_area -guard_band_x 2 -guard_band_y 2 -power_domain $PD1 -target_utilization 0.7}
if {$PD2 != ""} {create_voltage_area -guard_band_x 2 -guard_band_y 2 -power_domain $PD2 -target_utilization 0.7}
if {$PD3 != ""} {create_voltage_area -guard_band_x 2 -guard_band_y 2 -power_domain $PD3 -target_utilization 0.7}
if {$PD4 != ""} {create_voltage_area -guard_band_x 2 -guard_band_y 2 -power_domain $PD4 -target_utilization 0.7}

remove_placement
create_fp_placement -effort low -no_legalize


## GUI: Below saves snapshot for you. Only applicable if you have GUI open
#	set_hierarchy_color -cycle_color
#	gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting viewshot -value $REPORTS_DIR_INIT_DESIGN/create_va_dp.placement.jpg


## Automatic place and shape voltage area based on the placement
set_fp_placement_strategy -voltage_area_interface_net_weight $ICC_DP_PLACEMENT_VA_NET_WEIGHT
set_fp_placement_strategy -voltage_area_net_weight_LS_only on
shape_fp_blocks -refine_placement


## GUI: Below saves snapshot for you. Only applicable if you have GUI open
# 	set_hierarchy_color -cycle_color
# 	gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting viewshot -value $REPORTS_DIR_INIT_DESIGN/create_va_dp.shape_fp_blocks.jpg


save_mw_cel -overwrite

## Suggestions:
## You can use edit tool bar to further refine voltage area, for example, stretch or move it
## You can also do remove_voltage_area -all to remove all of them and start from scratch
## You should always check if voltage area locations suit your needs before you continue to next step
