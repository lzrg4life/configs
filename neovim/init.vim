" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'gruvbox-community/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-json coc-tsserver coc-css coc-html coc-omnisharp coc-yaml
" coc-sql

Plug 'dart-lang/dart-vim-plugin'

" Initialize plugin system
call plug#end()

" Load coc specific settings
runtime coc.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load my settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on

set number relativenumber
set scrolloff=8
set nohlsearch
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smartindent
set noswapfile
set nobackup
set cmdheight=2
set nowrap
set noerrorbells
set foldmethod=syntax

colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" Easier copy/paste from system clipboard
nmap <Leader>p "+p
vmap <Leader>y "+y

nmap <S-l> $
nmap <S-h> 0
nmap <Leader>c zC
nmap <Leader>z za
nmap <Up> {
nmap <Down> }
nmap <S-Down> :<C-u>call search('^.\+')<CR>:<BS>
nmap <S-Up> :<C-u>call search('^.\+', 'b')<CR>:<BS>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Correctly identify INI files for syntax highlighting
autocmd BufRead,BufNewFile *.ini,*.INI set filetype=dosini
