" jump to the next or previous line that has the same level or a lower level of
" indentation than the current line.
function! NextIndentLine(inclusive, forward, out)
  let line = line('.')
  let column = col('.')
  let eof = line('$')
  let indent = indent(line)
  let step = a:forward ? 1 : -1
  while (line > 0 && line <= eof)
    let line = line + step
    if (!a:out && indent(line) == indent || a:out && indent(line) < indent)
      if (strlen(substitute(getline(line), '^\s*\(.\{-}\)\s*$', '\1', '')) > 0)
        if (!a:inclusive)
          let line = line - step
        endif
        if (a:out)
          let column = column - &shiftwidth
        endif
        execute line
        execute "normal " column . "|"
        return
      endif
    endif
  endwhile
endfunction

nnoremap <silent> [l :call NextIndentLine(1, 0, 0)<CR>
nnoremap <silent> ]l :call NextIndentLine(1, 1, 0)<CR>
nnoremap <silent> [L :call NextIndentLine(1, 0, 1)<CR>
nnoremap <silent> ]L :call NextIndentLine(1, 1, 1)<CR>
vnoremap <silent> [l <Esc>:call NextIndentLine(1, 0, 0)<CR>m`gv``
vnoremap <silent> ]l <Esc>:call NextIndentLine(1, 1, 0)<CR>m`gv``
vnoremap <silent> [L <Esc>:call NextIndentLine(1, 0, 1)<CR>m`gv``
vnoremap <silent> ]L <Esc>:call NextIndentLine(1, 1, 1)<CR>m`gv``
onoremap <silent> [l :call NextIndentLine(1, 0, 0)<CR>
onoremap <silent> ]l :call NextIndentLine(1, 1, 0)<CR>
onoremap <silent> [L :call NextIndentLine(0, 0, 1)<CR>
onoremap <silent> ]L :call NextIndentLine(0, 1, 1)<CR>
