set nocompatible			"no Vi compatibility

"Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
"/Vundle

if $TERM == "xterm-256color"
	set t_Co=256			"use 256 colors
else
	set t_Co=8
endif
filetype plugin on			"filetype detection and plugins
syntax on					"syntax highlighting
set number					"line numbers
set mouse=a					"mouse support
set backspace=indent,eol,start "backspace over anything
set textwidth=75			"textwidth = 75 columns

"search settings
set incsearch				"show matches while typing the search pattern

"indentation
set tabstop=4				"<Tab> = 4 spaces wide
set softtabstop=4			"<Tab> = 4 spaces when expandtab is set
set shiftwidth=4			"shifting whith '<' and '>' = 4 spaces wide
set noexpandtab				"no spaces for indentation
set cindent					"C-like indentation (smarter than ...smartindent)

"colorscheme
set background=dark
colorscheme my_dante

"mapings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"toggle highlight search
nnoremap <C-H> :set nohlsearch! <CR>


"file-type specific settings

"C, C++
autocmd FileType c,cpp ab #d #define
			\ab #i #include
"assembly: GAS syntax (AT&T), tabs=8 noexpandtab
autocmd FileType asm,vmasm setlocal ft=gas ts=8 sts=8 sw=8 noet
"perl: no tabs, 4 spaces
autocmd FileType perl setlocal sts=4 sw=4 et
