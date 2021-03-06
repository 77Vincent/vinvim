""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Title: Vinvim
" Author: Vincent Wen
" License: MIT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible  " be iMproved, required
filetype off  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Tools
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/Townk/vim-autoclose.git'
Plugin 'mhinz/vim-signify'
Plugin 'https://github.com/tpope/vim-commentary.git'
Plugin 'editorconfig/editorconfig-vim'

" Syntax Highlight
Plugin 'https://github.com/Lokaltog/vim-distinguished.git'
Plugin 'https://github.com/evidens/vim-twig.git'
Plugin 'posva/vim-vue'
Plugin 'https://github.com/mxw/vim-jsx.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'

" All of your Plugins must be added before the following line
call vundle#end()  " required

" *************** Basic ***************
set history=1000
set number
set scrolloff=12
set ruler
set ignorecase
set encoding=utf-8
set fileencodings=utf-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

" *************** Find files ***************
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" *************** Statusline & tab***************
set laststatus=2
set statusline+=%f%y "Show file path and type
set statusline+=%=%l/%L "Show current line and total lines
set guitablabel=%t

" *************** Automate ***************
set autowrite
set autochdir
set showmode
set showcmd
set showmatch

" *************** Scheme ***************
set t_Co=256
syntax on
set background=dark
colorscheme distinguished

" *************** Indentation ***************
filetype plugin on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smarttab
set expandtab

" *************** Highlighting ***************
set hlsearch
set incsearch
set cursorcolumn
set cursorline
highlight ExtraWhitespace ctermbg=52 guibg=#5f0000

" *************** Autocmd ***************
" Formatting the file when writing a buffer
function Clean()
  " Remove all taling white space
  silent! %s/\s\+$//g
  " Remove repeated and endding empty line
  silent! g/^\n$/d
endfunction

" Reindent with new width of tabstop and softtabstop
function Reindent(cur, value)
  let &ts=a:cur
  let &sts=a:cur
  set noet
  retab!

  let &ts=a:value
  let &sts=a:value
  set et
  retab
endfunction

command -nargs=* Reindent call Reindent(<f-args>)
command Clean call Clean()

autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\s\+\ze\t\+\|\t\+\zs\s\+\|^\n$/

" *************** Mapping ***************
let mapleader = "\<Space>"

set pastetoggle=<leader>z

nmap <S-l> gt
nmap <S-h> gT
nnoremap <leader>o :tabnew<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>
