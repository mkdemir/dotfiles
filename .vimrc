" Author: mkdemir

" ███▄ ▄███▓ ██ ▄█▀▓█████▄ ▓█████  ███▄ ▄███▓ ██▓ ██▀███  
"▓██▒▀█▀ ██▒ ██▄█▒ ▒██▀ ██▌▓█   ▀ ▓██▒▀█▀ ██▒▓██▒▓██ ▒ ██▒
"▓██    ▓██░▓███▄░ ░██   █▌▒███   ▓██    ▓██░▒██▒▓██ ░▄█ ▒
"▒██    ▒██ ▓██ █▄ ░▓█▄   ▌▒▓█  ▄ ▒██    ▒██ ░██░▒██▀▀█▄  
"▒██▒   ░██▒▒██▒ █▄░▒████▓ ░▒████▒▒██▒   ░██▒░██░░██▓ ▒██▒
"░ ▒░   ░  ░▒ ▒▒ ▓▒ ▒▒▓  ▒ ░░ ▒░ ░░ ▒░   ░  ░░▓  ░ ▒▓ ░▒▓░
"░  ░      ░░ ░▒ ▒░ ░ ▒  ▒  ░ ░  ░░  ░      ░ ▒ ░  ░▒ ░ ▒░
"░      ░   ░ ░░ ░  ░ ░  ░    ░   ░      ░    ▒ ░  ░░   ░ 
"       ░   ░  ░      ░       ░  ░       ░    ░     ░     
"                   ░                                     

call plug#begin()

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'fatih/vim-go'
    Plug 'jceb/vim-orgmode'
    Plug 'tyru/open-browser.vim'
    Plug 'plasticboy/vim-markdown'
	Plug 'kien/ctrlp.vim'
	Plug 'w0rp/ale'
	Plug 'morhetz/gruvbox'
	Plug 'majutsushi/tagbar'	
	Plug 'tyru/open-browser.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-scripts/ZoomWin'
    Plug 'pprovost/vim-ps1'

call plug#end()

"=====================================================
"===================== SETTINGS ======================

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#highlight#buffer_selected = 'bg=darkgreen'
let g:airline_left_sep = 'mkdemir'
" let g:airline_right_sep = '<'

set laststatus=2
set encoding=utf-8 
set fileencoding=utf-8
set autoread
set autowrite
set autoindent
set backspace=indent,eol,start
set incsearch
set hlsearch
set mouse=a

set noerrorbells
set number
set relativenumber
set showcmd
set noswapfile
set nobackup
set splitright 
set splitbelow 
set hidden
set fileformats=unix,dos,mac
set noshowmatch
set noshowmode
set ignorecase
set smartcase
set completeopt=menu,menuone
set nocursorcolumn
set nocursorline

set lazyredraw

" increase max memory to show syntax highlighting for large files
set maxmempattern=20000

set viminfo='1000

set undofile
set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
""  set guifont=Inconsolata:h12
set guifont=Consolas:h10

colorscheme gruvbox
"colorscheme desert
syntax enable
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "soft"

" windows (gvim)
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar"
set clipboard=unnamed
"set clipboard=unnamedplus

" nerdtree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:ps1_nofold_blocks = 1
