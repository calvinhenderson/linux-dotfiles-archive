#!/bin/sh
# vim: set noexpandtab:

PARAMS=$(tr '\n' ' ' <<-ENDPARAMS
	-i
	-lines 4
	-hide-scrollbar
	-show run
	-columns 2
ENDPARAMS
)

rofi $PARAMS
