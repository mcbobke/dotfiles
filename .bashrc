#!/bin/bash
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source aliases
if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Prompt (always leave this at the end)
# First prompt: if running as effective user ID 0 (root)
if [[ $EUID -eq 0 ]]; then
	PS1='\[\e[31mROOT\] \[\e[36m[\t]\] \[\e[32m\u\]\[\e[37m@\]\[\e[35m\H\] \[\e[37m:\] \[\e[33m\w\] \[\e[0m\] \n> '
else
	PS1='\[\e[36m[\t]\] \[\e[32m\u\]\[\e[37m@\]\[\e[35m\H\] \[\e[37m:\] \[\e[33m\w\] \[\e[0m\] \n> ' 
fi
