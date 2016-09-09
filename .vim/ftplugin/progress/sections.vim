noremap  <script> <buffer> <silent> ]] :call <SID>NextSection(0, 0, 0)<cr>
noremap  <script> <buffer> <silent> [[ :call <SID>NextSection(0, 1, 0)<cr>
noremap  <script> <buffer> <silent> ][ :call <SID>NextSection(1, 0, 0)<cr>
noremap  <script> <buffer> <silent> [] :call <SID>NextSection(1, 1, 0)<cr>
vnoremap <script> <buffer> <silent> ]] :call <SID>NextSection(0, 0, 1)<cr>
vnoremap <script> <buffer> <silent> [[ :call <SID>NextSection(0, 1, 1)<cr>
vnoremap <script> <buffer> <silent> ][ :call <SID>NextSection(1, 0, 1)<cr>
vnoremap <script> <buffer> <silent> [] :call <SID>NextSection(1, 1, 1)<cr>


function! s:NextSection(type, direction, visual)
  if a:type
    let pattern = '\v(FOR EACH|DO:)'
  else
    let pattern = '\v(FUNCTION|PROCEDURE) '
  endif

  if a:direction
    let op = '?'
  else
    let op = '/'
  endif

  if a:visual
    normal! gv
  endif

  execute 'silent normal! ' . op . pattern . "\r"
  normal! zz
endfunction
