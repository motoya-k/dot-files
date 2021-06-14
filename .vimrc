set encoding=utf-8

call plug#begin('~/.vim/plugged')
    " Git
    Plug 'tpope/vim-fugitive'
    " xml parsing
    Plug 'tpope/vim-surround'
    " Git
    Plug 'airblade/vim-gitgutter'
    " Multi line comment
    Plug 'tpope/vim-commentary'
    " visualize blanks
    Plug 'bronson/vim-trailing-whitespace'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " tendr.vim
    Plug 'jacoborus/tender.vim'
    " tree
    Plug 'preservim/nerdtree'
call plug#end()

"""
" Color Plugin
"
syntax enable
colorscheme tender

"""
" fzf settings
"
"""
let $FZF_DEFAULT_OPTS="--layout=reverse"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height':0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

let mapleader = "\<Space>"

"""
" Key Bindings
"
"""

" fzf key-bindings
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>G :GFiles?<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>r :Rg<CR>

" nerdtree key-bindings
nnoremap <silent> <leader>n :NERDTree<CR>

"""
" General Settings
"
"""
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=4

