#!/bin/bash
renice -n -10 -p $$
[[ $(echo $(st cap capdtm getusr MONITOROUT) | grep LCD) > ""  ]] && /opt/home/scripts/popup_timeout  " [ Initial Setup ] " 3 &
#############################################
Pro4K=170; ProHD=180; Hq4K=90; HqHD=90; HqVGA=180 ; fps=4
#############################################
envbr="Pro4K=$Pro4K ProHD=$ProHD Hq4K=$Hq4K HqHD=$HqHD HqVGA=$HqVGA fps=$fps"
#
brr="$(/opt/home/scripts/pokemonche pro1 $Pro4K) "
brr+="$(/opt/home/scripts/pokemonche pro2 $ProHD) "
brr+="$(/opt/home/scripts/pokemonche pro3 $ProHD) "
brr+="$(/opt/home/scripts/pokemonche hq1 $Hq4K) "
brr+="$(/opt/home/scripts/pokemonche hq2 $HqHD) "
brr+="$(/opt/home/scripts/pokemonche hq3 $HqHD) "
brr+="$(/opt/home/scripts/pokemonche hq4 $HqHD) "
brr+="$(/opt/home/scripts/pokemonche hq5 $HqVGA) "
brr+="$(/opt/home/scripts/pokemonche hq6 $HqVGA)"
#
$(sleep 5 && /opt/home/scripts/auto/a_init.sh && sync;sync;sync ) &
#
sed -e "s/\${envbr}/""$envbr""/" -e "s/\${brr}/""$brr""/" -e "s/\${s}/"$s\ "/"  /opt/home/scripts/init_auto.tp >  /opt/home/scripts/auto/a_init.sh
