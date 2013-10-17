set nocompatible			"no Vi compatibility

"Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/STL-Syntax'
Bundle 'CheezeCake/vim-gas'
"/Vundle

if $TERM == "xterm-256color"
	set t_Co=256
else
	set t_Co=8
endif
filetype plugin on
syntax on
set number
set mouse=a
set backspace=indent,eol,start
set textwidth=75

"search settings
set incsearch

"indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set cindent	

"colorscheme
set background=dark
colorscheme my_dante

"airline
let g:airline_theme = 'ubaryd'

"mapings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <C-H> :set nohlsearch! <CR>


"file-type specific settings

"assembly: GAS syntax (AT&T)
autocmd FileType asm,vmasm setlocal ft=gas ts=8 sts=8 sw=8 noet
autocmd FileType c,cpp ab #d #define
			\ab #i #include
autocmd FileType cpp source ~/.vim/bundle/STL-Syntax/syntax/stl.vim
autocmd FileType perl setlocal sts=4 sw=4 et
