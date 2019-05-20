let mapleader = '\'
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ambv/black'
Plugin 'w0rp/ale'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-vinegar'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

filetype plugin indent on
syntax on

set termguicolors
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

autocmd BufWritePre *.py execute ':Black'
let g:ale_linters = { 'python': ['flake8'], }
let g:ale_python_flake8_options = '--max-line-length=88'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set encoding=utf-8
set tabstop=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set number

set cursorline

set wildmenu
set wildmode=list:longest
set path+=**

set lazyredraw
set ttyfast

set showmatch

set incsearch
set hlsearch
nnoremap <leader><CR> :nohlsearch<CR><CR>
set ignorecase
set smartcase

set visualbell

set scrolloff=4
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macros/matchit.vim

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>:Explore<CR>

let g:netrw_liststyle=3

