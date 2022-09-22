set splitbelow
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
call plug#end()
filetype plugin indent on
syntax on 
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
set tabstop=8
set softtabstop=8
set shiftwidth=8
let g:tex_flavor = 'latex'
"set noexpandtab
set backspace=indent,eol,start
set wildmode=longest,list,full
set number relativenumber
set wildmenu
imap ii <Esc>
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction
autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag :call FormatBuffer()
let g:airline_theme='behelit'
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28
