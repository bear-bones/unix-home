" f1 => compile && run
 map <silent><f1>      :!bash -n %:p && %:p<cr>
imap <silent><f1> <c-o>:!bash -n %:p && %:p<cr>
" f2 => compile
 map <silent><f2>      :!bash -n %:p<cr>
imap <silent><f2> <c-o>:!bash -n %:p<cr>
