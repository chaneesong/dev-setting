" set leader key to space
let mapleader = "\<Space>"

" use jk to exit insert mode
inoremap jk <ESC>l
inoremap kj <ESC>l

" clear search highlights
nnoremap <leader>nh :nohl<CR>

" delete single character without copying into register
nnoremap x "_x

" normal mode settings
nnoremap <leader>a gg^vG$
nnoremap <leader>[ ^
nnoremap <leader>] $

" visual mode settings
vnoremap <leader>[ ^
vnoremap <leader>] $

" increment/decrement numbers
nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

nnoremap <leader>\ <C-w>v
nnoremap <leader>- <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>sx :close<CR>

nnoremap <leader>sh <C-w>h
nnoremap <leader>sj <C-w>j
nnoremap <leader>sk <C-w>k
nnoremap <leader>sl <C-w>l
