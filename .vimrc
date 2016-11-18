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


" ********** Global **********
set ruler
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=7

" Color scheme
syntax on
color distinguished

set nocompatible

" Always switch to the current file
set autochdir

" Store a ton of history, the default is 20
set history=1000

" Display the current mode
set showmode

" Line numbers on
set nu

" Auto write
au FocusLost * :wa
set autowrite
filetype plugin indent on

" ********** Indentation **********
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

" ********** Highlighting **********
set hlsearch
set incsearch
set cursorcolumn
set cursorline

" ********** Mapping **********

" Save
inoremap <F1> <Esc>:w<Enter>
nnoremap <F1> :w<Enter>
inoremap <F2> <Esc>:q<Enter>
nnoremap <F2> :q<Enter>

" Text Selection
nnoremap <S-x> d$
