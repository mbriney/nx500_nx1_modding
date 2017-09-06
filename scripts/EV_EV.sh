#!/bin/bash
[[ $(echo $(st cap capdtm getusr MONITOROUT) | grep LCD) > ""  ]] || { $(st app disp lcd) &&  sleep 1 ; } & killall -q mod_gui 
/opt/home/scripts/loadgui.sh
killall -q popup_entry & killall -q popup_ok &  killall -q focus_stack & killall -q focus_buttons & 
exit
