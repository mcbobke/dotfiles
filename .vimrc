set nocompatible
set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd
set incsearch
set number
syntax on
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set background=dark
colorscheme desert
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif

filetype plugin indent on
