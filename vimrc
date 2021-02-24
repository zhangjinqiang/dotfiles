syntax on

set guicursor=
set nowrap
set nohlsearch
set noerrorbells
set nu
set relativenumber
set cursorline
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set signcolumn=yes
set colorcolumn=80

" Give more space for displaying messages
set cmdheight=2

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
call plug#end()

" command! -nargs=0 ng NERDTree
colorscheme gruvbox
highlight Normal guibg=none
