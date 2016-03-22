" Vim color file
" Maintainer:  James White <jwhite@ccccorp.com>
" Last Change: 2013-09-20
" Based On:    http://hans.fugal.net/vim/colors/desert.vim

set background=dark
if version > 580
   " no guarantees for version 5.8 and below, but this makes it stop
   " complaining
   hi clear
   if exists("syntax_on")
      syntax reset
   endif
endif
let g:colors_name="dessert"



" color terminal definitions

" literals
highlight Number        ctermfg=darkmagenta
highlight String        ctermfg=darkmagenta
highlight Delimiter     ctermfg=lightgrey

" basic syntax components
highlight Comment       ctermfg=lightgrey cterm=bold,underline
highlight Conditional   ctermfg=lightgrey cterm=underline
highlight Function      ctermfg=lightgrey cterm=underline
highlight Identifier    ctermfg=lightgrey cterm=underline
highlight Keyword       ctermfg=lightgrey cterm=bold
highlight Operator      ctermfg=lightgrey cterm=bold
highlight PreProc       ctermfg=lightgrey cterm=bold
highlight Repeat        ctermfg=lightgrey cterm=underline
highlight Special       ctermfg=lightgrey cterm=underline
highlight Statement     ctermfg=lightgrey cterm=bold

" diffs
highlight DiffAdd       ctermbg=lightblue
highlight DiffChange    ctermbg=darkmagenta
highlight DiffDelete    ctermfg=darkblue    ctermbg=darkcyan
highlight DiffText      ctermbg=darkred

highlight Error         ctermfg=black       ctermbg=darkred
highlight FoldColumn    ctermfg=grey        ctermbg=NONE
highlight Folded        ctermfg=grey        ctermbg=NONE
highlight Search        ctermfg=white       ctermbg=lightblue   cterm=NONE
highlight IncSearch     ctermfg=lightgrey   ctermbg=lightblue   cterm=NONE

"highlight Directory    ctermfg=cyan
"highlight Ignore       ctermfg=7
"highlight Ignore       ctermfg=darkgrey
"highlight LineNr       ctermfg=3
"highlight ModeMsg      cterm=NONE ctermfg=brown
"highlight MoreMsg      ctermfg=darkgreen
"highlight NonText      ctermfg=darkblue
"highlight Question     ctermfg=green
"highlight SpecialKey   ctermfg=darkgreen
"highlight StatusLine   cterm=reverse
"highlight StatusLineNC cterm=reverse
"highlight Title        ctermfg=magenta
"highlight Type         ctermfg=2
"highlight Underlined   ctermfg=magenta cterm=underline
"highlight VertSplit    cterm=reverse
"highlight Visual       cterm=reverse
"highlight VisualNOS    cterm=underline
"highlight WarningMsg   ctermfg=red
"highlight WildMenu     ctermfg=black ctermbg=yellow
