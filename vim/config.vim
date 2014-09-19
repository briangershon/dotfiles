" Make vim more useful. I think this drops vi compatibility.
" This allows vim to do a lot more and stray from it's roots.
set nocompatible
let mapleader = ","
set number

" Include all of the bundle configuration.
source $HOME/.vim/bundles.vim

" Load all configuration modules.
for f in split(glob('~/.vim/modules/*.vim'), '\n')
  exe 'source' f
endfor

set expandtab
set shiftwidth=2
set softtabstop=2

" Show status line all the time instead of just for split windows
set laststatus=2
