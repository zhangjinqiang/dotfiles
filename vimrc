syntax on

set guicursor=
set nowrap
set hlsearch
set noerrorbells
set number
set relativenumber
set cursorline
set tabstop=2 softtabstop=2
set shiftround
set shiftwidth=2
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
set showmatch
set matchtime=7
set pastetoggle=<F3>

" Give more space for displaying messages
set cmdheight=2

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif


" mappings
let mapleader = "\<Space>"

nnoremap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

call plug#begin('~/.vim/plugged')
    "Plug 'nvim-telescope/telescope.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-abolish'
    "Plug 'ycm-core/YouCompleteMe'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'nelstrom/vim-visual-star-search'
call plug#end()

" command! -nargs=0 ng NERDTree
colorscheme gruvbox

"===================================================
" From learn vimscript the hard way
autocmd VimEnter * echo "<^.^>"

" move current line downwards
nnoremap <leader>V ddp
" move current line upwards
nnoremap <leader>^ kddpk

" make current word upcase
inoremap <c-u> <esc>viwUea
nmap <c-u> g~iw

nnoremap <leader>ev :vsplit ~/dotfiles/vimrc
nnoremap <leader>sv :source ~/dotfiles/vimrc

" Above is from learn vimscript the hard way
"===================================================

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" moving cursor around windows with 1 less key stroke
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" open terminal below all splits
set termwinsize=20x300
cabbrev bterm bo term

