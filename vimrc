syntax on

set nu
set relativenumber
set nowrap
set cursorline

let g:rainbow_active = 1

"NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGlyphReadOnly = 1
let g:NERDTreeNodeDelimiter = '@'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
