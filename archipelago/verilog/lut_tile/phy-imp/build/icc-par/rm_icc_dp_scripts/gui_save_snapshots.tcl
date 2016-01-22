###################################################################################################
# ICC Design Planning RM
# gui_save_snapshots.tcl: this is used in explore runs which opens GUI and saves snapshot as a file for each run and linked in HTML table.
# 			   please refer to the comments below which you can customize what objects to show or brightness of the snapshot.
# Version: D-2010.03-SP2 (July 6, 2010)
# Copyright (C) 2007-2010 Synopsys All rights reserved.
###################################################################################################


# start GUI; this line is required
uplevel #0 gui_start

# show congestion overlay; this line is required
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting mmName -value AREAPARTITION
gui_execute_events

# ------------------------------------------------------------------------------------------------------------------
# You can add your own options like turn on cell or turn off PG here but remember to add "gui_execute_events"
# For example,

# change brightness on the layout window
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting brightness -value 50%
gui_execute_events

# change color on standard cells
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting colorCellCore -value gray25
gui_execute_events

# turn off PG strap display
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting showRoutedStrap -value false
gui_execute_events

# turn off PG ring display
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting showRoutedRing -value false
gui_execute_events

# turn off via display
gui_set_setting -window [gui_get_current_window -types Layout -mru] -setting showContact -value false
gui_zoom -window [gui_get_current_window -view] -full
gui_execute_events
# ------------------------------------------------------------------------------------------------------------------

# save snapshots; this line is required
gui_write_window_image -window [gui_get_current_window -view -mru] -file ${REPORTS_DIR_DP}/${run_num}_${objective}.png

# stop GUI; this line is required
gui_stop
