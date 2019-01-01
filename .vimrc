set nocompatible              " be iMproved, required
filetype off                  " required

" Very basic fuzzy search support, out of the box
set path+=**
set wildmenu

" Turn of search highlighting until next search
nnoremap <CR> :noh<CR><CR>

" Incremental search with highlighting
set incsearch
set hlsearch

let mapleader = ","
syntax on

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set guifont=Fira\ Code:h14
colorscheme monokai

" Alternate escapes to switch modes
imap jj <Esc>
imap kk <Esc>

" Incremental search with highlighting
set incsearch
set hlsearch

" Set relative line numbers for all but current line
set number                     " Show current line number
set relativenumber             " Show relative line numbers
