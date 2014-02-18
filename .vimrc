set nocompatible			"no Vi compatibility

"Vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/STL-Syntax'
Bundle 'CheezeCake/vim-gas'
"Bundle 'Valloric/YouCompleteMe'

"Display settings
set t_Co=256
set background=dark
set cursorline
set number
set textwidth=70
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
if has("gui")
	set guifont=Droid\ Sans\ Mono\ for\ Powerline
endif

syntax on
filetype on
filetype plugin on
filetype indent on

"indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cindent	

"general
set backspace=indent,eol,start
set ttyfast
"set shell=zsh
set wildmenu
set wildmode=full
set mouse=a
set incsearch
set hlsearch
set ignorecase
set encoding=utf-8
set showcmd

"colorscheme
colorscheme wombat

"assembly: GAS syntax (AT&T)
autocmd FileType asm,vmasm setlocal ft=gas ts=8 sts=8 sw=8 noet
autocmd FileType c,cpp abbr #d #define
autocmd FileType c,cpp abbr #i #include
autocmd FileType cpp source ~/.vim/bundle/STL-Syntax/syntax/stl.vim
autocmd FileType perl setlocal sts=4 sw=4 et
autocmd FileType text set noeol binary

"mapings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
vnoremap <C-c> "+y


"Plugin configuration

"Airline
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
