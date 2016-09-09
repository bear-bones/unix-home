" recognize .i and .p files as progress
" convoluted because it has to skip new f*.p and w*.p files so that the
" skeleton file autocommands run
augroup progressdetect
  autocmd!
  autocmd BufRead *.[ip] set filetype=progress
  autocmd BufNewFile,BufRead *.cls  set filetype=progress
  autocmd BufNewFile *.i set filetype=progress
  autocmd BufNewFile [^fw]*.p set filetype=progress
augroup end
