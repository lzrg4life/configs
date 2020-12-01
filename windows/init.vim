syntax on

call plug#begin(stdpath('data') . '/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim'

call plug#end()

runtime coc.vim

colorscheme gruvbox
set background=dark

set number relativenumber

imap jj <ESC>

nmap H 0
nmap L $
nmap J }
nmap K {

let mapleader=" "

nmap <Leader>p "+p
vmap <Leader>y "+y
nmap <Leader>Y :%y+<CR>
