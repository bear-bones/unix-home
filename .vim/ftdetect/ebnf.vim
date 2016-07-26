" recognize .bnf and .ebnf files as ebnf for the purposes of syntax
" highlighting
autocmd BufNewFile,BufRead *.bnf  set filetype=ebnf
autocmd BufNewFile,BufRead *.ebnf set filetype=ebnf
