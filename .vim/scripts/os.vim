" os-specific crap

if has('win32') || has('win64')
  let $SEP = '\'
  if $HOME =~ '/'  " unix-style paths means running under msysgit
    let vimdir = '.vim'
    source ~/.gvimrc
  else
    let vimdir = 'vimfiles'
  endif
else " *nix
  let $SEP = '/'
  let vimdir = '.vim'
  source ~/.vim/scripts/termcap.vim
endif

" translate any path to the correct version for the current OS
function! Path(path)
  let path = substitute(a:path, '^C:', '', 'i')       " remove leading C:
  let path = substitute(path, '^c:', '', '')          " remove leading c:
  let path = substitute(path, '[/\\]\+', $SEP, 'g')   " / or \ => $SEP
  let path = substitute(path, '^\\', 'C:\', '')       " leading \ => C:\
  return path
endfunction

" personal vim directory
let $MYVIM = Path($HOME . '/' . vimdir)
