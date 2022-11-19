#!/bin/env bash

## The name of the bar you want to manage
BAR_NAMES="panel"
TRAY_OUTPUT=$(xrandr | awk '/ primary / {print $1}')

## Find active monitors
ACTIVE_MONITORS=$(xrandr | awk '/ connected/{print $1}')

## For each bar, do the following
for bar in $BAR_NAMES; do

    ## Kill all polybar processes
    pkill -9 polybar

    for monitor in $ACTIVE_MONITORS; do

        if [[ "$monitor" == "$TRAY_OUTPUT" ]]; then
            POLYBAR_TRAY_POS="right" MONITOR=$monitor polybar $bar &
        else
            POLYBAR_TRAY_POS="none" MONITOR=$monitor polybar $bar &
        fi

    done

done