set history=1000
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent
set backspace=indent,eol,start
set hidden

set undodir=$HOME/vimfiles/undodir
set undofile
set noswapfile
set nobackup
set viminfofile=$HOME/vimfiles/info

if &t_Co > 2
	syntax on
	set background=dark

	highlight Pmenu ctermbg=blue ctermfg=white
	highlight PmenuSel ctermbg=blue ctermfg=white cterm=inverse

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

highlight ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/

set fillchars+=vert:\┊
set noshowmode
set laststatus=1
set wildmenu
set wildoptions=pum

set nowrap
set number
set showmatch

nmap <C-N> :bnext<CR>
nmap <C-P> :bprev<CR>

let mapleader=','

tnoremap <Esc><Esc> <C-\><C-n>

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['node_modules','\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/


let g:airline_theme = 'simple'
