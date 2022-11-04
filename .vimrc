set nocompatible

set smartcase
set ignorecase
set hlsearch
set incsearch

set nu
set ruler

set bs=indent,eol,start
set background=dark
set termguicolors

set wmnu
set shiftwidth=4
set tabstop=4

set noimd

set autoindent
set smartindent
set cindent
set laststatus=2
set showmatch
set sm
set history=1000

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

if has("syntax")
 syntax on
endif

set encoding=utf-8
lang mes en_US

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'The-NERD-tree'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'jelera/vim-javascript-syntax'
Plugin 'wakatime/vim-wakatime'
Plugin 'dracula/vim'

call vundle#end()

colorscheme dracula
filetype plugin indent on
