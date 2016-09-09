augroup skeleton
  autocmd!
  autocmd BufNewFile fx-*.p call s:FxSkeleton()
  autocmd BufNewFile w*.p call s:WSkeleton()
augroup end



" {{{ fx-... files
function! s:FxSkeleton()
  let short_file = expand('%:t:r')
  let short_file = 's/\%\%SHORTFILE\%\%/' . short_file . '/g'

  let system = expand('%:p:h:h:t')
  let skeleton = '~/.vim/skeleton/'
  if system ==# 'rel50' || system ==# 'mc03'
    let skeleton = skeleton .'fxm.p'
  else
    let skeleton = skeleton . 'fxf.p'
  endif

  silent! execute 'read !sed "' . short_file . '" ' . skeleton
  write

  normal ggdd3l
  startinsert
endfunction
" }}}



" {{{ w... files
function! s:WSkeleton()
  let short_file = expand('%:t:r')
  let file_type = strpart(short_file, 2, 1)
  let short_sys = expand('%:p:h')
  let dat_file = toupper(short_file) . '.DAT'

  if file_type == 'm' || file_type == 's'
    let file_type = 'e'
  endif

  while strpart(short_file, 3, 1) == '0'
    let short_file = strpart(short_file, 0, 3) . strpart(short_file, 4)
  endwhile

  if short_sys ==# '/home/fin10/billing'
    let short_sys = 'BL'
  elseif short_sys ==# '/home/fin10/cfap'
    let short_sys = 'AP'
  elseif short_sys ==# '/home/fin10/cfgl'
    let short_sys = 'GL'
  elseif short_sys ==# '/home/fin10/payroll'
    let short_sys = 'PAYROLL'
  elseif short_sys ==# '/home/rel50/windows' ||
        \short_sys ==# '/home/mc03/windows'
      if strpart(short_file, 0, 2) ==? 'wa'
        let short_sys = 'APPT'
      else
        let short_sys = 'MED'
      endif
  endif

  let short_file = 's/\%\%SHORTFILE\%\%/' . short_file . '/g'
  let short_sys = 's/\%\%SHORTSYS\%\%/' . short_sys . '/g'
  let dat_file = 's/\%\%DATFILE\%\%/' . dat_file . '/g'

  silent! execute 'read !sed "' . short_file . ';' . short_sys . ';' .
    \dat_file . '" ~/.vim/skeleton/w_' . file_type . '.p'
  write

  normal ggdd3l
  startinsert
endfunction
" }}}
