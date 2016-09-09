" {{{ common functions
" function to echo an error message
function! EchoError(message)
  redraw
  echohl Error
  echo a:message
  echohl None
endfunction


" function to get the full type name from the short type code
function! GetTypeName(type)
  let type = ''
  if a:type ==? 'ch'
    let type = 'CHAR'
  elseif a:type ==? 'da'
    let type = 'DATE'
  elseif a:type ==? 'de'
    let type = 'DEC'
  elseif a:type ==? 'ha'
    let type = 'HANDLE'
  elseif a:type ==? 'in'
    let type = 'INT'
  elseif a:type ==? 'lc'
    let type = 'LONGCHAR'
  elseif a:type ==? 'lo'
    let type = 'LOG'
  elseif a:type ==? 'me'
    let type = 'MEMPTR'
  elseif a:type ==? 'ro'
    let type = 'ROWID'
  endif
  return type
endfunction


" function to parse a parameter input like "ioch w-type" into a progress
" phrase like "DEF INPUT-OUTPUT PARAM w-type AS CHAR NO-UNDO" or
" "INPUT-OUTPUT w-type AS CHAR"
function! GetParamString(context, param)
  let parts = split(a:param, ' ')
  if len(parts) < 2
    call EchoError('You must supply the parameter name and type.')
    return 'error'
  endif

  let name = get(parts, 0)
  let type = get(parts, 1)

  let io = 'INPUT' 
  let table = ''
  let noundo = ' NO-UNDO'
  let init = ''


  " sort out whether this is INPUT, INPUT-OUTPUT, or OUTPUT
  if stridx(type, 'io') == 0
    let io = 'INPUT-OUTPUT'
    let type = strpart(type, 2)
  elseif stridx(type, 'o') == 0
    let io = 'OUTPUT'
    let type = strpart(type, 1)
  elseif stridx(type, 'i') == 0 && type !=? 'in'
    let type = strpart(type, 1)
  endif


  " if it's a procedure's OUTPUT parameter, it can have an INIT value
  if a:context ==? 'procedure' && io ==? 'output' &&
    \strridx(type, 'i') == strlen(type) - 1
    if len(parts) < 3
      if a:context ==? 'procedure'
        call EchoError("You didn't give a value for the initialized parameter.")
      else
        call EchoError("You didn't give a value for the initialized argument.")
      endif
      return 'error'
    endif
    let init = ' INIT ' . get(parts, 2)
    let type = strpart(type, 0, strlen(type) - 1)
  endif


  " now flesh out our types
  if a:context ==? 'procedure' && type ==? 'ta'
    let table = ' TABLE FOR '
    let type = ''
    let noundo = ''
  else
    let old_type = type
    let type = GetTypeName(old_type)
    if strlen(type) == 0
      call EchoError('Invalid type "' . old_type . '"')
      return 'error'
    else
      let type = ' AS ' . type
    endif
  endif


  " aaand return a string suitable for the context (function or procedure)
  if a:context ==? 'procedure'
    return 'DEF ' . io . ' PARAM ' . table . name . type . noundo . init . '.'
  else
    return io . ' ' . table . name . type
  endif
endfunction
" }}}



