" Author: mkdemir
" Update: 2024-07-03

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

" Use Vim-Plug to manage plugins
call plug#begin('~/.vim/plugged')

  " Plugin List
  Plug 'scrooloose/nerdtree'         " File explorer
  Plug 'tpope/vim-fugitive'          " Git integration
  Plug 'vim-airline/vim-airline'     " Status bar
  Plug 'vim-airline/vim-airline-themes'
  Plug 'gruvbox-community/gruvbox'   " Theme
  Plug 'plasticboy/vim-markdown'
  Plug 'fatih/vim-go'                " Go development
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'


call plug#end()

" Basic settings to make Vim more user-friendly
set number              " Show line numbers
set relativenumber      " Show relative line numbers
set tabstop=4           " A tab character is equal to 4 spaces
set shiftwidth=4        " Use 4 spaces for auto indent
set expandtab           " Convert tabs to spaces
set autoindent          " Apply auto indent on new lines
set smartindent         " Apply smart indenting
set hlsearch            " Highlight search terms
set incsearch           " Show search results as you type
set ignorecase          " Ignore case in searches
set smartcase           " Be case sensitive if an uppercase letter is used in search
set cursorline          " Highlight the current line
set wrap                " Wrap long lines
set linebreak           " Wrap lines at word boundaries
set showcmd             " Show incomplete commands
set showmatch           " Highlight matching parentheses
set mouse=a             " Enable mouse support
set clipboard=unnamed   " Use system clipboard

" Disable backup and swap files
set noswapfile
set nobackup

" Screen settings
set laststatus=2        " Always show the status bar
set splitright          " Open horizontal splits to the right
set splitbelow          " Open vertical splits to the bottom
set hidden              " Hide unmodified buffers

" File formats and language support
set fileformats=unix,dos,mac
set encoding=utf-8
set fileencoding=utf-8

" Enable syntax highlighting
syntax enable

" Filetype detection and plugin indent
filetype plugin indent on

" Set indentation for Go language
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" Search and replace shortcuts
nnoremap <leader>r :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>w :w<CR>        " Quick save
nnoremap <leader>q :q<CR>        " Quick quit
nnoremap <leader>x :x<CR>        " Quick save and quit

" Comment and uncomment shortcuts
nnoremap <leader>c :s/^/#/<CR>:noh<CR>
vnoremap <leader>c :s/^/#/<CR>:noh<CR>
nnoremap <leader>u :s/^#//<CR>:noh<CR>
vnoremap <leader>u :s/^#//<CR>:noh<CR>

" Window navigation shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" NERDTree toggle shortcut
nnoremap <leader>n :NERDTreeToggle<CR>
map <C-z> :NERDTreeToggle<CR> “ Toggle side window with `CTRL+z`.
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"let NERDTreeShowHidden=1 “ Show hidden files

" Theme and appearance settings
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"
let g:gruvbox_invert_selection = 1
set lazyredraw

" More readable font (for GUI Vim)
set guifont=Monaco:h12

" Increase memory limit to show syntax highlighting for large files
set maxmempattern=20000

" Create undo file
set undofile

" Automatic redraw
set lazyredraw

" Completion options
set completeopt=menu,menuone

" Hide error messages and mode indication
set noerrorbells
set noshowmatch
set noshowmode

" File history
set viminfo='1000

" Automatic read and write
set autoread
set autowrite

" Preserve focus
set noerrorbells

" Go için otomatik tamamlama
autocmd FileType go setlocal omnifunc=go#complete#Complete

" Airline configuration
" Use gruvbox theme for airline
let g:airline_theme='gruvbox'

" Enable airline
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:go_def_mode='gopls'

" windows (gvim)
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar"

