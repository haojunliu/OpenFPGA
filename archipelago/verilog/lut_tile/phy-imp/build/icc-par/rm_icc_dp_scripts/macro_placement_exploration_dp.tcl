#########################################################################################
# ICC Design Planning RM
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
#########################################################################################
# Variable defaults and legal values based on ICC B-2008.09-SP2
# N/A means not a create_fp_placement option or parameter
# "Brief_Description" column below intends to give you quick reference of what the option does.
# Please refer to man page of create_fp_placement or set_fp_placement_strategy for more details.

# Legend			Default	<Range>	  (Correspondent command) Brief_Description	
# A run number			N/A	<integer>  for tracking purpose			
# B objective 			N/A	<string>   for tracking purpose
# C macros on edge 		auto  	<auto,on,off>  (set_fp_placement_strategy -macros_on_edge) place macros on the edges of chip or plan group	
# D auto grouping		low  	<none,user_only,low,high> (set_fp_placement_strategy -auto_grouping) controls amount of macro array packing
#					           none: no grping | user_only: only user defined ones created | low: array for small macros | high: array for all macros
# E hierarchy gravity		on  	<on,off>  (create_fp_placement -no_hierarchy_gravity) on : with hier gravity on 					
# F congestion driven		off  	<on,off>  (create_fp_placement -congestion_driven)
# G timing driven		off  	<on,off>  (create_fp_placement -timing_driven)
# H set_ideal_network on hfn	N/A	<on,off>   runs set_ideal_network on high fanout nets before fp_create_placement
# 		   		  		   use "I" to configure high fanout net threshold
# I high fanout net threshold	100	<integer>  placement ignores nets with fanout more than threshold
#				   		   also used to define high fanout nets for "H" and high fanout net threshold for "W"
# J effort			low	<low,high>(create_fp_placement -effort)
# K incremental			off	<off,all,top_level_cells,plan_groups,voltage_areas> (create_fp_placement -incremental)
#					           all: whole design | top_level_cells: all cells don't belong to plan groups or voltage areas
#					           plan_groups: only on specified plan groups from "L" | voltage_areas: only on specified voltage areas from "M"			
# L plan group name for "K"	"" 	<string>   if plan_groups is specified in K,pls specify the name of plan group
# M voltage area names for "K"	"" 	<string>   if voltage_areas is specified in K,pls specify the name of voltage area
# N macro orientation		automatic <automatic,all,N> (set_fp_placement_strategy -macro_orientation)
# O sliver size			10  	<a positive number> (set_fp_placement_strategy -slive_size)
#			 			   minimum channel size allowing std cells to be placed, tool default is 0
# P congestion effort		low  	<low,high>(set_fp_placement_strategy -congestion_effort)
# Q io net weight		1  	<a positive number btw 0-10> (set_fp_placement_strategy -IO_net_weight) net weight on nets connected to IOs
# R plangroup interface net wt	1  	<a positive number btw 0-10> (set_fp_placement_strategy -plan_group_interface_net_weight) net weight on interface nets of exclusive plan groups
# S VA interface net wt		1  	<a positive number btw 0-10> (set_fp_placement_strategy -voltage_area_interface_net_weight) net weight on interface nets of voltage areas
#						   can be used to place level shifters close to boundary of VA
# T VA net weight level shifter off  	<on,off>  (set_fp_placement_strategy -voltage_area_net_weight_LS_only)
#						   makes U only applied to nets connected to level shifter or isolation cells
# U spread spare cells		on  	<on,off>  (set_fp_placement_strategy -spread_spare_cells)
# V legalizer effort		high  	<low,high>(set_fp_placement_strategy -legalizer_effort)
# W ipo ahfs			off	<on,off>   allow ahfs buffer removal and change of high fanout threshold
# X ipo ahfs remove effort	none	<none,medium,high> (set_ahfs_options -remove_effort $ipo_ahfs_remove_effort)
# Y ipo effort			medium	<medium,high> (optimize_fp_timing -effort)
# Z ipo fix drc			off	<on,off>  (optimize_fp_timing -fix_design_rule)
# AA ipo area recovery		off	<on,off>  (optimize_fp_timing_cmd -area_recovery)

#	 A run number
#		B objective
#						C macros on edge (moe)
#						     D auto grouping
#						         E hierarchy gravity
#						             F congestion driven
#						                  G timing driven
#							              H set_ideal_net_work on hfn
#							                  I hfn threshold
#								              J effort
#								                  K incremental
#								                      L plan group name for K
#									                 M voltage area name for K
#									                       N macro orientation
#										                      O sliver size
#										                         P congestion effort
#										                            Q io net weight
#										                              R plangroup interface net weight
#											                        S VA interface net weight
#											                           T VA net weight for level shifter only
#											                               U spread spare cells
#											                                  V legalizer effort
#															       W ipo ahfs
#															            X ipo ahfs remove effort
#															                  Y ipo effort
#															                       Z ipo fix drc
#															                          AA ipo area recovery
#       A	  B				 C   D    E   F   G   H   I   J   K   L  M     N      O  P  Q R S  T   U  V    W    X     Y    Z  AA
dp_explore run0 default                        auto low  on  off off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run1 default+moe_off+cong            off low  on  on  off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run2 default+moe_off+cong+timing     off low  on  on  on  off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run3 default+moe_on                  on  low  on  off off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run4 default+moe_on+timing           on  low  on  off on  off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run5 default+moe_on+cong+timing      on  low  on  on  on  off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run6 default+hier_off+moe_off        off low  off off off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run7 default+hier_off+moe_off+cong   off low  off on  off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
dp_explore run8 default+hier_off+moe_on+group   on  high off off off off 100 low off "" "" automatic 10 low 1 1 1 off on high off none medium off off
#dp_explore run9 default+high_effort_ipo        off low  on  off off on  40  low off "" "" automatic 10 low 1 1 1 off on high on  high medium on  off
#moe: macros on edge

###########################################################################################################################
# Tips
# The above predefined runs are only switching C,D,E,F,and G options which should give you good sarting point.
# Feel free to customize other options. Option B is only for tracking purpose. You can rename it whatever you want.
# Use # to comment out runs you don't want or simply remove them. Each run is independent like a tcl command.
# You can create your own runs and simply append them to the above runs.
###########################################################################################################################