" {{{ quick variable insertion
inoremap <silent> <buffer> <leader>ch DEF VAR AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ch iDEF VAR AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>da DEF VAR AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>da iDEF VAR AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>de DEF VAR AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>de iDEF VAR AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ha DEF VAR AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ha iDEF VAR AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>in DEF VAR AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>in iDEF VAR AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lc DEF VAR AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lc iDEF VAR AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lo DEF VAR AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lo iDEF VAR AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>mp DEF VAR AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>mp iDEF VAR AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ro DEF VAR AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ro iDEF VAR AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>chi DEF VAR AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>chi iDEF VAR AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>dai DEF VAR AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>dai iDEF VAR AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>dei DEF VAR AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>dei iDEF VAR AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>hai DEF VAR AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>hai iDEF VAR AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ini DEF VAR AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ini iDEF VAR AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lci DEF VAR AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lci iDEF VAR AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>loi DEF VAR AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>loi iDEF VAR AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>mpi DEF VAR AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>mpi iDEF VAR AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>roi DEF VAR AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>roi iDEF VAR AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>chx DEF VAR AS CHAR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>chx iDEF VAR AS CHAR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>dax DEF VAR AS DATE NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>dax iDEF VAR AS DATE NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>dex DEF VAR AS DEC NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>dex iDEF VAR AS DEC NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>hax DEF VAR AS HANDLE NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>hax iDEF VAR AS HANDLE NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>inx DEF VAR AS INT NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>inx iDEF VAR AS INT NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lcx DEF VAR AS LONGCHAR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lcx iDEF VAR AS LONGCHAR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lox DEF VAR AS LOG NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lox iDEF VAR AS LOG NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>mpx DEF VAR AS MEMPTR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>mpx iDEF VAR AS MEMPTR NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>rox DEF VAR AS ROWID NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>rox iDEF VAR AS ROWID NO-UNDO EXTENT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>chix DEF VAR AS CHAR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>chix iDEF VAR AS CHAR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>daix DEF VAR AS DATE NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>daix iDEF VAR AS DATE NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>deix DEF VAR AS DEC NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>deix iDEF VAR AS DEC NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>haix DEF VAR AS HANDLE NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>haix iDEF VAR AS HANDLE NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>inix DEF VAR AS INT NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>inix iDEF VAR AS INT NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>lcix DEF VAR AS LONGCHAR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>lcix iDEF VAR AS LONGCHAR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>loix DEF VAR AS LOG NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>loix iDEF VAR AS LOG NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>mpix DEF VAR AS MEMPTR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>mpix iDEF VAR AS MEMPTR NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>roix DEF VAR AS ROWID NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>roix iDEF VAR AS ROWID NO-UNDO EXTENT INIT [].<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>ich DEF INPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ich iDEF INPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ida DEF INPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ida iDEF INPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ide DEF INPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ide iDEF INPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iha DEF INPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iha iDEF INPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iin DEF INPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iin iDEF INPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ilc DEF INPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ilc iDEF INPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ilo DEF INPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ilo iDEF INPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>imp DEF INPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>imp iDEF INPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iro DEF INPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iro iDEF INPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>ichi DEF INPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ichi iDEF INPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>idai DEF INPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>idai iDEF INPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>idei DEF INPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>idei iDEF INPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ihai DEF INPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ihai iDEF INPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iini DEF INPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iini iDEF INPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ilci DEF INPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ilci iDEF INPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iloi DEF INPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iloi iDEF INPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>impi DEF INPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>impi iDEF INPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iroi DEF INPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iroi iDEF INPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>och DEF OUTPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>och iDEF OUTPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oda DEF OUTPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oda iDEF OUTPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ode DEF OUTPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ode iDEF OUTPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oha DEF OUTPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oha iDEF OUTPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oin DEF OUTPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oin iDEF OUTPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>olc DEF OUTPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>olc iDEF OUTPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>olo DEF OUTPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>olo iDEF OUTPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>omp DEF OUTPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>omp iDEF OUTPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oro DEF OUTPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oro iDEF OUTPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>ochi DEF OUTPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ochi iDEF OUTPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>odai DEF OUTPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>odai iDEF OUTPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>odei DEF OUTPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>odei iDEF OUTPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ohai DEF OUTPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ohai iDEF OUTPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oini DEF OUTPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oini iDEF OUTPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>olci DEF OUTPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>olci iDEF OUTPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oloi DEF OUTPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oloi iDEF OUTPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ompi DEF OUTPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ompi iDEF OUTPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>oroi DEF OUTPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>oroi iDEF OUTPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>ioch DEF INPUT-OUTPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioch iDEF INPUT-OUTPUT PARAM AS CHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioda DEF INPUT-OUTPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioda iDEF INPUT-OUTPUT PARAM AS DATE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iode DEF INPUT-OUTPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iode iDEF INPUT-OUTPUT PARAM AS DEC NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioha DEF INPUT-OUTPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioha iDEF INPUT-OUTPUT PARAM AS HANDLE NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioin DEF INPUT-OUTPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioin iDEF INPUT-OUTPUT PARAM AS INT NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iolc DEF INPUT-OUTPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iolc iDEF INPUT-OUTPUT PARAM AS LONGCHAR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iolo DEF INPUT-OUTPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iolo iDEF INPUT-OUTPUT PARAM AS LOG NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iomp DEF INPUT-OUTPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iomp iDEF INPUT-OUTPUT PARAM AS MEMPTR NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioro DEF INPUT-OUTPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioro iDEF INPUT-OUTPUT PARAM AS ROWID NO-UNDO.<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

