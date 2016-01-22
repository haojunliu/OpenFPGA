#!/usr/bin/perl
##########################################################################################
## ICC Design Planning RM
## gen_explore_table.pl: parse explore run results and generate an HTML table
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
##########################################################################################
## Please change perl path if it's not correct

$inputDir = "";
$outputDir = "";
$outfile   = "outfile.txt";
$match_key = "flat_dp";
$numCells=0;
$print_table_row = 0;
my @print_table;

while (@ARGV) {
  if ($ARGV[0] eq "-i") {
    $inputDir = $ARGV[1];
  }
  if ($ARGV[0] eq "-o") {
    $outputDir = $ARGV[1];
  }
  if ($ARGV[0] eq "-m") {
    $match_key = $ARGV[1];
  }
  if ($ARGV[0] eq "-f") {
    $outfile = $ARGV[1];
  }


  if ($ARGV[0] eq "-h") {
    &usage;
    exit;
  }


 shift @ARGV;
}

$curDir = `pwd`;
chomp($curDir);

if (!(-e $inputDir)) {
  print "Error: Input directory: $inputDir does not exist....\n";
  exit;
}


if (!(-e $outputDir)) {
  print "Warning: output directory: $outputDir does not exist, output to current directory....\n";
  $outputDir = $curDir;

}


if(($outputDir eq "..") || ($outputDir eq "../")) {
  $outputDir = $curDir."/..";

}

if(($outputDir eq ".") || ($outputDir eq "./")) {
  $outputDir = $curDir;

}

$outfile = $outputDir."/".$outfile;
open (OUT, ">$outfile") || die "couldn't open file: $outfile\n";
	print OUT "<html><pre>\n";
	print OUT "<h1 align=\"center\">ICC DP RM Explore Mode Run Results</h1>\n";
	print OUT "<table border=1><tr>\n";
	print OUT "
		<tr>
		<td></td>
		<td nowrap align=center colspan=4>Route QoR</td>
		<td nowrap align=center colspan=5>Timing QoR</td>
		<td nowrap align=center colspan=2>DRC</td>
		<td nowrap align=center colspan=2>Power QoR</td>
		<td nowrap align=center colspan=6>Links</td>
		</tr>\n";
	print OUT "
		<tr>
		<td>Floorplan</td>
		<td>total</td>
		<td>max</td>
		<td nowrap align=center>%</td>
		<td>wirelength</td>
		<td nowrap align=center>wns</td>
		<td nowrap align=center>tns</td>
		<td>number</td>
		<td nowrap align=center >clk</td>
		<td>cell inst</td>
		<td>tran num</td>
		<td>cap num</td>
		<td>gnd IR drop</td>
		<td>pwr IR drop</td>
		<td>place log</td>
		<td>ipo log</td>
		<td>pna log</td>
		<td>route log</td>
		<td>qor report</td>
		<td>congestion map</td>
		</tr>\n";
#print OUT ",Post PNS Route QoR,,,,Timing/Opt QoR,,,,,DRC,,Power QoR,,,,,,\n";
#print OUT "Floorplan,total,max,%,wirelength,wns,tns,number,clk,cell Inst, tran,cap,gnd IR drop,gnd wire em, gnd via em,pwr IR drop,pwr wire em,pwr via em\n";
close(OUT);

chdir ($inputDir);
@files = `ls *.ss.sum.full`;

$print_table_row = 0;
foreach $name (@files) {
  chomp($name);
  $prefix = substr($name,0,-12);
  print "Parsing Logs: $prefix\n";
  $finalQor = $name;
  $routeLog = $prefix."_groute.log";
  $pnaLog   = $prefix."_pna.log";
  $runLog   = $prefix."_place.log";
  $ipoLog   = $prefix."_ipo.log";
  $timingReport   = $prefix.".ss.sum.full.html";
  $congestionMap   = $prefix.".png";
 #if(!(-e $routeLog) || !(-e $pnaLog)) {
  #  print "Error: Log File Set is not complete, $routeLog or $pnaLog  does not exist.\n";
  #  exit;
  #}
  #open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";
  #print OUT "\n$prefix,";
  #close(OUT);
  &getRouteLog($routeLog,$outfile);
  &getFinalQor($finalQor,$outfile);
  &getPnaLog($pnaLog,$outfile);

  $print_table_row++;

}

