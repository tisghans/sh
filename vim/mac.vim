source $CSH/vim/base.vim

set runtimepath+=$CSH/vim
set viminfo+=n$CSH/vim/viminfo

call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()
