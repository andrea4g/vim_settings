execute pathogen#infect()
filetype plugin indent on
syntax on

set tabstop=2        " The width of a TAB is set to 4.
                     " Still it is a \t. It is just that
                     " Vim will interpret it to be having
                     " a width of 2.
set shiftwidth=2     " Indents will have a width of 2
set softtabstop=2    " Sets the number of columns for a TAB
set expandtab        " Expand TABs to spaces
set number           " Set line number
set smartindent
set autoindent
set visualbell
set colorcolumn=80
set shell=powershell
set shellcmdflag=-command
set fileformat=unix

set list listchars=tab:\ \ ,extends:?,precedes:?,trail:~
set list

nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" put this in your .vimrc or source it from your .vimrc
function! ToggleRelativeNumber()
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction
map <F4> :call ToggleRelativeNumber() <CR>

let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'
