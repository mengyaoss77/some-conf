" colorscheme elflord
syntax on
set nocompatible              " be iMproved, required
"set backspace=2
filetype off                  " required
set laststatus=2
set ai!
set shiftwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/a.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'fatih/vim-go'
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

set nu!
set tabstop=4
set hlsearch
set incsearch

"""""新文件标题""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.cc,*.go exec ":call SetTitle()"

""定义函数SetTitle，自动插入文件头

func SetTitle()

    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")

        call append(line("."), "\# File Name: ".expand("%"))

        call append(line(".")+1, "\# Author: solanin")

        call append(line(".")+2, "\# mail: solanin36@gmail.com")

        call append(line(".")+3, "\# Created Time: ".strftime("%c"))

        call append(line(".")+4, "\#########################################################################")

        call append(line(".")+5, "\#!/bin/bash")

        call append(line(".")+6, "")

    else

        call setline(1, "/*************************************************************************")

        call append(line("."), "    > File Name: ".expand("%"))

        call append(line(".")+1, "    > Author: solanin")

        call append(line(".")+2, "    > Mail: solanin36@gmail.com ")

        call append(line(".")+3, "    > Created Time: ".strftime("%c"))

        call append(line(".")+4, " ************************************************************************/")

        call append(line(".")+5, "")

    endif
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

" Auto compelte
" . : current buffer
" w : from other windows
" b : from the buffer list
" u : unloaded from the buffer list
" t : tag completion
" current and included files
" set complete=.,w,b,u,t,i
"
" Vim-go 
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
