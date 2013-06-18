syntax on				"syntax hightlight
set nocompatible		"nocompatible with vi
set background=dark		"background colors
filetype plugin on		"file type plugin

if $TERM == "xterm-256color"
	set t_Co=256		"use 256 colors
else
	set t_Co=8
endif

"set ignorecase
set hlsearch			"highlight search matches
set incsearch			"show matches while typing
						"the search patern

"tabs config
set tabstop=4
set shiftwidth=4
set smartindent			"smart indentation

set mouse=a				"enable mouse support
set number				"show line numbers
"set cursorline			"highlight current line

"backspace problems
set backspace=indent,eol,start

"colorscheme
colorscheme my_dante

"GET USED TO hjkl !!!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
