execute pathogen#infect()

filetype plugin indent on
syntax on

set background=dark
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set smartindent
set colorcolumn=80
set autoindent
set visualbell
" put this in your .vimrc or source it from your .vimrc
function! ToggleRelativeNumber()
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction
map <F4> :call ToggleRelativeNumber() <CR>

