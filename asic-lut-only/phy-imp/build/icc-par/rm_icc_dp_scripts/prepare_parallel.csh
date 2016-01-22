#!/bin/csh -f
##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################
# This csh file is for two purposes:
# 1.Exit if perl path is not found
# 2.Exit if perl version is wrong and causing errors
############################################################################

echo "*ICC-DP-RM: Looking for Perl path /usr/bin/perl"
set perl_path = /usr/bin/perl

   set found_Perl = 0
   if ( -e $perl_path ) then
	echo  "*ICC-DP-RM: $perl_path found"
	set found_Perl = 1
   endif
   if ($found_Perl == 0) then
	echo "*ICC-DP-RM: $perl_path not found!"
        echo "*ICC-DP-RM: Exiting without running perl script."
        echo "*ICC-DP-RM: Please update first line of rm_icc_dp_scripts/prepare_parallel.pl with correct Perl path."
	exit
   endif

#############################################################################

#echo ""

./rm_icc_dp_scripts/prepare_parallel.pl $argv[1] $argv[2] $argv[3]

#echo ""

echo "*ICC-DP-RM: prepare_parallel program has completed."
echo "*ICC-DP-RM: Run directories have been prepared."
echo "*ICC-DP-RM: Please refer to rm_icc_dp_scripts/prepare_parallel.ReadMe.txt Usage section for further instructions."
echo ""

