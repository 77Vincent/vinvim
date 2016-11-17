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
" Color scheme
syntax on
color distinguished

set nocompatible

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

set scrolloff=3
set completeopt=preview,menu
set clipboard+=unnamed
set ruler

" Auto write
au FocusLost * :wa
set autowrite
filetype plugin indent on

" ********** For indentation **********
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

" ********** For Highlighting **********
set hlsearch
set incsearch
set cursorcolumn
set cursorline

" ********** Normal Mode Shortcuts **********

" Go into Insert mode
nnoremap <Enter> i<Enter>
nnoremap <bs> i<bs>
nnoremap <space> i
nnoremap <tab> i<tab>
nnoremap <Up> <Up>i
nnoremap <Down> <Down>i
nnoremap <Left> <Left>i
nnoremap <Right> <Right>i
" Cursor traveling
nnoremap [ j
nnoremap <S-k> 7k
nnoremap <S-j> 7j
nnoremap <C-l> $
nnoremap <C-h> 0
nnoremap <S-l> w
nnoremap <S-h> b 
" Save
inoremap <F1> <Esc>:w<Enter>
nnoremap <F1> :w<Enter>
inoremap <F2> <Esc>:q<Enter>
nnoremap <F2> :q<Enter>
" Undo Redo
nnoremap <C-z> u
nnoremap <C-y> <C-r>
inoremap <C-z> <Esc>ui
inoremap <C-y> <Esc><C-r>i
" Text Selection
inoremap <C-D> <Esc>d0i
" Visual Mode
vmap <BS> "_dd
