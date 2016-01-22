#################################################################################
# Formality Verification Script for
# IC Compiler Chip-Level Reference Methodology Script
# Script: fm.tcl
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2010 Synopsys, Inc. All rights reserved.
#################################################################################

set_app_var sh_allow_tcl_with_set_app_var_no_message_list [list target_library link_library]

source -echo icc_setup.tcl


#################################################################################
# Sections of this script may be uncommented to perform various types of verifications.
#
# The default verification flow assumes the gate vs gate (G2G) verification
# of the files going into IC Compiler and the resulting Verilog netlist from IC Compiler.
#
# This script may be manually modified to perform other types of verifications as needed.
#
# This script will use variables set in the ICC-RM scripts icc_setup.tcl and common_setup.tcl
#
#################################################################################

#################################################################################
## Synopsys Auto Setup Mode
#################################################################################

## This mode applies to RTL vs gate verifications which are not the default for this script.
##
## set_app_var synopsys_auto_setup true

## Note: The Synopsys Auto Setup mode is less conservative than the Formality default mode,
## and is more likely to result in a successful verification out-of-the-box.
##
## Using the Setting this variable will change the default values of the variables listed here below
## You may change any of these variables back to their default settings to be more conservative.
## Uncomment the appropriate lines below to revert back to their default settings:

	## set_app_var hdlin_ignore_parallel_case true
	## set_app_var hdlin_ignore_full_case true
	## set_app_var verification_verify_directly_undriven_output true
	## set_app_var hdlin_ignore_embedded_configuration false
	## set_app_var svf_ignore_unqualified_fsm_information true
	## set_app_var signature_analysis_allow_subset_match true

## Other variables with changed default values are described in the next few sections.

#################################################################################
## Setup for handling undriven signals in the design
#################################################################################

## The Synopsys Auto Setup mode sets undriven signals in the reference design to
## "0" or "BINARY" (as done by DC), and the undriven signals in the impl design are
## forced to "BINARY".  This is done with the following setting:
	## set_app_var verification_set_undriven_signals synthesis
## Uncomment the next line to revert back to the more conservative default setting:

	## set_app_var verification_set_undriven_signals BINARY:X


#################################################################################
## Setup for simulation/synthesis mismatch messaging
#################################################################################

## The Synopsys Auto Setup mode will produce warning messages, not error messages,
## when Formality encounters potential differences between simulation and synthesis.
## Uncomment the next line to revert back to the more conservative default setting:

	## set_app_var hdlin_error_on_mismatch_message true

#################################################################################
## Setup for Clock-gating
#################################################################################

## The Synopsys Auto Setup mode, along with the SVF file, will appropriately set the clock-gating variable.
## Otherwise, the user will need to notify Formality of clock-gating by uncommenting the next line:

	## set_app_var verification_clock_gate_hold_mode any

#################################################################################
## Setup for instantiated DesignWare or function-inferred DesignWare components
#################################################################################

## Set this variable ONLY if your design contains instantiated DW or function-inferred DW

	## set_app_var hdlin_dwroot "" ;# Enter the pathname to the top-level of the DC tree

#################################################################################
## Setup for handling missing design modules
#################################################################################

## If the design has missing blocks or missing components in both the reference and implementation designs,
## uncomment the following variable so that Formality can complete linking each design:

	## set_app_var hdlin_unresolved_modules black_box

#################################################################################
## Read in the SVF file(s)
#################################################################################

## Set this variable to point to individual SVF file(s) or to a directory containing SVF files.

## set_svf ${RESULTS_DIR}/${DESIGN_NAME}.mapped.svf


#################################################################################
# Read in the libraries
#################################################################################

foreach tech_lib "${TARGET_LIBRARY_FILES} ${ADDITIONAL_LINK_LIB_FILES}" {
  read_db -technology_library $tech_lib
}

#################################################################################
# Read in the Reference Design
#
# This sections uses ICC-RM variables to determine the type of reference design
#################################################################################

# For DDC
# read_ddc -r ${RESULTS_DIR}/${DESIGN_NAME}.mapped.ddc
if {$ICC_INIT_DESIGN_INPUT == "DDC" } {
	read_ddc -r $ICC_IN_DDC_FILE
}


# Or, for Verilog
# read_verilog -r ${RESULTS_DIR}/${DESIGN_NAME}.mapped.v
if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
	read_verilog -r $ICC_IN_VERILOG_NETLIST_FILE
}

if { $ICC_INIT_DESIGN_INPUT == "DDC" || $ICC_INIT_DESIGN_INPUT == "VERILOG" } {
	# Setting the top of design for these input formats
	set_top r:/WORK/${DESIGN_NAME}

}


# Or, for MilkyWay
# Note: Milkyway design format is not supported with UPF flow in Formality
# The -no_pg option should be used for MW designs from DC to prevent automatic
# linking to power aware versions of the cells.
# read_milkyway -r -no_pg -libname ${mw_design_library} -cell_name ${DESIGN_NAME}_DCT ${mw_design_library}

if { $ICC_INIT_DESIGN_INPUT == "MW" } {
	read_milkyway -r -no_pg -libname ${MW_DESIGN_LIBRARY} -cell_name ${ICC_INPUT_CEL} ${MW_DESIGN_LIBRARY}
}

# Linking the design
if { $ICC_INIT_DESIGN_INPUT == "MW" } {

	# Setting the top of design is different for Milkyway
	set_top r:/${MW_DESIGN_LIBRARY}/${DESIGN_NAME}

}

#################################################################################
# Read in the Implementation Design from ICC-RM result
#
# Note: In ICC, When writing out a Verilog netlist for Formality use the following options:
# write_verilog -no_physical_only_cells
#################################################################################

read_verilog -i $RESULTS_DIR/$DESIGN_NAME.output.v

set_top i:/WORK/${DESIGN_NAME}


#################################################################################
# Setup for scan re-ordering
#
# If IC Compiler has performed scan re-ordering, the user will need to manually
# set constants on the scan enable and test mode signals to disable scan path
# verification.
#
# Example command format:
#
#   set_constant -type port r:/WORK/${DESIGN_NAME}/<port_name> <constant_value>
#   set_constant -type port i:/WORK/${DESIGN_NAME}/<port_name> <constant_value>
#
#
# Also, the user will need to manually perform set_dont_verify on dedicated scanout
# ports to avoid verification failures on those ports.
#
# Example command format:
#
#   set_dont_verify_point -type port r:/WORK/${DESIGN_NAME}/<port_name>
#   ...
#
#################################################################################


#################################################################################
# Match compare points and report unmatched points
#################################################################################

match

report_unmatched_points > ${REPORTS_DIR_FORMALITY}/${DESIGN_NAME}.fmv_unmatched_points.rpt


#################################################################################
# Verify and Report
#
# If the verification is not successful, the session will be saved and reports
# will be generated to help debug the failed or inconclusive verification.
#################################################################################

if { ![verify] }  {
  save_session -replace ${REPORTS_DIR_FORMALITY}/${DESIGN_NAME}
  report_failing_points > ${REPORTS_DIR_FORMALITY}/${DESIGN_NAME}.fmv_failing_points.rpt
  report_aborted > ${REPORTS_DIR_FORMALITY}/${DESIGN_NAME}.fmv_aborted_points.rpt
  # Use analyze_points to help determine the next step in resolving verification
  # issues. It runs heuristic analysis to determine if there are potential causes
  # other than logical differences for failing or hard verification points.
  analyze_points -all > ${REPORTS_DIR_FORMALITY}/${DESIGN_NAME}.fmv_analyze_points.rpt
}

exit

