syntax on

set nohlsearch
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smartindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" Easier copy/paste from system clipboard
nmap <Leader>p "+p
vmap <Leader>y "+y

nmap <S-l> $
nmap <S-h> 0
nmap <Right> $
nmap <Left> 0
nmap <Leader>c zC
nmap <Leader>f za
nmap <Up> {
nmap <Down> }
nmap <S-Down> :<C-u>call search('^.\+')<CR>:<BS>
nmap <S-Up> :<C-u>call search('^.\+', 'b')<CR>:<BS>
nmap <Leader>diag :CocDiagnostic
nmap <Leader>vista :Vista coc

" Splits
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l