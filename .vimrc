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
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" *************** Global ***************
set autochdir
set history=1000
set showmode
set showcmd
set showmatch
set autowrite
set ignorecase
set ruler
set encoding=utf-8
set fileencoding=utf-8
set scrolloff=7
set number

" *************** Color scheme ***************
syntax on
set background=dark
color jellybeans 

" *************** Indentation ***************
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set et

" *************** Highlighting ***************
set hlsearch
set incsearch
set cursorcolumn
set cursorline

" *************** Mapping ***************
nnoremap <S-x> d$
