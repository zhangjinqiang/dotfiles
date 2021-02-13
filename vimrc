syntax on

set nu
set relativenumber
set nowrap
set cursorline

call plug#begin()
Plug 'preservim/NERDTree'
call plug#end()

command! -nargs=0 ng NERDTree
