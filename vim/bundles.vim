filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" So Vundle can update itself.
Plugin 'gmarik/Vundle.vim'

" Colour scheme.
Plugin 'jonathanfilip/vim-lucius'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/syntastic'
  let g:syntastic_check_on_open=1

Plugin 'Valloric/YouCompleteMe'
  let g:ycm_add_preview_to_completeopt=0
  let g:ycm_confirm_extra_conf=0
  set completeopt-=preview

Plugin 'marijnh/tern_for_vim'

Plugin 'bling/vim-airline'
  let g:airline#extensions#tabline#enabled=1
  let g:airline_left_sep=''
  let g:airline_right_sep=''

Plugin 'edkolev/promptline.vim'
  let g:promptline_powerline_symbols=0
  let g:promptline_theme = 'airline'
  let g:promptline_preset = 'clear'

Plugin 'airblade/vim-gitgutter'

Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  nnoremap <leader>f :CtrlP<CR>
  nnoremap <leader>b :CtrlPBuffer<CR>
  nnoremap <leader>m :CtrlPMRUFiles<CR>
  nnoremap <leader>t :CtrlPTag<CR>
"  nnoremap <leader>tb :CtrlPBufTag<CR>

call vundle#end()
filetype plugin indent on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
