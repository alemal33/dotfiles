if &compatible
	set nocompatible
endif
"
" vim-plug
"
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugInstall --sync | source $MYVIMRC | endif
" plugins
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tomtom/tcomment_vim'
	Plug 'farmergreg/vim-lastplace'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'sainnhe/everforest'
call plug#end()
" 
" options
"
set rnu
set number
set autoindent
set hlsearch
set cursorline
set tabstop=2
set shiftwidth=2
set history=200

syntax on
filetype plugin indent on
colorscheme everforest
set background=dark
"
" shortcuts
"
let mapleader = ' '

nnoremap <leader>f :CtrlP<CR>

nnoremap <leader>nh :noh<CR>

nnoremap <c-up> :resize -5<CR>
nnoremap <c-down> :resize +5<CR>
nnoremap <c-left> :vertical resize -5<CR>
nnoremap <c-right> :vertical resize +5<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-q> <c-w>q
