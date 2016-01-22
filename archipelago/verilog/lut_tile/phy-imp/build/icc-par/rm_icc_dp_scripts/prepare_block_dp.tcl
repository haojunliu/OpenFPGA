########################################################################################
# ICC Hierarchical RM
# prepare_block_dp: Prepare block and top sub directories
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
#########################################################################################

source -echo icc_setup.tcl
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
open_mw_cel $ICC_DP_COMMIT_CEL -readonly


########################################################################################
## Get Block List
########################################################################################
set block_list {}
foreach softmacro ${ICC_DP_PLAN_GROUPS} {
	set block [get_attribute -class cell $softmacro ref_name]
	set block_list "$block_list $block"
	set unique_block_list [lsort -unique $block_list]
}

close_mw_cel
close_mw_lib

########################################################################################
## Prepare block level run directory
########################################################################################
foreach block $unique_block_list {
	sh mkdir $block
	sh cp -rf rm_setup rm_icc_scripts rm_icc_zrt_scripts rm_icc_dp_scripts ${BUDGETING_SDC_OUTPUT_DIR} $block
	sh mv lib_${block} $block

	sh cp ${BUDGETING_SDC_OUTPUT_DIR}/${block}*sdc $block

	### Prepare Setup Files ###
	sh sed -e 's/set DESIGN_NAME.*/set DESIGN_NAME $block/' rm_setup/common_setup.tcl > ${block}/rm_setup/common_setup.tcl
	sh sed -e 's/set MW_DESIGN_LIBRARY.*/set MW_DESIGN_LIBRARY lib_\$DESIGN_NAME/' \
	-e 's/set ICC_INIT_DESIGN_INPUT.*/set ICC_INIT_DESIGN_INPUT MW/' \
	-e 's/set ICC_INPUT_CEL.*/set ICC_INPUT_CEL \$DESIGN_NAME/' \
	-e 's/set ICC_IN_SDC_FILE.*/set ICC_IN_SDC_FILE \$\{DESIGN_NAME\}.sdc/' \
	-e 's/set ICC_FLOORPLAN_INPUT.*/set ICC_FLOORPLAN_INPUT SKIP/' \
	-e 's/set PNS_BLOCK_MODE.*/set PNS_BLOCK_MODE true/' \
	-e 's/set ICC_SKIP_IN_BLOCK_IMPLEMENTATION.*/set ICC_SKIP_IN_BLOCK_IMPLEMENTATION true/' \
	-e 's/set ICC_CREATE_MODEL.*/set ICC_CREATE_MODEL TRUE/' rm_setup/icc_setup.tcl > ${block}/rm_setup/icc_setup.tcl

	### Read SDC ###
	cd ./$block
	source icc_setup.tcl
	open_mw_lib lib_${block}
	open_mw_cel $block

	### Write Floorplan ###
	#write_def -version 5.6 -rows -macro -pins -blockages -verbose -specialnets -vias -output ${block}.def
	#write_floorplan -create_terminal -placement {io hard_macro} -row -track ${block}.fp

	## Outputs for DCT ###
	write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output ${block}.DCT.def
	write_floorplan -create_terminal -create_bound -row -preroute -placement {io hard_macro soft_macro} ${block}.DCT.fp


	### Create ILM & FRAM
	create_macro_fram
        create_ilm

	close_mw_cel
	close_mw_lib
	cd ../
}


########################################################################################
## Prepare top level run directory
########################################################################################
	source common_setup.tcl
	sh mkdir ${DESIGN_NAME}
        sh ln -s ${DESIGN_NAME} top
	sh cp -rf rm_setup rm_icc_scripts rm_icc_zrt_scripts rm_icc_dp_scripts ${BUDGETING_SDC_OUTPUT_DIR} top
	sh mv lib_$ICC_DP_COMMIT_CEL top

	### Prepare Setup Files ###
	sh sed -e 's/set MW_DESIGN_LIBRARY.*/set MW_DESIGN_LIBRARY lib_$ICC_DP_COMMIT_CEL/' \
	-e 's/set ICC_INIT_DESIGN_INPUT.*/set ICC_INIT_DESIGN_INPUT MW/' \
	-e 's/set ICC_INPUT_CEL.*/set ICC_INPUT_CEL $ICC_DP_COMMIT_CEL/' \
	-e 's/set ICC_FLOORPLAN_INPUT.*/set ICC_FLOORPLAN_INPUT SKIP/' \
	-e 's/set ICC_SKIP_IN_BLOCK_IMPLEMENTATION.*/set ICC_SKIP_IN_BLOCK_IMPLEMENTATION true/' \
	-e 's/set ICC_DP_BLACK_BOX_QTM_DB_LIST.*/set ICC_DP_BLACK_BOX_QTM_DB_LIST \"\"/' \
	-e 's/set ICC_CREATE_MODEL.*/set ICC_CREATE_MODEL FALSE/' rm_setup/icc_setup.tcl > top/rm_setup/icc_setup.tcl
	set MW_ILM_LIBS {}
	foreach block $block_list {
		set MW_ILM_LIBS "$MW_ILM_LIBS ../${block}/lib_${block}"
	}
	echo set MW_ILM_LIBS {"} $MW_ILM_LIBS {"} >> top/rm_setup/icc_setup.tcl
	echo "set_mw_lib_reference" {$MW_DESIGN_LIBRARY} -mw_reference_library {"$MW_REFERENCE_LIB_DIRS $MW_ILM_LIBS"} >> top/rm_setup/icc_setup.tcl

	### Prepare Link, FRAM View and fix the blocks
	cd ./top
	source icc_setup.tcl
	open_mw_lib lib_$ICC_DP_COMMIT_CEL
	open_mw_cel $ICC_DP_COMMIT_CEL

 	foreach block $block_list {
 	        change_macro_view -reference $block -view FRAM
 	}
	foreach softmacro $ICC_DP_PLAN_GROUPS {
	set_dont_touch_placement $softmacro
	}


	save_mw_cel

	### Write Floorplan ###
	#write_def -version 5.6 -rows -macro -pins -blockages -verbose -specialnets -vias -output top.def
	#write_floorplan -create_terminal -placement {io hard_macro} -row -track top.fp

	### Outputs for DCT ###
	write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output top.DCT.def
	write_floorplan -create_terminal -create_bound -row -preroute -placement {io hard_macro soft_macro} top.DCT.fp



	close_mw_cel
	close_mw_lib
	cd ../

exit
