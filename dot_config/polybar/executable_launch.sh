#!/bin/env bash
 
## initial variables
# The names of the polybars that have to be managed
BAR_NAMES="panel"
# Name of the display which has to show the tray
TRAY_OUTPUT=$(xrandr | awk '/ primary / {print $1}')
 
# find monitors (active + disabled)
ACTIVE_MONITORS=$(xrandr | awk '/ connected/{print $1}')
DISABLED_MONITORS=$(xrandr | awk '/disconnected/{print $1}')
 
## For each bar, do the following
for bar in $BAR_NAMES
do
# kill polybar instances on disabled monitors
for i in $DISABLED_MONITORS
do
    WM_NAME=polybar-${bar}_${i}
    PID=$(xprop -name $WM_NAME 2>/dev/null | awk '/_NET_WM_PID\(CARDINAL\)/{print $NF}')
    if [ $PID ]
    then
        kill $PID
    fi
done
# start additional polybar instances on new monitors
for j in $ACTIVE_MONITORS
do
    WM_NAME=polybar-${bar}_${j}
    PID=$(xprop -name $WM_NAME 2>/dev/null | awk '/_NET_WM_PID\(CARDINAL\)/{print $NF}')
    if [ ! $PID ]
    then
        if [[ "$j" == "$TRAY_OUTPUT" ]]
        then
            POLYBAR_TRAY_POS="right" MONITOR=$j polybar $bar &
        else
            POLYBAR_TRAY_POS="none" MONITOR=$j polybar $bar &
        fi
    fi
done
done
