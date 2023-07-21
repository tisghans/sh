let mapleader = ";"

filetype plugin indent on
syntax enable

hi TabLineFill ctermfg=Black ctermbg=Black

set ruler
set hlsearch
set incsearch
set ignorecase
set nocompatible
set nofixendofline noendofline
set relativenumber number
set splitbelow splitright
set backspace=indent,eol,start
set scrolloff=5 sidescrolloff=10
set nobackup nowritebackup noswapfile noundofile
set tabstop=4 shiftwidth=4 smartindent

" vim file find
set path+=**
set wildmenu
set wildignore+=**/.git/**

" key mappings
vnoremap <c-c> "+y

noremap <c-k> 5k
noremap <c-j> 5j
noremap - ^
noremap _ $

nnoremap <leader>v "+p
nnoremap <c-e> 3<c-e>
nnoremap <c-y> 3<c-y>
nnoremap <leader>n gt
nnoremap <leader>b gT
nnoremap <leader>e :tabe<cr>
nnoremap <leader>f :tabf<space>
