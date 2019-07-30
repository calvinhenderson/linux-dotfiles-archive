#!/bin/sh
# vim: set noexpandtab:

PARAMS=$(tr '\n' ' ' <<-ENDPARAMS
	-i
	-lines 6
	-hide-scrollbar
	-show run
ENDPARAMS
)

rofi $PARAMS
