set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin()
Plug 'Olical/conjure'
 
" Plug 'Olical/vim-scheme', { 'for': 'scheme', 'on': 'SchemeConnect' }

" You'll need vim-sexp too for selecting forms.
Plug 'guns/vim-sexp'

" And while you're here, tpope's bindings make vim-sexp a little nicer to use.
Plug 'tpope/vim-sexp-mappings-for-regular-people'


Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'
call plug#end()

" https://github.com/easymotion/vim-easymotion
map / <Plug>(easymotion-sn)

let g:AutoPairs={'(':')', '[':']', '{':'}', '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
