" Vim color file
" Maintainer:  James White <jwhite@ccccorp.com>
" Last Change: 2015-08-27
" Based On:    http://hans.fugal.net/vim/colors/desert.vim

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="dessert"



" color terminal definitions
highlight Normal    ctermfg=gray    ctermbg=NONE    guifg=gray  guibg=black

" literals
highlight Number    ctermfg=darkred guifg=darkred
highlight String    ctermfg=darkred guifg=darkred
highlight Delimiter ctermfg=gray    guifg=gray

" basic syntax components
highlight Comment       ctermfg=darkcyan            guifg=darkcyan
highlight Conditional   ctermfg=brown   cterm=bold  guifg=brown gui=bold
highlight Function      ctermfg=brown   cterm=bold  guifg=brown gui=bold
highlight Identifier    ctermfg=brown   cterm=bold  guifg=brown gui=bold
highlight Keyword       ctermfg=brown               guifg=brown
highlight Operator      ctermfg=white               guifg=white
highlight PreProc       ctermfg=white               guifg=white
highlight Repeat        ctermfg=brown   cterm=bold  guifg=brown gui=bold
highlight Special       ctermfg=brown   cterm=bold  guifg=brown gui=bold
highlight Statement     ctermfg=brown               guifg=brown
highlight Type          ctermfg=brown   cterm=bold  guifg=brown gui=bold

" diffs
highlight DiffAdd       ctermbg=lightblue                                       guibg=lightblue
highlight DiffChange    ctermbg=darkmagenta                                     guibg=darkmagenta
highlight DiffDelete    ctermfg=darkblue    ctermbg=darkcyan    guifg=darkblue  guibg=darkcyan
highlight DiffText      ctermbg=darkred                                         guibg=darkred

" other vim ui components
highlight CursorLine                        ctermbg=NONE        cterm=underline             guibg=NONE      gui=underline
highlight CursorLineNR                      ctermbg=NONE        cterm=bold,underline        guibg=darkgray  gui=bold,underline
highlight Error         ctermfg=black       ctermbg=darkred                 guifg=black     guibg=darkred
highlight FoldColumn    ctermfg=gray        ctermbg=NONE                    guifg=gray      guibg=NONE
highlight Folded        ctermfg=gray        ctermbg=NONE                    guifg=gray      guibg=NONE
highlight IncSearch     ctermfg=black       ctermbg=darkcyan    cterm=NONE  guifg=black     guibg=darkcyan  gui=NONE
highlight LineNr        ctermfg=darkcyan    ctermbg=NONE                    guifg=darkcyan  guibg=NONE
highlight NonText       ctermfg=gray        ctermbg=NONE                    guifg=gray      guibg=NONE
highlight Search        ctermfg=black       ctermbg=darkcyan    cterm=NONE  guifg=black     guibg=darkcyan  gui=NONE

"highlight Directory    ctermfg=cyan
"highlight Ignore       ctermfg=7
"highlight Ignore       ctermfg=darkgray
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
