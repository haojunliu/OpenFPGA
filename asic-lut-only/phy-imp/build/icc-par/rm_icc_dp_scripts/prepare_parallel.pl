#!/usr/bin/perl
##########################################################################################
## ICC Design Planning RM
## prepare_parallel.pl
## Version: D-2010.03-SP2 (July 6, 2010)
## Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################
## Please change perl path if it's not correct

$fr_dir_files = "RM_tmp_lib_safe_to_delete";
$REPORTS_DIR = shift;
$RESULTS_DIR = shift;
$MW_DESIGN_LIBRARY = shift;

&get_input_files;
&get_run_name_array;
&prepare_files;

########################
sub get_input_files
########################
{
if (-e "./rm_icc_dp_scripts/macro_placement_exploration_dp.tcl") {
  print "*ICC-DP-RM: rm_icc_dp_scripts/macro_placement_exploration_dp.tcl found\n";
} else {
  print "ERROR: make sure you're running in the correct directory\n";
  exit
}
}

########################
sub get_run_name_array
########################
{
open (explore_file,"./rm_icc_dp_scripts/macro_placement_exploration_dp.tcl") || die "file ./rm_icc_dp_scripts/macro_placement_exploration_dp.tcl can not be opened";

$count == 0;

while (<explore_file>) {
 chomp;
 if (! /^dp_explore/) {
   print to_file "$_\n ";
 } else {
   @tmp1 = split(" ",$_);
   $count ++;
   push @run_name, [$tmp1[1],$tmp1[2]];
 }

}

close(explore_file);

print "*ICC-DP-RM: total explore runs: $count\n";
}

########################
sub prepare_files
########################
{

&backup_existing_run_dir;

foreach (@run_name) {
 $run_number = @$_[0];
 $objective = @$_[1];
 system "mkdir ${run_number}";
 system "cp -rf $fr_dir_files ${run_number}";
 system "ln -s ../rm_setup ../rm_icc_scripts ../rm_icc_zrt_scripts ../rm_icc_dp_scripts ../${REPORTS_DIR} ../${RESULTS_DIR} ../snapshot ${run_number}";
 system "mv ${run_number}/RM_tmp_lib_safe_to_delete ${run_number}/${MW_DESIGN_LIBRARY}";

 open (explore_file,"./rm_icc_dp_scripts/macro_placement_exploration_dp.tcl") || die "file $explore_file can not be opened";
 open (to_file,">${run_number}/${run_number}.tcl") || die "file $to_file can not be opened";
 print to_file "source rm_setup/icc_setup.tcl\n";
 print to_file "source rm_icc_dp_scripts/proc_explore.tcl\n";
 print to_file "open_mw_lib $MW_DESIGN_LIBRARY\n";
 while (<explore_file>) {
 	chomp;
 	if (! /^dp_explore/) {
 	  print to_file "$_\n ";
 	}
 	if (/$run_number/){
 	  print to_file "$_\n ";
 	}
 }

 close(explore_file);
 close(to_file);
}

system "rm -rf RM_tmp_lib_safe_to_delete"

}

###########################
sub backup_existing_run_dir
###########################
{
# Check if run dir exist, then create backup dir
# Check if backup dir exists, if yes then move existing, then create backup dir
$run_directory_exist = "false";
foreach (@run_name) {
 $run_number = @$_[0];
 $objective = @$_[1];
 if (-e "${run_number}") {
   print "*ICC-DP-RM: Found existing ${run_number}\n";
   $run_directory_exist = "true";
 }
}
if ($run_directory_exist eq "true") {
  if (-e "RM_tmp_backup") {
    print "*ICC-DP-RM: RM_tmp_backup exists. Automatically rename it to RM_tmp_backup with time stamp\n";
    system "mv RM_tmp_backup RM_tmp_backup_`date +%m%d%y_%H:%M`";
  }
  system "mkdir -p RM_tmp_backup";
  system "mv ${run_number} RM_tmp_backup";

  foreach (@run_name) {
   $run_number = @$_[0];
   $objective = @$_[1];
   if (-e "${run_number}") {
     print "*ICC-DP-RM: Automatically move existing ${run_number} to RM_tmp_backup\n";
     system "mv ${run_number} RM_tmp_backup";
   }
  }
}
}