@column_max;
@column_min;


for($col=1; $col<=13; $col++){
  $col_max = $print_table[0][$col];
  $col_min = $print_table[0][$col];
  for($row=0; $row<$print_table_row; $row++){
    if($print_table[$row][$col] >= $col_max) {
      $col_max = $print_table[$row][$col];
      $column_max[$col] = $print_table[$row][$col];
    }
    if($print_table[$row][$col] <= $col_min) {
      $col_min = $print_table[$row][$col];
      $column_min[$col] = $print_table[$row][$col];
    }
  }

}

if($debug == 1) {
print "MAX: ";
foreach $item(@column_max) {
  print "$item ";
}
print "\n";

print "MIN: ";
foreach $item(@column_min) {
  print "$item ";
}
}
open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";


for($row=0; $row<$print_table_row; $row++){

  print OUT "<tr> ";
  print OUT "<td>$print_table[$row][0]</td> ";



  for($col=1; $col<=13; $col++){
    if( $column_max[$col] == $column_min[$col]) {
      print OUT " <td nowrap align=center>$print_table[$row][$col]</td> ";
    } else {



      if($print_table[$row][$col] == $column_max[$col]) {
        if(($col != 5) && ($col != 6)) {
          print OUT " <td nowrap align=center><font color=000000>$print_table[$row][$col]</font></td> ";
          #print OUT " <td nowrap align=center><b><font color=FA0000>$print_table[$row][$col]</font></b></td> ";
        } else {
          print OUT " <td nowrap align=center><b><font color=00AB00>$print_table[$row][$col]</font></b></td> ";
        }
	
      } elsif ($print_table[$row][$col] == $column_min[$col]) {
	if(($col != 5) && ($col != 6)) {
          print OUT " <td nowrap align=center><b><font color=00AB00>$print_table[$row][$col]</font></b></td> ";
        } else {
          print OUT " <td nowrap align=center><font color=000000>$print_table[$row][$col]</font></td> ";
          #print OUT " <td nowrap align=center><b><font color=FA0000>$print_table[$row][$col]</font></b></td> ";
        }
      } else {
        print OUT " <td nowrap align=center>$print_table[$row][$col]</td> ";
      }


    }
  }

  print OUT " <td nowrap align=center><a href=$inputDir/$print_table[$row][14]\><b>log</b></a></td> ";
  print OUT " <td nowrap align=center><a href=$inputDir/$print_table[$row][15]\><b>log</b></a></td> ";
  if ( (-e $pnaLog) ) {
	print OUT " <td nowrap align=center><a href=$inputDir/$print_table[$row][16]\><b>log</b></a></td> ";} else {
  	print OUT " <td nowrap align=center>-</a></td> ";}
  print OUT " <td nowrap align=center><a href=$inputDir/$print_table[$row][17]\><b>log</b></a></td> ";
  print OUT " <td nowrap align=center><a href=./snapshot/$print_table[$row][18]\><b>rpt</b></a></td> ";
  print OUT " <td nowrap align=center><a href=$inputDir/$print_table[$row][19]\><b>map</b></a></td> ";
  print OUT " </tr>\n";


}


close(OUT);


chdir ($curDir);

&printComments($outfile);

