##########################################################################################
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys, Inc. All rights reserved.
##########################################################################################


  if {$PD1 != "" } {
     if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -voltage_area $VA1 -connect_to_power $MW_POWER_NET1 -connect_to_ground $MW_GROUND_NET}
     if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -voltage_area $VA1 -connect_to_power $MW_POWER_NET1 -connect_to_ground $MW_GROUND_NET}
  }
  if {$PD2 != "" } {
     if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -voltage_area $VA2 -connect_to_power $MW_POWER_NET2 -connect_to_ground $MW_GROUND_NET}
     if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -voltage_area $VA2 -connect_to_power $MW_POWER_NET2 -connect_to_ground $MW_GROUND_NET}
  }
  if {$PD3 != "" } {
     if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -voltage_area $VA3 -connect_to_power $MW_POWER_NET3 -connect_to_ground $MW_GROUND_NET}
     if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -voltage_area $VA3 -connect_to_power $MW_POWER_NET3 -connect_to_ground $MW_GROUND_NET}
  }
  if {$PD4 != "" } {
     if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -voltage_area $VA4 -connect_to_power $MW_POWER_NET4 -connect_to_ground $MW_GROUND_NET}
     if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -voltage_area $VA4 -connect_to_power $MW_POWER_NET4 -connect_to_ground $MW_GROUND_NET}
  }


