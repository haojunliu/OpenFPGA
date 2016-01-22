if {![file exists [which $PT_DIR/pt_shell]]} {
  echo "SCRIPT-Info : $PT_DIR/pt_shell does not exist. Skipping check_signoff_correlation"

} else {

  if {[file exists [which $PT_SDC_FILE]]} {
    set_primetime_options  -exec_dir $PT_DIR -sdc_file $PT_SDC_FILE
  } else {
    set_primetime_options  -exec_dir $PT_DIR
  }

  if {$STARRC_MIN_NXTGRD == ""} {set STARRC_MIN_NXTGRD $STARRC_MAX_NXTGRD}
  set_starrcxt_options  -exec_dir $STARRC_DIR \
     -max_nxtgrd_file $STARRC_MAX_NXTGRD \
     -min_nxtgrd_file $STARRC_MIN_NXTGRD \
     -map_file        $STARRC_MAP_FILE

check_signoff_correlation -preroute
}

