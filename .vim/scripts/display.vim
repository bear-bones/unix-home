" display settings

" syntax highlighting
syntax on
colorscheme desert

" display row and column of cursor as well as % scrolled
set ruler

" show file name in terminal title bar
let user = expand('$LOGNAME') == 'root' ? 'root@' : ''
let host = expand('$HOSTNAME')
let home = expand('$HOME')
let &titleold = user . host . ' ' . substitute(getcwd(), home, '~', '')
let &titlestring = user . host .
                 \ " %{substitute(expand('%:p:h'), '" . home .
                 \ "', '~', '')}%=%{expand('%:t')}%( [%M%R]%)"
set title

" show line numbers as distance from cursor
set relativenumber

" line wrapping
set nowrap
set list listchars=tab:▸\ ,precedes:<,extends:>
let &showbreak = '  ↳ '
set cpoptions+=n
set display=lastline
" \wrap toggles line wrapping
function! ToggleWrap()
  if &wrap
    set nowrap
  else
    set wrap
  endif
endfunction
inoremap <silent> <leader>wrp <c-o>:call ToggleWrap()<cr>
nnoremap <silent> <leader>wrp :call ToggleWrap()<cr>
vnoremap <silent> <leader>wrp :call ToggleWrap()<cr>

" show line of current cursor (in current window only)
set cursorline
augroup currentline
  autocmd!
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
augroup end

" show matching brackets (thanks Doug)
set showmatch
