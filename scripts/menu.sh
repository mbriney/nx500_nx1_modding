#!/bin/bash
if ! killall -q mod_gui 
  then
	/opt/home/scripts/loadgui.sh
fi 
killall -q popup_entry & killall -q popup_ok &  killall -q focus_stack & killall -q focus_buttons & 
