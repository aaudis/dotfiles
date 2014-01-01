set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'Valloric/YouCompleteMe'
Bundle 'gmarik/vundle'
Bundle 'Blackrush/vim-gocode'
Bundle 'jnwhiteh/vim-golang'
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
filetype plugin indent on

syntax on
nnoremap ; :

set cursorline
set number
set relativenumber
let mapleader=","
set laststatus=2
set encoding=utf8
set ic 				" case insensitive search
set backspace=indent,eol,start

" Highlight search result 
set hlsearch
set ruler

" Command-T stuff 
noremap <leader>f :CommandT<cr>
let g:CommandTCancelMap='<c-x>'
let g:CommandTAcceptSelectionMap='<c-t>'
let g:CommandTAcceptSelectionTabMap='<cr>'

" Tab moving
map <leader>tw :tabnew<cr>
map <leader>tp :tabprevious<cr>
map <leader>tn :tabnext<cr>
map <c-l> :tabnext<cr>
map <c-k> :tabprevious<cr>

" NERD Toggle
map <C-n><C-m> :NERDTreeToggle<cr>

" Saving file
map <C-b> :update<cr>
imap <C-b> <Esc>:update<cr> i
imap <leader>w <esc>:w<cr>a
map <leader>w :w<cr>

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

autocmd BufWrite *.go :Fmt

set completeopt-=preview " disable preview/scratch window in autocomplete

let g:molokai_original = 1
colorscheme molokai
