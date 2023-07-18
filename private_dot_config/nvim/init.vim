call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Luxed/ayu-vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

let g:coc_global_extensions = [
  \ 'coc-eslint',
  \ 'coc-highlight',
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-rust-analyzer',
  \ 'coc-stylelint',
  \ 'coc-tsserver' ]

set termguicolors
let ayucolor = 'mirage'
colorscheme ayu

" Airline {{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'ayu'
set laststatus=2
set ttimeoutlen=50
set noshowmode
let g:airline#extensions#branch#enabled=1
" }}

" IndentLine {{
let g:indentLine_char = '¦'
let g:indentLine_first_char = '¦'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" NERDTree {{
let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '_'
" }}

" vim-markdown {{
let g:vim_markdown_conceal = 0
" }}

syntax on
set number
set splitright
set nobackup
set nowritebackup
set encoding=utf-8
set signcolumn=yes
set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set updatetime=100
set fillchars=""
set wildmenu
set foldlevel=20
set clipboard^=unnamed,unnamedplus

let mapleader = " "

nmap <C-p> :Files<CR>
nmap <C-o> :GFiles<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

inoremap <silent><expr> <c-space> coc#refresh()

autocmd CursorHold * silent call CocActionAsync('highlight')
