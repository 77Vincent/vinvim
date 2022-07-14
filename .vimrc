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
" auto complete
    " Plugin 'https://github.com/vim-scripts/AutoComplPop.git'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
    Plugin 'tpope/vim-sleuth'

" color code preview
    Plugin 'https://github.com/RRethy/vim-hexokinase.git'

" auto closing of brackets
    Plugin 'jiangmiao/auto-pairs'

" whitespace highlight
    Plugin 'ntpeters/vim-better-whitespace'

" quick line commenting
    Plugin 'https://github.com/tpope/vim-commentary.git'

" editor config support
    Plugin 'editorconfig/editorconfig-vim'

" syntax check and fix
    Plugin 'dense-analysis/ale'

" file Navigate
    Plugin 'scrooloose/nerdtree'

" fancy status line
    Plugin 'vim-airline/vim-airline'

" 3rd party color scheme
    Plugin 'https://github.com/gosukiwi/vim-atom-dark.git'

" fuzzy file searching
    Plugin 'Yggdroot/LeaderF'

" git diff
    Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Highlighting
    Plugin 'https://github.com/pangloss/vim-javascript.git'
    Plugin 'https://github.com/mxw/vim-jsx.git'

" All of your Plugins must be added before the following line
    call vundle#end()  " required

" *************** Basic ***************
    set history=1000
    set number
    set scrolloff=8
    set ruler
    set ignorecase
    set encoding=utf-8
    set fileencodings=utf-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
    set backspace=indent,eol,start

" *************** Find files ***************
" Search down into subfolders
" Provides tab-completion for all file-related tasks
    set path+=**

" Display all matching files when we tab complete
    set wildmenu

" -----------------------------------------------------------------------------
" Status line
" -----------------------------------------------------------------------------
    set laststatus=2
    set guitablabel=%t
    set statusline+=%f%y "Show file path and type
    set statusline+=%=%l/%L "Show current line and total lines
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

" -----------------------------------------------------------------------------
" Automate
" -----------------------------------------------------------------------------
    filetype plugin on
    set updatetime=250
    set autowrite
    set autoread
    set autochdir
    set showmode
    set showcmd
    set showmatch
    set complete+=kspell
    set completeopt=menu,menuone,preview,noselect,noinsert
    set shortmess+=c
    set foldmethod=indent
    set foldnestmax=10
    set nofoldenable
    set omnifunc=ale#completion#OmniFunc

" -----------------------------------------------------------------------------
" Scheme
" -----------------------------------------------------------------------------
    set termguicolors
    set t_Co=256
    set colorcolumn=120
    syntax on
    colorscheme atom-dark-256

" -----------------------------------------------------------------------------
" Indentation
" -----------------------------------------------------------------------------
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set autoindent
    set smarttab
    set expandtab

" -----------------------------------------------------------------------------
" Highlighting
" -----------------------------------------------------------------------------
    set spell
    set hlsearch
    set incsearch
    set cursorcolumn
    set cursorline
    highlight ExtraWhitespace ctermbg=52 guibg=#5f0000

" for git-gutter
    highlight GitGutterAdd guifg=Green guibg=Darkgreen
    highlight GitGutterChange guifg=Yellow guibg=Darkyellow
    highlight GitGutterDelete guifg=Red guibg=#5f0000
    let g:gitgutter_preview_win_floating = 1
    let g:gitgutter_diff_args = '-w'
    let g:gitgutter_map_keys = 0

" Spelling mistakes will be colored up red.
    hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
    hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
    hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
    hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_loc_list_height = 6

    " ale linter and fixer
    let g:ale_completion_enabled = 1
    let g:ale_linters = {
    \   'javascript': ['standard'],
    \}
    let g:ale_fixers = {
    \   'javascript': ['standard'],
    \}

" -----------------------------------------------------------------------------
" Mapping
" -----------------------------------------------------------------------------
    let mapleader = "\<Space>"
    set pastetoggle=<leader>z

" native command
    nnoremap <S-l> gt
    nnoremap <S-h> gT
    nnoremap <leader>o :tabedit
    nnoremap <leader>w :w<cr>
    nnoremap <leader>x :x<cr>
    nnoremap <leader>q :q<cr>
    nnoremap <leader>b gD

" ale
    nnoremap <leader>b :ALEGoToDefinition<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
    inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
    inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
    inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"

" Cancel the complete menu item like CTRL+e would.
    inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" leaderf
    nnoremap <leader>p :LeaderfFile<CR>
    let g:Lf_WindowPosition = 'popup'
    let g:Lf_PreviewInPopup = 1

" git-gutter
    nnoremap <leader>d :GitGutterPreviewHunk<CR>
    nnoremap <leader>u :GitGutterUndoHunk<CR>

" nerd-tree
    nnoremap <leader>n :nohl<CR>
    nnoremap <leader>f :NERDTree<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
    
