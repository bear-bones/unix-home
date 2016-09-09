" blend into others' code and ignore their trailing space
command! FI call FitIn()
function! FitIn()
   imap ,<space> ,
   highlight link ProgressSpaceError none
endfunction

" use my style and show my trailing whitespace
command! FO call FitOut()
function! FitOut()
   iunmap ,<space>
   highlight link ProgressSpaceError Error
endfunction
