#!/bin/bash

if [ -d ~/.vim/bundle/Vundle.vim ]
then
    OWD=$PWD
    cd ~/.vim/bundle/Vundle.vim
    git pull > /dev/null
    cd $OWD
    echo Vundle git repo updated
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cp -f -t ~ .bashrc .bash_aliases .vimrc .gitconfig
echo Dotfiles copied to home folder
source ~/.bashrc
