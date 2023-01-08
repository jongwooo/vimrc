set nocompatible

set smartcase
set ignorecase
set hlsearch
set incsearch

set nu
set ruler
set cursorcolumn
set cursorline

set bs=indent,eol,start
set background=dark
set termguicolors

set wmnu
set shiftwidth=2
set tabstop=2

set noimd

set autoindent
set smartindent
set cindent
set laststatus=2
set showmatch
set sm
set history=1000

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

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
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'wakatime/vim-wakatime'
Plugin 'dracula/vim'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'

call vundle#end()

colorscheme dracula

map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on
