call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

let mapleader=","

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

nnoremap ; :

nmap <silent> <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l


set hidden "Changes behaviour when editing multiple files

set scrolloff=8 "Cursor 8 lines from top or 8 lines from bottom
set tabstop=4
set backspace=indent,eol,start "backspace in more places
set autoindent "Sort out indenting
set copyindent
set number "Number lines
set shiftwidth=4
set showmatch "Find and replace stuff
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

filetype off
set runtimepath+=/usr/share/lilypond/2.14.2/vim
filetype on

filetype plugin indent on

autocmd filetype python set expandtab

set pastetoggle=<F2>    "Intelligent paste behaviour

fun! s:ToggleMouse()
	if !exists("s:old_mouse")
		let s:old_mouse = "a"
	endif

	if &mouse == ""
		let &mouse = s:old_mouse
		echo "Mouse is for Vim (" . &mouse . ")"
	else
		let s:old_mouse = &mouse
		let &mouse=""
		echo "Mouse is for terminal"
	endif
endfunction

"Get used to using hjkl to position cursor
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Use j and k to go up and down wraps normally
nnoremap j gj
nnoremap k gk

"Easy window navigation (same as moving cursor)
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Clear highlighted searches
nmap <silent> ,/ :nohlsearch<CR>

"When sudo has been forgotten
cmap w!! w !sudo tee % >/dev/null

syntax enable
set background=dark
colorscheme solarized

python from powerline.ext.vim import source_plugin; source_plugin()

let g:Powerline_symbols = "fancy"

set noruler
set laststatus=2

