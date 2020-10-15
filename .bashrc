#!/bin/bash
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source aliases
if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi

# Environment variables
export EDITOR=vim
export PATH=$PATH:$HOME/bin

# User specific aliases and functions
show256colors () {
    if [ -z $1 ]; then
        BREAK=4
    else
        BREAK=$1
    fi
    for i in {0..255} ; do
        printf "\x1b[38;5;${i}mcolour${i} \t"
        if [ $(( i % $BREAK )) -eq $(($BREAK-1)) ] ; then
            printf "\n"
        fi
    done
}

umask 027

# ASDF for managing runtime versions
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Prompt (always leave this at the end)
# First prompt: if running as effective user ID 0 (root)
if [[ $EUID -eq 0 ]]; then
	PS1='\[\e[31mROOT\] \[\e[36m[\t]\] \[\e[32m\u\]\[\e[37m@\]\[\e[35m\H\] \[\e[37m:\] \[\e[33m\w\] \[\e[0m\] \n> '
else
	PS1='\[\e[36m[\t]\] \[\e[32m\u\]\[\e[37m@\]\[\e[35m\H\] \[\e[37m:\] \[\e[33m\w\] \[\e[0m\] \n> ' 
fi
