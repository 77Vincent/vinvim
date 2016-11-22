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
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'https://github.com/mustache/vim-mustache-handlebars.git'

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
set t_Co=256
syntax on
set background=dark
color distinguished 

" *************** Indentation ***************
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab

" *************** Highlighting ***************
set hlsearch
set incsearch
set cursorcolumn
set cursorline

" *************** Mapping ***************
nnoremap <S-x> d$

" *************** Plugins ***************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
