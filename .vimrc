syntax on
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" To support Golang & Clang
" $ go get -u github.com/mdempsky/gocode
" $ ./install.py --go-completer --clang-completer
Plugin 'Valloric/YouCompleteMe'
Plugin 'ludovicchabant/vim-gutentags'	" Auto tags
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

set backspace=2
set laststatus=2 " 底栏文件信息
set showcmd
set number " 行号

set autoindent " 自动缩进
set smartindent
set shiftwidth=4
set tabstop=4
set shiftround

set hlsearch
set incsearch


" Auto compelte
" . : current buffer
" w : from other windows
" b : from the buffer list
" u : unloaded from the buffer list
" t : tag completion
" current and included files
" set complete=.,w,b,u,t,i


" Vim-go 
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1


" theme
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
