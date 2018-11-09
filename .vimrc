set nocompatible
set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd
set incsearch
set number
syntax on
set tabstop=1
set background=dark

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

filetype plugin indent on
