" blend into others' code and ignore their trailing space
command! FI call FitIn()
function! FitIn()
    set shiftwidth=3 tabstop=3 softtabstop=3
    imap ,<space> ,
    highlight link ProgressSpaceError none
endfunction

" use my style and show my trailing whitespace
command! FO call FitOut()
function! FitOut()
    set shiftwidth=4 tabstop=4 softtabstop=4
    iunmap ,<space>
    highlight link ProgressSpaceError Error
endfunction
