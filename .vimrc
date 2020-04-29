set nocompatible			"no Vi compatibility

"Vundle settings
filetype off "required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'CheezeCake/vim-gas'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'tpope/vim-commentary'
" Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'w0rp/ale'
call vundle#end()

"Display settings
set t_Co=256
set cursorline
set number
"set textwidth=70
set fillchars+=stl:\ ,stlnc:\
set laststatus=2
if has('gui')
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
set shiftround
set noexpandtab
set smarttab
set autoindent
set cindent
set cino=:0,l1,t0,g0,(0

"general
set backspace=indent,eol,start
set ttyfast
set wildmenu
set wildmode=full
set mouse=a
set incsearch
set hlsearch
set ignorecase
set smartcase
set encoding=utf-8
set showcmd
set title
set splitbelow
set splitright
"for tmux
set t_ut=
set tabpagemax=100

"colorscheme
colorscheme wombat

"assembly: GAS syntax (AT&T)
autocmd FileType asm,vmasm setlocal ft=gas nocindent

autocmd BufNewFile,BufRead *.dart setlocal ft=dart

"mapings
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap gT <Nop>
nnoremap gt <Nop>
nnoremap <silent> H :tabp<CR>
nnoremap <silent> L :tabn<CR>

nnoremap <silent> <S-Left> :tabm -1<CR>
nnoremap <silent> <S-Right> :tabm +1<CR>

vnoremap <C-c> "+y


"Plugin configuration

"Airline
let g:airline_theme = 'murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

"Ctrlp
let g:ctrl_map = '<C-p>'
let g:ctrlp_custom_ignore = '\v\.(o|so|dylib|a)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1

"ALE
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_completion_enabled = 0
