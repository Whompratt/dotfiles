set nocompatible
filetype plugin on

syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'

let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ }

set laststatus=2
set nu
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
iabbrev </ </<C-X><C-O>
