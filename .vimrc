" utility variables/functions

" os-specific crap (get this out of the way so we never have to think about it
" again
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

" use backslash as leader character
let mapleader = '\'
let g:mapleader = '\'



" buffer/window management

" return to last edit position when opening files
augroup lastpos
  autocmd!
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup end

" Remember info about open buffers on close
set viminfo^=%

" allow unsaved changes to hang around when a buffer is hidden
set hidden

" buffer mappings
nnoremap <leader>be :enew<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprev<cr>
nnoremap <leader>bq :bp <bar> bd #<cr>



" behavior settings

" preserve undo history
execute 'set undodir=' . (isdirectory(Path('/etc/vimundo/')) ? Path('/etc/vimundo/') : Path($MYVIM . '/undo/'))
set undofile

" NO BELL
set noerrorbells
set t_vb=
set visualbell

" let backspace erase anything
set backspace=2

" make tabs 2 spaces, shift 2 spaces, tab => spaces, smart autoindenting
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
augroup cindent
  autocmd!
  autocmd FileType c,cpp,cs,java,javascript set cindent
augroup end

" case-smart searching that searches while typing and highlights matches
set hlsearch
set ignorecase
set incsearch
set smartcase
nnoremap <silent> <leader>nh :nohl<cr>

" honor modelines
set modeline

" fold on {{{...}}}
set foldmethod=marker

" don't leave turds all over the place
set nobackup
"execute 'set directory=' . Path($MYVIM . '/swap/')

" reselect visual block after shifting
vnoremap < <gv
vnoremap > >gv

" make Y act like the rest of the capitals
nmap Y y$

" keep search matches at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" just smash `jk` instead of stretching for escape
inoremap jk <esc>
inoremap <leader>jk jk
inoremap <esc> <nop>


" quick save/quit: ZZ saves, ZX saves and quits, ZQ quits without saving,
" ZN saves and goes to next file, ZP saves and goes to previous file
inoremap ZN <c-o>:next<cr>
inoremap ZP <c-o>:previous<cr>
inoremap ZQ <c-o>ZQ
inoremap ZX <c-o>ZZ
inoremap ZZ <c-o>:w<cr>
nnoremap ZN :next<cr>
nnoremap ZP :previous<cr>
" nnoremap ZQ ZQ -- ZQ has default behavior in normal mode
nnoremap ZX ZZ
nnoremap ZZ :w<cr>
vnoremap ZN <esc>:next<cr>gv
vnoremap ZP <esc>:previous<cr>gv
vnoremap ZQ <esc>ZQ
vnoremap ZX <esc>ZZ
vnoremap ZZ <esc>:w<cr>gv

" read file whose name is under cursor
function! Readfile()
  let cfile = expand('<cfile>')
  let files = globpath(&path, cfile, 0, 1)
  if empty(files)
    echoerr 'File ' . cfile . " doesn't exist"
  else
    normal oFILE>>>
    normal o<<<FILE
    normal k
    execute 'read' files[0]
  endif
endfunction
inoremap <silent> grf <esc>:call Readfile()<cr>a
nnoremap <silent> grf      :call Readfile()<cr>



" splits

" split resizing
nnoremap <silent> <c-up> <c-w>+
nnoremap <silent> <c-down> <c-w>-
nnoremap <silent> <c-left> <c-w><lt>
nnoremap <silent> <c-right> <c-w>>

" easy split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" resize splits on window resize
augroup splitresize
  autocmd!
  autocmd VimResized * exe "normal! \<c-w>="
augroup end



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
let &showbreak = '  ↳ '
set cpoptions+=n
set display=lastline
set wrap
" \wrap toggles line wrapping
function! ToggleWrap()
  if &wrap
    set nowrap
  else
    set wrap
  endif
endfunction
inoremap <silent> <leader>wrap <c-o>:call ToggleWrap()<cr>
nnoremap <silent> <leader>wrap :call ToggleWrap()<cr>
vnoremap <silent> <leader>wrap :call ToggleWrap()<cr>

" show line of current cursor (in current window only)
set cursorline
augroup currentline
  autocmd!
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
augroup end

" show matching brackets (thanks Doug)
set showmatch



" use filetype plugins
filetype indent on
filetype plugin on
