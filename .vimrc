set nocompatible              " be iMproved, required
filetype off                  " required

" Very basic fuzzy search support, out of the box
set path+=**
set wildmenu

set cursorline          " highlight current line


" Turn of search highlighting until next search
nnoremap <CR> :noh<CR><CR>

" Incremental search with highlighting
set incsearch
set hlsearch
set ignorecase

let mapleader = ","
syntax on

" Include FZF for fuzzy file searching
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Vim syntax highlighting for VueJs
Plug 'posva/vim-vue'
" Vim surround
Plug 'tpope/vim-surround'

call plug#end()

" Stop vim from preprocessing for every language; tip from vue-vim doc
let g:vue_disable_pre_processors=1

" FZF key mapping
nmap <Leader>f :Files<CR>
" Quickly open a new tab
nmap <Leader>t :tabedit<CR>

set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set guifont=Fira\ Code:h14
colorscheme atom-dark 

set t_CO=256

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Alternate escapes to switch modes
imap jj <Esc>
imap kk <Esc>

" Incremental search with highlighting
set incsearch
set hlsearch

" Set relative line numbers for all but current line
set number                     " Show current line number
set relativenumber             " Show relative line numbers

" Save temporary and swap files to actual temp directory
set backupdir=$TMPDIR//
set directory=$TMPDIR//

" Setup netrw to open in preferred view mode
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
