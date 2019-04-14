#!/bin/bash

OPTIONS=(
"\t\uf023\tLock\n"
"\t\uf186\tSuspend\n"
"\t\uf08b\tLogout\n"
"\t\uf01e\tReboot\n"
"\t\uf011\tPoweroff\n"
"\t\uf05e\tCancel"
)

ROFIOPTS=(
    -font "FontAwesome,Noto Sans Book 13"
    -i
    -disable-history
    -no-custom
    -lines ${#OPTIONS[@]}
    -width 240
    -hide-scrollbar
    -opacity 100
)

SELECTION=$(echo -e "${OPTIONS[@]}" | rofi -dmenu -p "" "${ROFIOPTS[@]}")

case "$(echo ${SELECTION} | awk '{print $2}')" in
    "Poweroff")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Logout")
        herbstclient quit
        ;;
    "Suspend")
        betterlockscreen -s
        ;;
    "Lock")
        betterlockscreen -l
        ;;
    "Cancel" | *)
        exit
        ;;
esac
