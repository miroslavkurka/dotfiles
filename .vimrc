set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/limelight.vim'                      
Plugin 'junegunn/goyo.vim'                           
Plugin 'tpope/vim-surround'                           
Plugin 'scrooloose/nerdtree'                         " Nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree

call vundle#end()            " required
filetype plugin indent on    " required
set encoding=UTF-8
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1
:imap ii <Esc>			" remap ESC to double ii  
set laststatus=2

set mouse=nicr
set mouse=a
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

