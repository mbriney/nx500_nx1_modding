#!/bin/bash
if ! killall -q onscreen_ks 
  then
    nice -n +20 /opt/home/scripts/onscreen_ks &
fi 
