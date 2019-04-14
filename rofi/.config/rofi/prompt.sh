#!/bin/bash

ROFIOPTS=(
    -font "FontAwesome,Noto Sans Mono 14"
    -i
    -lines 6
    -width 800
    -hide-scrollbar
    -opacity 100
)

rofi -show run "${ROFIOPTS[@]}"