sub getRouteLog{

my $infile = $_[0];
my $outfile = $_[1];

open (IN, $infile) || die "couldn't open file: $infile\n";
open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";

  while (<IN>) {
  chomp;
  s/#.*//;
  next if /^(\s)*$/;

  if(($_ =~ /Both Dirs/) && ($_ =~ /Overflow/)) {
    @tmp  = split (/\s+/,$_);
    $ll   = length ($tmp[12]);
    my $t1   = substr($tmp[12],1,$ll-3);
    #print OUT "$tmp[5] $tmp[8],$t1,";
    $total_overflow = $tmp[5];
    $max_overflow   = $tmp[8];
    $grc_overflow   = $t1;
  }

  if($_ =~ /Total Wire Length/) {
    @tmp = split (/=/,$_);
    my $t1 = &trimSpace($tmp[1]);
    $total_wireLength = $t1;
  }

  if($_ =~ /Total wire length/) {
    @tmp = split (/=/,$_);
    my $t1 = &trimSpace($tmp[1]);
    $total_wireLength = $t1;
  }

  }
#print OUT "$total_overflow,$max_overflow,$grc_overflow,$total_wireLength,";

close(IN);
close(OUT);

}

sub getFinalQor
{
  my $infile    = $_[0];
  my $outfile   = $_[1];
  my %clk_line;
  my $clk_index = 0;
  my $flag = 0;

  open (IN, $infile) || die "couldn't open file: $infile\n";
  open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";

  while (<IN>) {
  chomp;
  s/#.*//;
  next if /^(\s)*$/;
  s/^\s+//;

# Easiest approach
#  if($_ =~ /timing group/) {
#    $_ = <IN>;
#    $_ = <IN>;
#    @tmp = split (/\s+/,$_);
#    my $t1 = &trimSpace($tmp[0]);
#    $wns_clk_name = $t1;
#  }

  if($_ =~ /timing group/) {
    $_ = <IN>;
    $_ = <IN>;
    $flag = 1;
    #print "flag 1 $_\n";
  } else {
    if($_ =~ /\------/) {
    $flag = 2;
    #print "flag 2 $_\n";
  }
  }

  #print "$flag\n";

  if($flag == 1) {
    @tmp = split (/\s+/,$_);
    my $key = &trimSpace($tmp[0]);
    $clk_line{$key} = $_;
    $clk_name[$clk_index] = $key;
    $clk_index++;
    #print "$key\n";
  }

  if($_ =~ /Setup WNS/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[2]);
    $wns = $t1;
  }

  if($_ =~ /Setup TNS/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[2]);
    $tns = $t1;
  }

  if($_ =~ /setup violations/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[4]);
    $wns_number = $t1;
  }

  if($_ =~ /trans violations/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[5]);
    $maxTran = $t1;
  }

  if($_ =~ /cap violations/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[5]);
    $maxCap = $t1;
  }

  if($_ =~ /Cell count/) {
    @tmp = split (/\s+/,$_);
    my $t1 = &trimSpace($tmp[2]);
    $numCells = $t1;
  }

  }

  my $i = 0;
  foreach $clk (@clk_name) {
    my $line = $clk_line{$clk};
    my @tmp  = split (/\s+/,$line);
    $cur_wns = $tmp[1];
    if($i == 0) {
      $final_wns = $cur_wns;
      $wns_clk_name = $clk;
    } else {
      if($cur_wns < $final_wns) {
        $final_wns = $cur_wns;
        $wns_clk_name = $clk;
      }
    }
    #print "clk:$clk cur_wns:$cur_wns final_wns:$final_wns\n";
    #print "CLK NAME: $clk  WNS: $tmp[5]   TNS: $tmp[6]  VIOL PATHS: $tmp[7]\n";
    $i++;
  }

  #print OUT "$final_wns_array[5],$final_wns_array[6],$final_wns_array[7],$wns_clk_name,$numCells,$maxTran,$maxCap,";
  close(IN);
  close(OUT);

}


