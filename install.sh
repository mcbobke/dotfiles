#!/bin/bash

if [ -d ~/.vim/bundle/Vundle.vim ]
then
    OWD=$PWD
    cd ~/.vim/bundle/Vundle.vim
    git pull > /dev/null 2>&1
    cd $OWD
    echo Vundle git repo updated
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1
    echo Vundle git repo cloned to ~/.vim/bundle/Vundle.vim
fi

if [ ! -d ~/.asdf ]
then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0 > /dev/null 2>&1
    echo asdf git repo cloned to ~/.asdf
fi

cp -f -t ~ .bashrc .bash_aliases .vimrc .gitconfig .tmux.conf
echo Dotfiles copied to home folder
