set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/tpope/vim-surround.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Color scheme
syntax on
color distinguished

" For indentation
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab

" Highlighting
set hlsearch
set cursorline

set nocompatible
set mouse=a

" Always switch to the current file
set autochdir

" Allow for cursor beyond last character 
set virtualedit=onemore

" Store a ton of history, the default is 20
set history=1000

" Display the current mode
set showmode

" Line numbers on
set nu

" Same indentation on paste
set pastetoggle=<F12>

" Auto write
au FocusLost * :wa
set autowrite

filetype plugin indent on


" Normal Mode Shortcuts
nmap <Return> o
nmap <BS> i<BS>

" Visual Mode Shortcuts
vmap <BS> "_dd


