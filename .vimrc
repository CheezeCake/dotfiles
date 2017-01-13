set nocompatible			"no Vi compatibility

"Vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/STL-Syntax'
Plugin 'CheezeCake/vim-gas'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'scrooloose/syntastic'
call vundle#end()

"Display settings
set t_Co=256
set background=dark
set cursorline
set number
"set textwidth=70
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
if has("gui")
	set guifont=Source\ Code\ Pro\ Medium\ 11
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
set title
"for tmux
set t_ut=
set tabpagemax=100

"colorscheme
colorscheme wombat

"assembly: GAS syntax (AT&T)
autocmd FileType asm,vmasm setlocal ft=gas ts=8 sts=8 sw=8 noet
autocmd FileType c,cpp abbr #d #define
autocmd FileType c,cpp abbr #i #include
autocmd FileType cpp source ~/.vim/bundle/STL-Syntax/syntax/stl.vim

"mapings
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
if has("clipboard")
	vnoremap <C-c> "+y
endif


"Plugin configuration

"Airline
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_section_z = "%3p%% %{g:airline_symbols.linenr}%#__accent_bold#%4l%#__restore__#:%3v"

"Ctrlp
let g:ctrl_map = '<C-p>'
let g:ctrlp_custom_ignore = '\v\.(o|so|dylib|a)$'