sub getFinalQorold
{
  my $infile    = $_[0];
  my $outfile   = $_[1];
  my $match_key = $_[2];
  my %clk_table;
  my $counter = 0;
#  my $numCells = 0;
  my $stop_flag = 0;
  my $numClk = 0;

  open (IN, $infile) || die "couldn't open file: $infile\n";
  open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";

  while (<IN>) {
    chomp;
    s/#.*//;
    next if /^(\s)*$/;
    s/^\s+//;



    if($_ =~ /$match_key[^_]/) {
      $counter++;
      $stop_flag = 0;
    }
    if(($counter == 2) && ($_ !~ /^\|/)) {
      $stop_flag = 1;
    }

    if(($counter == 1) && ($_ =~ /$match_key[^_]/)){
        my @tmp = split (/\|/,$_);
        $numCells = $tmp[2];
    }


    if(($counter == 2) && ($stop_flag == 0)) {
      @tmp = split (/\|/,$_);
      my $key = $tmp[2];
      $clk_table{$key} = $_;
      $clkNames[$numClk] = $key;
      $numClk++;
    }

    if(($counter == 3) &&  ($_ =~ /$match_key[^_]/)){
      my @tmp = split (/\|/,$_);
      $maxTran = $tmp[2];
      $maxCap  = $tmp[4];
    }

  }

  my $i = 0;
  foreach $clk (@clkNames) {
    my $line = $clk_table{$clk};
    my @tmp  = split (/\|/,$line);
    $cur_wns = $tmp[5];
    if($i == 0) {
      $final_wns = $cur_wns;
      $wns_clk_name = $clk;
    } else {
      if($cur_wns < $final_wns) {
        $final_wns = $cur_wns;
        $wns_clk_name = $clk;
      }
    }
    #print "CLK NAME: $clk  WNS: $tmp[5]   TNS: $tmp[6]  VIOL PATHS: $tmp[7]\n";
    $i++;
  }

  $final_wns_line   = $clk_table{$wns_clk_name};
  @final_wns_array  = split (/\|/,$final_wns_line);



  #print OUT "$final_wns_array[5],$final_wns_array[6],$final_wns_array[7],$wns_clk_name,$numCells,$maxTran,$maxCap,";
  close(IN);
  close(OUT);

}

sub getPnaLog {

if ( !(-e $pnaLog) ) {
$gnd_IR_drop  = "-";
$pwr_IR_drop  = "-";
} else {

  my $infile    = $_[0];
  my $outfile   = $_[1];
  my $flag      = 0;
  my $vss_vdd   = 0;  # 0 for VSS , 1 for VDD
  open (IN, $infile) || die "couldn't open file: $infile\n";
  open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";

  while (<IN>) {
    chomp;
    s/#.*//;
    next if /^(\s)*$/;
    s/^\s+//;

    if($_ =~ /Summary/) {
      $flag = 1;
    }

    next if ($flag == 0);

    if(($vss_vdd == 0) && ($_ =~ /^Maximum IR drop:/)) {
      my @tmp = split (/\s+/,$_);
      $gnd_IR_drop  = $tmp[3];
    }

    if(($vss_vdd == 0) && ($_ =~ /^Maximum Wire EM:/)) {
      my @tmp = split (/\s+/,$_);
      $gnd_Wire_EM  = $tmp[3];
    }

    if(($vss_vdd == 0) && ($_ =~ /^Maximum Via EM:/)) {
      my @tmp = split (/\s+/,$_);
      $gnd_Via_EM  = $tmp[3];
      $vss_vdd = 1;
    }

    if(($vss_vdd == 1) && ($_ =~ /^Maximum IR drop:/)) {
      my @tmp = split (/\s+/,$_);
      $pwr_IR_drop  = $tmp[3];
    }

    if(($vss_vdd == 1) && ($_ =~ /^Maximum Wire EM:/)) {
      my @tmp = split (/\s+/,$_);
      $pwr_Wire_EM  = $tmp[3];
    }

    if(($vss_vdd == 1) && ($_ =~ /^Maximum Via EM:/)) {
      my @tmp = split (/\s+/,$_);
      $pwr_Via_EM  = $tmp[3];
    }



  }

}

  #print OUT "$gnd_IR_drop,$gnd_Wire_EM,$gnd_Via_EM,$pwr_IR_drop,$pwr_Wire_EM,$pwr_Via_EM\n";

	#print OUT "
	#	<tr>
	#	<td>$prefix</td>
	#	<td nowrap align=center>$total_overflow</td>
	#       <td nowrap align=center>$max_overflow</td>
	#	<td nowrap align=center>$grc_overflow</td>
	#	<td nowrap align=center>$total_wireLength</td>
	#	<td>$final_wns_array[5]</td>
	#	<td>$final_wns_array[6]</td>
	#	<td nowrap align=right>$final_wns_array[7]</td>
	#	<td nowrap align=center>$wns_clk_name</td>
	#	<td nowrap align=center>$numCells</td>
	#	<td>$maxTran</td>
	#	<td>$maxCap</td>
	#	<td nowrap align=right>$gnd_IR_drop</td>
	#	<td nowrap align=center>$gnd_Wire_EM</td>
	#	<td nowrap align=center>$gnd_Via_EM</td>
	#	<td nowrap align=right>$pwr_IR_drop</td>
	#	<td nowrap align=center>$pwr_Wire_EM</td>
	#	<td nowrap align=center>$pwr_Via_EM</td>
	#	<td nowrap align=center><a href=\./$inputDir/$runLog\><b>log</b></a></td>
	#	<td nowrap align=center><a href=\./$inputDir/$ipoLog\><b>log</b></a></td>
	#	<td nowrap align=center><a href=\./$inputDir/$pnaLog\><b>log</b></a></td>
	#	<td nowrap align=center><a href=\./$inputDir/$routeLog\><b>log</b></a></td>
	#	</tr>\n";

  $print_table[$print_table_row][0] = $prefix;
  $print_table[$print_table_row][1] = $total_overflow;
  $print_table[$print_table_row][2] = $max_overflow;
  $print_table[$print_table_row][3] = $grc_overflow;
  $print_table[$print_table_row][4] = $total_wireLength;
  $print_table[$print_table_row][5] = $wns;
  $print_table[$print_table_row][6] = $tns;
  $print_table[$print_table_row][7] = $wns_number;
  $print_table[$print_table_row][8] = $wns_clk_name;
  $print_table[$print_table_row][9] = $numCells;
  $print_table[$print_table_row][10] = $maxTran;
  $print_table[$print_table_row][11] = $maxCap;
  $print_table[$print_table_row][12] = $gnd_IR_drop;
  $print_table[$print_table_row][13] = $pwr_IR_drop;
  $print_table[$print_table_row][14] = $runLog;
  $print_table[$print_table_row][15] = $ipoLog;
  $print_table[$print_table_row][16] = $pnaLog;
  $print_table[$print_table_row][17] = $routeLog;
  $print_table[$print_table_row][18] = $timingReport;
  $print_table[$print_table_row][19] = $congestionMap;
  close(IN);
  close(OUT);

}

