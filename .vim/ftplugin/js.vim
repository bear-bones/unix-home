" f1 => run
 map <silent><f1>      :![[ -n "$(which node 2>/dev/null)" ]] && node %<cr>
imap <silent><f1> <c-o>:![[ -n "$(which node 2>/dev/null)" ]] && node %<cr>
