#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -f -t ~ .bashrc .bash_aliases .vimrc .gitconfig
echo Files copied
source ~/.bashrc
