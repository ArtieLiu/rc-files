set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

source ~/.vimrc

call plug#begin()
Plug 'Olical/conjure'
 
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'dyng/ctrlsf.vim'

" cheatsheet: 
" http://micahelliott.com/posts/2015-08-20-vim-sexp-cheat-sheet.html
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" show git gugger
Plug 'airblade/vim-gitgutter'
call plug#end()

" -------- auto-pairs -----------
let g:AutoPairs={'(':')', '[':']', '{':'}', '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
" -------------------------------

" -------- easymotion -----------
" easymotion configs, from https://github.com/easymotion/vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
map f <Plug>(easymotion-s2)
" -------------------------------

" ----------- ctrlsf  ------------
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
" -------------------------------

" ----------- nerdTree  ------------
" source: https://github.com/preservim/nerdtree#how-can-i-map-a-specific-key-or-shortcut-to-open-nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" -------------------------------
 
"https://github.com/Olical/conjure/blob/master/doc/conjure.txt#L88
set splitright

" https://learnvimscriptthehardway.stevelosh.com/chapters/12.html
" autocmd BufNewFile,BufRead *.scm ConjureLogVSplit 
autocmd BufNewFile,BufRead *.scm inoremap ; <esc>

" turnoff highlight by pressing enter
nnoremap <return> :noh<return><esc>

" trace function
" iabbrev trace #lang racket/base<enter>(require racket/trace)<enter><enter><enter><enter>(trace foo)<enter>(foo arg1)
autocmd FileType scheme iabbrev trace <enter>#lang racket/base<enter>(require racket/trace)<enter><enter><enter><enter>(trace foo)<enter>(foo arg1)

" my 
autocmd FileType scheme nnoremap <leader>l :ConjureLogVSplit<enter>
autocmd FileType scheme set nocursorline

" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100
