#!/bin/sh

case "$2" in
  "plex")
    /bin/plexmediaplayer
    ;;
  "dwm")
    /home/calvin/projects/dwm/autostart
    /home/calvin/projects/dwm/dwm
    ;;
  "openbox")
    /bin/openbox
    ;;
  "hlwm" | "herbstluftwm" | *)
    alias herbstclient=/home/calvin/projects/herbstluftwm/build/herbstclient
    alias herbstluftwm=/home/calvin/projects/herbstluftwm/build/herbstluftwm
    herbstluftwm
    ;;
esac
