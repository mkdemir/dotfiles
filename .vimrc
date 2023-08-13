" mkdemir 
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'conradirwin/vim-bracketed-paste'
Plug 'google/vim-jsonnet'
Plug 'ervandew/supertab'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf'

call plug#end()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set autoindent
set smartindent
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set termguicolors
set lazyredraw
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set termencoding=utf-8
set guifont=Consolas:h11

set updatetime=300

nnoremap <F2> :set nu!<CR>
nnoremap <F3> :set wrap!<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set background=light
let g:gruvbox_italic = 0
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_invert_selection = 1
let g:gruvbox_italicize_comments = 0
colorscheme gruvbox
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_theme = 'gruvbox'

try
    execute "AirlineRefresh"
catch
endtry
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'conradirwin/vim-bracketed-paste'
Plug 'google/vim-jsonnet'
Plug 'ervandew/supertab'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf'

call plug#end()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set autoindent
set smartindent
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set laststatus=2
set termguicolors
set lazyredraw
set encoding=utf-8
set fileencoding=utf-8
set updatetime=300

nnoremap <F2> :set nu!<CR>
nnoremap <F3> :set wrap!<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set background=light
let g:gruvbox_italic = 0
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_invert_selection = 1
let g:gruvbox_italicize_comments = 0
colorscheme gruvbox
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_theme = 'gruvbox'

try
    execute "AirlineRefresh"
catch
endtry
