" Vim plug
call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'junegunn/fzf.vim'                " Enhanced fzf integration (you already have fzf)
Plug 'preservim/nerdtree'              " File explorer sidebar
Plug 'ctrlpvim/ctrlp.vim'             " Fuzzy file finder

call plug#end()

" Disable compatibility with legacy vi
set nocompatible

" Enable file type detection
filetype on 

" Enable plugins for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn on syntax highlighting
syntax on

" Highlight search results
set hlsearch

" Use spaces instead of tab
set expandtab

" Disable swap file: that annoying .swp file created whenever you open a file
" in vim
set noswapfile

" Set shift width and tab size to 2
set shiftwidth=2
set tabstop=2

" Set relative line numbers
set rnu 
set number
" Use new regular expression engine
set re=0

" Highlight cursor column
" set cursorcolumn

" fzf
if has('mac')
  " If installed using Homebrew on Apple Silicon
  set rtp+=/opt/homebrew/opt/fzf
else
  " If installed using Homebrew
  set rtp+=/usr/local/opt/fzf
endif

" --- START Key bindings 

" Map jj to esc
inoremap jj <esc>

" Set space as the leader key
let mapleader = " "

" Unhighlight search with leader + back slash
nnoremap <leader>\ :nohlsearch<CR>

" Open FZF with <leader>space
nnoremap <leader><space> :FZF<CR>

" --- END Key bindings
