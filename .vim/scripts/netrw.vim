let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_list_hide = '\.sw[op]$'
let g:netrw_winsize = 32
augroup ProjectDrawer
  autocmd!
  " don't use this in diff mode or when editing a git commit message
  if !&diff && expand('%:t') !=# 'COMMIT_EDITMSG'
    autocmd VimEnter * :Vexplore
  endif
augroup END
