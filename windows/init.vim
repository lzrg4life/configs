syntax on

call plug#begin(stdpath('data') . '/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim'

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-emmet', 'coc-eslint', 'coc-markdownlint', 'coc-omnisharp', 'coc-powershell', 'coc-sh', 'coc-snippets', 'coc-sql', 'coc-vimlsp', 'coc-xml', 'coc-yaml']

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

