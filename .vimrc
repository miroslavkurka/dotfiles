set relativenumber
set number
set list

let mapleader = " "
nnoremap <leader>f :Ag<Space>
" Set space as leader
let mapleader = " "

" Split navigation with space + direction
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Create splits with space + v (vertical) or s (horizontal)
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" Autoformat on save
au BufWrite *.py :Autoformat
au BufWrite *.cu,*.cuh :Autoformat

" Define formatters
let g:formatters_python = ['black']
let g:formatters_cuda = ['clangformat']

" Enable formatters
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" Make splits open in more natural positions
set splitbelow
set splitright

" Change cursor shape between modes
let &t_SI = "\e[6 q"    " Insert mode - thin line
let &t_EI = "\e[2 q"    " Normal mode - block
let &t_SR = "\e[4 q"    " Replace mode - underline

" Reset cursor when leaving vim
autocmd VimLeave * let &t_me="\e[0 q"
call plug#begin()


" List your plugins here
Plug 'vim-autoformat/vim-autoformat'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
