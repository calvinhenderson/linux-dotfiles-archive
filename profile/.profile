#!/bin/sh

#-----------#
# Variables #
#-----------#
export EDITOR=vim
export PATH=$HOME/bin:$PATH

#---------#
# Aliases #
#---------#
alias ls="ls -ah --group-directories-first --color=always"
alias lsl="ls -lah --group-directories-first --color=always"

if [ "$TERM" = "linux" ]; then
    alias lock="physlock"
else
    alias lock="locker"
fi

#------- #
# Prompt #
#------- #
export PS1="›› "
color-console
printf "====[ %s ]====\n" "$(date +%H:%M:%S)"
