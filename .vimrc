call plug#begin()
Plug 'morhetz/gruvbox'
"Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
call plug#end()

set t_Co=256

set background=dark 
colorscheme gruvbox

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab

" map - to dd 
" https://learnvimscriptthehardway.stevelosh.com/chapters/05.html
" nnoremap - dd

" map leader 
" https://learnvimscriptthehardway.stevelosh.com/chapters/06.html
let mapleader = " "
let localleader = "\\"

" make it easier to edit vimrc and source it
" https://learnvimscriptthehardway.stevelosh.com/chapters/07.html
nnoremap <localleader>ev :vsplit $MYVIMRC<cr>
nnoremap <localleader>sv :source $MYVIMRC<cr>
nnoremap H <c-w>h
nnoremap L <c-w>l

" map <esc> to no operation, so to force yourself to not use <esc> 
" https://learnvimscriptthehardway.stevelosh.com/chapters/10.html
" inoremap <esc> <nop>

nnoremap <localleader>b :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"highlight current line
set cursorline

set mouse=a
