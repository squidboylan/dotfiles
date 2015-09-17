set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Plugin 'scrooloose/nerdtree'

"call vundle#end()            " required
"filetype plugin indent on    " required

"" basics
colorscheme desert              " use an appealing and bright color set
syntax on                       " colorize code based on syntax highlihgting
set encoding=utf-8              " utf8 is an encoding, set it
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number                      " keep number lines on the right side
                                " bonus: ask basil about her vim line numbers
set colorcolumn=80

"" whitespace
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " backspace through everything in insert mode

" the next set is for tabs vs spaces
" tabs vs spaces is one of the computing holy wars
" also under contention is the number of spaces in a tab

"python/bash mode
set expandtab                   "don't uses spaces ever, a tab key is a jump of spaces
set tabstop=4                   "tabs are 4 spaces (:help tabstop)
set shiftwidth=4                "tabs are 4 spaces (:help shiftwidth)

"" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
