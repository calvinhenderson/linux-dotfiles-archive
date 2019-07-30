#!/bin/sh
status="$(playerctl status 2> /dev/null)"
track="$(playerctl metadata -f '{{title}} - {{artist}}' 2> /dev/null)"

if [ "$status" = "Playing" ]; then
    printf "%s" " $track"
elif [ "$status" = "Paused" ]; then
    printf "%s" " $track"
else
    printf "%s" "%{F$(xrdb -query | awk '/*color1:/{print $2}')} Not playing%{F}"
fi
