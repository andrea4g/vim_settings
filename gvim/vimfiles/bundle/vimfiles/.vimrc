set nocompatible

" Enable automatic indentation
filetype plugin indent on
" Show existing tab with 2 spaces width
set tabstop=2
" When indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert spaces
set expandtab

" Enable syntax highlighting
syntax on

" 80 Char Line
set textwidth=0
set wrapmargin=0
set colorcolumn=81

" Map Ctrl-Backspace to delete the previous word in insert mode.
set backspace=indent,eol,start
noremap! <C-BS> <C-w>

" Windows: set proper file encodings
set enc=utf-8
set fileencoding=utf-8
set fileencodings=utf8,ucs-bom,prc

" Set some nice character listings, the" ignore these files when completing names and in Ex
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pdf,*.bak,*.beam,*.exe,*.mp3
" set of file name suffixes that will be given a lower priority when it comes to matching wildcards
set suffixes+=.old

" Set characters for spaces and tabs
"set list listchars=tab:⟶\ ,trail:·,extends:>,precedes:<,nbsp:%
set list listchars=tab:\ \ ,extends:→,precedes:←,trail:·
set list

" Set UNIX file endings
set fileformat=unix

" Disable cursor blinking
set guicursor+=a:blinkon0

" Use the standard system clipboard
set clipboard=unnamed

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" VHDL - Disable alignments of port maps
let g:vhdl_indent_genportmap = 0

" Disable wrapping
set nowrap

" Map CTRL-TAB for tab motions
map <silent> <C-Tab> :tabnext<CR>
map <silent> <C-S-Tab> :tabprevious<CR>

" Toggle highlighting for searched words
noremap <silent> <F4> :set hlsearch!<CR>

" Background
set background=dark

" Highlight matching parenthesis
set showmatch

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction
command! TrimWhiteSpace call TrimWhiteSpace()

" Automatically replace tabs with spaces
command! Retab set expandtab | retab

" Automatically update externally changed files
set autoread

" Store .swp, undo, backup files inside personal directory
if has('unix')
  set backupdir=~/.vim/backup//
  set directory=~/.vim/swap//
  set undodir=~/.vim/undo//
elseif has('win32')
  set backupdir=~/vimfiles/backup//
  set directory=~/vimfiles/swap//
  set undodir=~/vimfiles/undo//
endif

" vim-plug
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
