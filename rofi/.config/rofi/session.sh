#!/bin/sh
# vim: set noexpandtab:

PROMPT=$(cat <<-ENDPROMPT
		Lock
		Suspend
		Hibernate
		Logout
		Reboot
		Poweroff
ENDPROMPT
#	Hibernate
)

PARAMS=$(tr '\n' ' ' <<-ENDPARAMS
	-i
	-lines $(echo "$PROMPT" | wc -l)
	-width 400
	-padding 20
	-disable-history
	-no-custom
	-hide-scrollbar
	-show run
	-dmenu
	-p action
ENDPARAMS
)

case "$(echo "$PROMPT" | rofi $PARAMS | awk '{print $2}')" in
	"Poweroff")
		systemctl poweroff
		;;
	"Reboot")
		systemctl reboot
		;;
	"Logout")
		herbstclient quit
		;;
	"Hibernate")
		locker && systemctl hibernate
		;;
	"Suspend")
		locker && systemctl suspend
		;;
	"Lock")
		locker
		;;
	*)
		exit
		;;
esac
