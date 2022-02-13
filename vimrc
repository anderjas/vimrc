# Configuration file for vim

filetyp off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin ()

Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetyp plugin indent on


set modelines=0		" CVE-2007-2438
inoremap jk <ESC>

# Normally we use vim-extensions. If you want true vi-compatibility
# remove change the following statements
set nocompatible	"Use Vim defaults instead of 100% vi compatibility
set backspace=2		"more powerful backspacing
set number
set hlsearch
set incsearch
set ignorecase


" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

packadd! dracula
syntax enable
colorscheme dracula
