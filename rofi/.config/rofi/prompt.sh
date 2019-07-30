#!/bin/sh
# vim: set noexpandtab:

PARAMS=$(tr '\n' ' ' <<-ENDPARAMS
	-i
	-hide-scrollbar
	-show run
ENDPARAMS
)

rofi $PARAMS
