" [...]

call plug#begin('~/.vim/plugged')
" [...]
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" [...]
call plug#end()

" [...]
