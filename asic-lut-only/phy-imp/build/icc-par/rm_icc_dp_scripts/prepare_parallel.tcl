##########################################################################################
## ICC Design Planning RM
## Version: D-2010.03-SP2 (July 6, 2010)
## Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################

## Save a common CEL as starting point for all exploration runs
save_mw_cel -as saved_cel_before_explore_mode
close_mw_cel
close_mw_lib


## Create temporary MW Library and copy only saved_cel_before_explore_mode
if {[file exists RM_tmp_lib_safe_to_delete]} {
	echo "*ICC-DP-RM: Found existing RM_tmp_lib_safe_to_delete"
	echo "*ICC-DP-RM: Renaming existing RM_tmp_lib_safe_to_delete to RM_tmp_lib_safe_to_delete with time stamp"
	sh mv RM_tmp_lib_safe_to_delete RM_tmp_lib_safe_to_delete_`date +'%m%d%y_%H:%M'`
}
if {[file exists [which $MW_REFERENCE_CONTROL_FILE]]} {
	create_mw_lib \
	     -tech $TECH_FILE \
	     -bus_naming_style {[%d]} \
	     -reference_control_file $MW_REFERENCE_CONTROL_FILE \
	     RM_tmp_lib_safe_to_delete
} else {
	create_mw_lib \
	     -tech $TECH_FILE \
	     -bus_naming_style {[%d]} \
	     -mw_reference_library $MW_REFERENCE_LIB_DIRS \
	     RM_tmp_lib_safe_to_delete
}

copy_mw_cel -from_lib $MW_DESIGN_LIBRARY -from saved_cel_before_explore_mode -to_lib RM_tmp_lib_safe_to_delete


## Store design settings for reuse
echo "set REPORTS_DIR_DP=${REPORTS_DIR_DP}" > .RM_tmp_file_safe_to_delete
echo "set DESIGN_NAME=${DESIGN_NAME}" >> .RM_tmp_file_safe_to_delete
