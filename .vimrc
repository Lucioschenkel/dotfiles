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

" Set shift width and tab size to 2
set shiftwidth=2
set tabstop=2

" Set relative line numbers
set rnu 

" --- START Key bindings 

" Map jj to esc
inoremap jj <esc>

" Set space as the leader key
let mapleader = " "

nnoremap <leader>\ :nohlsearch<CR>

" --- END Key bindings


