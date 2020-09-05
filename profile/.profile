#!/bin/sh

#-----------#
# Variables #
#-----------#
export VISUAL=neovide
export EDITOR=nvim
export PATH=$HOME/bin:$PATH

#---------#
# Aliases #
#---------#

# bash-keybinds shortcut
alias keys="bash-keybinds | less -R"

# htop
alias htop="htop -t"

# ls
alias ls="/usr/bin/ls -1 --group-directories-first --color=always"
alias lsl="/usr/bin/ls -lh --group-directories-first --color=always"
alias lsa="/usr/bin/ls -lah --group-directories-first --color=always"

# vim -> nvim
alias vim="nvim"
alias gvim="neovide"

# tmux
alias tnew="tmux new-session -s"
alias tattach="tmux attach-session -t"
alias tls="tmux list-sessions"

# x session
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  startx
fi

# locker
if [ "$TERM" = "linux" ]; then
  alias lock="physlock"
else
  alias lock="locker"
fi

#------- #
# Prompt #
#------- #
if [ "$TERM" = "linux" ]; then
  export PS1="› "
else
  export PS1="→ "
fi

color-console
