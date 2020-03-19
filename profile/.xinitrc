#!/bin/sh

case "$2" in
  "plex")
    /bin/plexmediaplayer
  ;;
  "tinywm" | "twm")
    /home/calvin/projects/tinywm/tinywm
  ;;
  "dwm")
    /home/calvin/projects/dwm/autostart
    /home/calvin/projects/dwm/dwm
  ;;
  "plasma")
    /bin/plasma_session
  ;;
  "hlwm" | "herbstluftwm" | *)
    /home/calvin/projects/herbstluftwm/build/bin/herbstluftwm
  ;;
esac