sub printComments {

open (OUT, ">>$outfile") || die "couldn't open file: $outfile\n";

print OUT "</table>\n";
print OUT "<font size=3><b><U>NOTE</U></b></font>\n";
print OUT "<b>1.Legend</b>\n";
print OUT "  - Route QoR: final proto route (or global route) medium effort results\n";
print OUT "    Results are parsed from *_groute.log\n";
print OUT "     * total: total overflow\n";
print OUT "     * max: max overflow\n";
print OUT "     * %: percentage of GRC with overflow\n";
print OUT "     * wirelength: total wire length\n";
print OUT "  - Timing QoR: final timing results\n";
print OUT "    Results are parsed from *.ss.sum.full\n";
print OUT "     * wns: WNS of clock group with worst WNS\n";
print OUT "     * tns: TNS of clock group with worst WNS\n";
print OUT "     * number: number of violations of clock group with worst WNS\n";
print OUT "     * clk: name of clock group with worst WNS\n";
print OUT "     * cell inst: final number of cell instances in the design (AFTER IPO)\n";
print OUT "  - DRC: final DRC results\n";
print OUT "    Results are parsed from *.ss.sum.full\n";
print OUT "     * tran num: number of max transition violations\n";
print OUT "     * cap num: number of max capacitance violations\n";
print OUT "  - Power QoR: final power network analysis results (available only if power network synthesis is performed)\n";
print OUT "    Results are parsed from *_pna.log\n";
print OUT "     * gnd IR drop: maximum IR drop for \$MW_GROUND_NET\n";
print OUT "     * power IR drop: maximum IR drop for \$MW_POWER_NET\n";
print OUT "\n";
print OUT "<b>2.Steps in explore mode and correspondent outputs:</b>\n";
print OUT "<b>  All the following are saved in \$REPORTS_DIR</b>\n";
print OUT "  - create_fp_placement: *_place.log (shown as link in the table)\n";
print OUT "  - route_fp_proto: *_groute_after_place.log\n";
print OUT "  - report timing before optimize_fp_timing (optional): *_fp_optimize_before.rpt\n";
print OUT "  - optimize_fp_timing: *_ipo.log (shown as link in the table)\n";
print OUT "  - report timing after (optional): *_fp_optimize_after.rpt\n";
print OUT "  - analyze_fp_rail (after synthesize_fp_rail): *_pna.log (shown as link in the table)\n";
print OUT "  - final route_fp_proto: *_groute.log (shown as link in the table)\n";
print OUT "  - final report_qor_snapshot: *.ss.sum.full (shown as link in the table)\n";
print OUT "<b>  All the following are saved in \$RESULTS_DIR</b>\n";
print OUT "  - write_floorplan -placement {io hard_macro soft_macro}: *_dump.floorplan\n";
print OUT "  - write_floorplan -preroute: *_dump.route\n";
print OUT "  - write_floorplan -all: *_dump.complete_floorplan\n";
print OUT "  - write_pin_pad_physical_constraints -constraint_type side_order -io_only: *_dump.tdf\n";
print OUT "  For DCT use\n";
print OUT "  - write_def: *_dump.DCT.def\n";
print OUT "  - write_floorplan: *_dump.DCT.fp\n";
print OUT "\n";
print OUT "<b>3.If you use explore mode,</b>\n";
print OUT "<b>  how to use explore run results and continue in ICC RM?</b>\n";
print OUT " \n";
print OUT "  After explore mode is done, please review results in the HTML table and pick one result you like to continue ICC RM\n";
print OUT "  You can do this by either of the following 2 approaches depending on your preference:\n";
print OUT " \n";
print OUT "  - Use the saved CEL from the run you like as starting point for ICC RM\n";
print OUT "    -> Please change variable ICC_FLOORPLAN_CEL in icc_setup.tcl to this CEL name\n";
print OUT "     * This CEL will contain fixed macro placement as well as In Place Optimization and Power Network Synthesis changes\n";
print OUT "     * ICC_FLOORPLAN_CEL is the variable which you specify the stating CEL of ICC RM\n";
print OUT " \n";
print OUT "  - Use the dumped floorplan_file and routes from the run you like and load it to original CEL\n";
print OUT "    -> Open CEL saved_cel_before_explore_mode, load the dumped floorplan file and routes from the run you like\n";
print OUT "    -> save the CEL as for example, flat_dp and change ICC_FLOORPLAN_CEL to flat_dp\n";
print OUT "     * This approach ensures no netlist change and only macro placement and PG routes\n";
print OUT "     * saved_cel_before_explore_mode is the CEL saved before explore mode starts which is your clean starting point\n";
print OUT "     * the dumped floorplan file is in \$RESULTS_DIR, for ex, you can load it by:\n";
print OUT "    		read_floorplan \$RESULTS_DIR/run0_default_dump.floorplan\n";
print OUT "     * the dumped route file is in \$RESULTS_DIR, for ex, you can load it by:\n";
print OUT "    		read_floorplan \$RESULTS_DIR/run0_default_dump.route\n";
print OUT " \n";

close(OUT);

}

sub trimSpace
{
  my $string = shift;
  $string =~ s/^\s+//; #trim leading space
  $string =~ s/\s+$//; #trim ending space
  return $string;
}


sub usage{
  print "*****************************************************************\n";
  print "\nparseOneSetDesignLogs.pl -i <input directory> \n";
  print "                     -o <output directory> \n";
  print "                     -f <output fileName> \n";
  print "                     -h for help\n";

 print "Note that if anything of the arguments is not defined, it'll default to the current working directory\n";
 print "\n";
 print "Default output file name is:                      outfile.txt \n";
 print "*****************************************************************\n";


}


