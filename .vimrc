let mapleader=" "
let g:rainbow_active=1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled =1
let g:airline_powerline_fonts =1
let g:airline#extensions#tabline#formatter = 'default'

let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

" Fix files automatically on save
"
let g:ale_fix_on_save = 2
 
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"  Basic settings
	syntax on
	colorscheme onedark
	set encoding=utf-8
	set clipboard=unnamedplus
	set number relativenumber
	set tabstop=4
	set wildmode=longest,list,full
	set splitbelow splitright
	set noshowmode

" Shortcuts
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	map <leader>f :Goyo \| set linebreak<CR>
"	vnoremap <C-c> "+y
"	map <C-v> "+P
"	vnoremap <C-c> "*y :let @+=@*<CR>



if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
