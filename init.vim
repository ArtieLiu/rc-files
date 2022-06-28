set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

source ~/.vimrc

call plug#begin()
Plug 'Olical/conjure'
 
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

" cheatsheet: 
" http://micahelliott.com/posts/2015-08-20-vim-sexp-cheat-sheet.html
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'

" show git gugger
Plug 'airblade/vim-gitgutter'
call plug#end()

" https://github.com/easymotion/vim-easymotion
map , <Plug>(easymotion-sn)

let g:AutoPairs={'(':')', '[':']', '{':'}', '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}


" https://github.com/Olical/conjure/blob/master/doc/conjure.txt#L88
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

" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100
