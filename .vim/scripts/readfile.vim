" read file whose name is under cursor
function! ReadFile()
  let cfile = expand('<cfile>')
  let files = globpath(&path, cfile, 0, 1)
  if empty(files)
    echoerr 'File ' . cfile . " doesn't exist"
  else
    normal oFILE>>>
    normal o<<<FILE
    normal k
    execute 'read' files[0]
  endif
endfunction

inoremap <silent> grf <esc>:call ReadFile()<cr>a
nnoremap <silent> grf      :call ReadFile()<cr>
