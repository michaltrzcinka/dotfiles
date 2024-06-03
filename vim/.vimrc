set shell=/bin/bash\ -i
" GUI Options
set guioptions-=T

let mapleader      = ' '
let maplocalleader = ' '

" Use Vim settings, rather then Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
set nocompatible

" ================ Navigation========================
set mouse=c
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ Search ===========================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

set number

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" ================ Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb

" <F10> | NERD Tree
inoremap <F10> <esc>:NERDTreeToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" Toggle line numbers with Ctrl + N
":nmap <C-N><C-N> :set invnumber<CR>

" ----------------------------------------------------------------------------
" <tab> / <s-tab> | Circular windows navigation
" ----------------------------------------------------------------------------
"nnoremap <tab>   <c-w>w
"nnoremap <S-tab> <c-w>W

" ----------------------------------------------------------------------------
" vim-fugitive
" ----------------------------------------------------------------------------
"nmap     <Leader>g :Gstatus<CR>gg<c-n>
"nnoremap <Leader>d :Gdiff<CR>

" RSpec.vim mappings
"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

" ============================================================================
" VIM-PLUG BLOCK {{{
" ============================================================================

silent! if plug#begin('~/.vim/plugged')

Plug 'pbrisbin/vim-mkdir'

" Colors
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'

" Edit
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/tComment'
Plug 'ConradIrwin/vim-bracketed-paste'
"Plug 'ervandew/supertab'

" Browsing
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'    }
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

" Language & framework support
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'sudar/vim-arduino-syntax'
Plug 'rust-lang/rust.vim'
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-misc'
"Plug 'fatih/vim-go'

" Git
"Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }

call plug#end()
endif

"colorscheme solarized
"set background=dark
"set background=dark
"let base16colorspace=256
"colorscheme base16-default
colorscheme railscasts

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