inoremap <silent> <buffer> <leader>iochi DEF INPUT-OUTPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iochi iDEF INPUT-OUTPUT PARAM AS CHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iodai DEF INPUT-OUTPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iodai iDEF INPUT-OUTPUT PARAM AS DATE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iodei DEF INPUT-OUTPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iodei iDEF INPUT-OUTPUT PARAM AS DEC NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iohai DEF INPUT-OUTPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iohai iDEF INPUT-OUTPUT PARAM AS HANDLE NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioini DEF INPUT-OUTPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioini iDEF INPUT-OUTPUT PARAM AS INT NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iolci DEF INPUT-OUTPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iolci iDEF INPUT-OUTPUT PARAM AS LONGCHAR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioloi DEF INPUT-OUTPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioloi iDEF INPUT-OUTPUT PARAM AS LOG NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>iompi DEF INPUT-OUTPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>iompi iDEF INPUT-OUTPUT PARAM AS MEMPTR NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
inoremap <silent> <buffer> <leader>ioroi DEF INPUT-OUTPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <silent> <buffer> <leader>ioroi iDEF INPUT-OUTPUT PARAM AS ROWID NO-UNDO INIT .<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
" }}}



" {{{ quick control structure insertion
inoremap <silent> <buffer> <leader>if IF<cr>THEN<cr><tab>.<up><up>
nnoremap <silent> <buffer> <leader>if iIF<cr>THEN<cr><tab>.<up><up>
inoremap <silent> <buffer> <leader>ifdo IF<cr>THEN<cr>DO:<cr>END.<up><up><up>
nnoremap <silent> <buffer> <leader>ifdo iIF<cr>THEN<cr>DO:<cr>END.<up><up><up>
inoremap <silent> <buffer> <leader>elif ELSE IF<cr>THEN<cr><tab>.<up><up><right><right>
nnoremap <silent> <buffer> <leader>elif iELSE IF<cr>THEN<cr><tab>.<up><up><right><right>
inoremap <silent> <buffer> <leader>elifdo ELSE IF<cr>THEN<cr>DO:<cr>END.<up><up><up><right><right><right><right>
nnoremap <silent> <buffer> <leader>elifdo iELSE IF<cr>THEN<cr>DO:<cr>END.<up><up><up><right><right><right><right>
inoremap <silent> <buffer> <leader>el ELSE<cr><tab><left><del>
nnoremap <silent> <buffer> <leader>el iELSE<cr><tab><left><del>
inoremap <silent> <buffer> <leader>eldo ELSE<cr>DO:<cr><tab><cr><bs>END.<up><left><del>
nnoremap <silent> <buffer> <leader>eldo iELSE<cr>DO:<cr><tab><cr><bs>END.<up><left><del>
inoremap <silent> <buffer> <leader>when WHEN<cr>THEN<cr><tab>.<up><up>
nnoremap <silent> <buffer> <leader>when iWHEN<cr>THEN<cr><tab>.<up><up>
inoremap <silent> <buffer> <leader>whendo WHEN<cr>THEN<cr>DO:<cr>END.<up><up><up>
nnoremap <silent> <buffer> <leader>whendo iWHEN<cr>THEN<cr>DO:<cr>END.<up><up><up>
" }}}



