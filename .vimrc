set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'arzg/vim-colors-xcode'
Plugin 'scrooloose/nerdtree'

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

call vundle#end()
filetype plugin indent on

syntax enable
colorscheme xcodedarkhc

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set synmaxcol=128
set encoding=utf-8
set fileencoding=utf-8
set tabstop=2
set linebreak
set number


map <b> :NERDTreeToggle<CR>
