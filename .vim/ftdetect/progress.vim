" recognize .i and .p files as progress
augroup ftdetect
    autocmd!
    autocmd BufNewFile,BufRead *.[ip] set filetype=progress
    autocmd BufNewFile,BufRead *.cls  set filetype=progress
augroup end
