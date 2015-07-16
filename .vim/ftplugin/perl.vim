" f1 => compile && run
 map <silent><f1>      :!perl -c %:p && perl %:p<cr>
imap <silent><f1> <c-o>:!perl -c %:p && perl %:p<cr>
" f2 => compile
 map <silent><f2>      :!perl -c %:p<cr>
imap <silent><f2> <c-o>:!perl -c %:p<cr>
