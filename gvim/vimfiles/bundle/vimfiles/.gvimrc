" Set the font used in GVim
if has("win32") || has("win16")
  set guifont=Hack:h11
else
  set guifont=Hack\ 13
endif

" Set a reasonable number of columns
set columns=100

" Set dark background for syntax highlighting
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Set line numbers
set number

" Set the ruler
set ruler

" Disable all GUI Options
set guioptions=

" Disable wrapping
set nowrap

" Full Screen in Windows
if has("win32") || has("win16")
  let g:GVimFullScreen = $HOME.'/vimfiles/gvimfullscreen.dll'
  function ToggleFullScreen()
    call libcallnr(g:GVimFullScreen, "ToggleFullScreen", 0)
  endfunction
  command! ToggleFullScreen call ToggleFullScreen()
  map <silent> <F11> :ToggleFullScreen<CR>
endif

" Toggle background using ALT-t
function ToggleBackground()
  if &background == "dark"
    let &background = "light"
  else
    let &background = "dark"
  endif
endfunction
command! ToggleBackground call ToggleBackground()
map <silent> <M-t> :ToggleBackground<CR>