" {{{ quick procedure insertion
inoremap <silent> <buffer> <leader>proc <c-o>:call InsertProc()<cr>
nnoremap <silent> <buffer> <leader>proc      :call InsertProc()<cr>
function! InsertProc(...)
  let line = line('.')
  if a:0 == 1
    let name = a:1
  else
    let name = input('Enter Procedure Name: ')
  endif

  let indent_level = indent(line)
  let this_indent = repeat(' ', indent_level)
  let next_indent = this_indent . repeat(' ', &shiftwidth)


  " get parameters
  let params = []
  let param = input('Enter Parameter: ')
  while strlen(param) > 0
    let param_string = GetParamString('procedure', param)
    if param_string !=? 'error'
      call add(params, param_string)
    endif
    let param = input('Enter Parameter: ')
  endwhile


  " write procedure header
  call append(line, this_indent . '/* {{' . '{ ' . name . ' */')
  let line += 1
  call append(line, this_indent . 'PROCEDURE ' . name . ':')
  let line += 1


  " write parameters
  let length = len(params) - 1
  for param in params
    call append(line, next_indent . param)
    let line += 1
  endfor

  " parameters append a blank line after them
  if len(params) > 0
    call append(line, '')
    let line += 1
  endif
  

  " write procedure trailer
  call append(line, this_indent)
  call append(line + 1,
    \this_indent . 'END PROCEDURE. /* ' . name . ' }' . '}} */')
  let line += 1


  " start writing procedure body
  call cursor(line, 0)
  normal zozz
  startinsert
endfunction
" }}}



" {{{ quick function insertion
inoremap <silent> <buffer> <leader>func <c-o>:call InsertFunc()<cr>
nnoremap <silent> <buffer> <leader>func      :call InsertFunc()<cr>

function! InsertFunc(...)
  let tab = repeat(' ', &shiftwidth)
  let line = line('.')
  let name = ''
  let type = ''

  if a:0 == 2
    let name = a:1
    let type = a:2
  elseif a:0 == 1
    let name = a:1
  endif

  " have to have a function name
  if name == ''
    let name = input('Enter Function Name: ')
    if name == ''
      call EchoError('Function name required')
      return
    endif
  endif

  " flesh out our return type
  if type == ''
    let type = input('Enter Return Type: ')
    if type == ''
      call EchoError('Return type required')
      return
    endif
  endif
  let old_type = type
  let type = GetTypeName(type)
  if type == ''
    call EchoError('Invalid return type "' . old_type . '"')
    return
  endif


  " get arguments
  let args = []
  let arg = input('Enter Argument: ')
  while strlen(arg) > 0
    let arg_string = GetParamString('function', arg) 
    if arg_string !=? 'error'
      call add(args, arg_string)
    endif
    let arg = input('Enter Argument: ')
  endwhile
  let arg = join(args, ', ')


  " write function
  call append(line, '/* {{' . '{ ' . type . ' ' . name . ' */')
  let line += 1
  call append(line, 'FUNCTION ' . name . ' RETURNS ' . type . ' (' . arg . '):')
  let line += 1
  call append(line, tab . 'DEF VAR w-result AS ' . type . ' NO-UNDO.')
  let line += 1
  call append(line, '')
  let line += 1
  call append(line, tab . 'RETURN w-result.')
  let line += 1
  call append(line, 'END FUNCTION. /* ' . name . ' }' . '}} */')


  " start writing function body
  call cursor(line - 2, 0)
  normal zojzz
  startinsert
endfunction
" }}}



" {{{ other shortcuts
iabbrev nlnwne NO-LOCK NO-WAIT NO-ERROR
iabbrev elnwne EXCLUSIVE-LOCK NO-WAIT NO-ERROR
" }}}
