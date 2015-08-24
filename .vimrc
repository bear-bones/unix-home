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
set noerrorbells visualbell t_vb=

" let backspace erase anything
set backspace=2

" make tabs 4 spaces, shift 4 spaces, tab => spaces, smart autoindenting
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
augroup cindent
    autocmd!
    autocmd FileType c,cpp,cs,java,javascript set cindent
augroup end

" case-smart searching that searches while typing and highlights matches
set ignorecase smartcase incsearch hlsearch
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

" treat wrapped lines like regular lines for the purpose of navigation
nnoremap j gj
nnoremap k gk
nnoremap ^ g^
nnoremap $ g$
vnoremap j gj
vnoremap k gk
vnoremap ^ g^
vnoremap $ g$

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


" quick save/quit: ZZ saves, ZX saves and quits, ZQ quits without saving
inoremap ZZ <c-o>:w<cr>
inoremap ZX <c-o>ZZ
inoremap ZQ <c-o>ZQ
nnoremap ZZ :w<cr>
nnoremap ZX ZZ
" nnoremap ZQ ZQ -- ZQ has default behavior in normal mode
vnoremap ZZ <esc>:w<cr>gv
vnoremap ZX <esc>ZZ
vnoremap ZQ <esc>ZQ



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
colorscheme dessert

" display row and column of cursor as well as % scrolled
set ruler

" show file name in terminal title bar
set titlestring=%(%{expand(\"$LOGNAME\")=='root'?'root':''}@%)%{expand(\"$HOSTNAME\")}:%{expand(\"%:p:h\")}%=%{expand(\"%:t\")}%(\ [%M%R]%)"
set title

" show line numbers as distance from cursor
set relativenumber

" line wrapping
set wrap
set showbreak=>>>\ 
set display=lastline

" show line of current cursor (in current window only)
set cursorline
augroup currentline
    autocmd!
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline
augroup end

" highlight columns 80n
function! ToggleCC()
    if stridx(&colorcolumn, '80') != 0
        set colorcolumn=80,160,240,320,400,480,560,640,720,800
    else
        set colorcolumn=0
    endif
endfunction
nnoremap <silent> <leader>cc :call ToggleCC()<cr>
call ToggleCC()

" show matching brackets (thanks Doug)
set showmatch



" use filetype plugins
filetype plugin on
filetype indent on
