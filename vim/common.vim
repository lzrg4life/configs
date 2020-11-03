" Common settings for all platforms

let mapleader = " "

" Easier copy/paste from system clipboard
nmap <Leader>p "+p
vmap <Leader>y "+y
" Copy all file contents to system clipboard
nmap <Leader>Y :%+y<CR>

nmap <Leader>o ok<ESC>
nmap <Leader>O Oj<ESC>

imap jj <ESC>

nmap <S-l> $
nmap <S-h> 0
nmap <Right> $
nmap <Left> 0
nmap <Leader>c zC
nmap <Leader>f za

nmap <Up> {
nmap <S-k> {
nmap <Down> }
nmap <S-j> }

nmap <S-Down> :<C-u>call search('^.\+')<CR>:<BS>
nmap <S-Up> :<C-u>call search('^.\+', 'b')<CR>:<BS>
nmap <Leader>diag :CocDiagnostic
nmap <Leader>vista :Vista coc

" Splits
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
