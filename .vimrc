" the vimrc is where we configure our editor
" this guy has some great thoughts on the matter:
" http://mislav.uniqpath.com/2011/12/vim-revisited/
" look into colorschemes, pluggins, package managers for your plugins

"" basics
colorscheme desert              " use an appealing and bright color set
syntax on                       " colorize code based on syntax highlihgting
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8              " utf8 is an encoding, set it
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number                      " keep number lines on the right side
                                " bonus: ask basil about her vim line numbers

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
set textwidth=79

"Autocommand goodness.
if has ("autocmd")
    "Autocommands to set up tab widths and autoindentions for c, c++ and java
    augroup C_code
        autocmd FileType c,cpp,java
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType c,cpp,java
                     \ set expandtab cindent
    augroup END

    "Autocommands to set the all important tab width for ruby. Also begins
    "new ruby files with the shebang and saves it as executable.
    augroup ruby
        autocmd BufNewFile *.rb 0put ='#!/usr/bin/env ruby'
        autocmd FileType ruby
                     \ set tabstop=2 shiftwidth=2 softtabstop=2
        autocmd FileType ruby
                     \ set expandtab smartindent
        autocmd BufWritePost *.rb !chmod 744 %
    augroup END

    "Autocommands to set python indentation rules. 4 space tabs per PEP8.
    augroup python
        autocmd FileType python
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType python
                     \ set expandtab smartindent
    augroup END

    "Shell stuff sets autoindention details, the bang line, and saves the
    "file as an executable.
    augroup shell
        autocmd BufNewFile *.sh 0put ='#!/bin/bash'
        autocmd FileType sh
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType sh
                     \ set expandtab smartindent
   "     autocmd BufWritePost *.sh !chmod 744 %
    augroup END

    "When editing text documents I dont need the line numbers and text
    "should wrap around 80 characters.
    augroup text
        autocmd BufRead,BufNewFile *.txt
                     \ set nonumber
        autocmd BufRead,BufNewFile *.txt
                     \ set textwidth=80
    augroup END
endif
