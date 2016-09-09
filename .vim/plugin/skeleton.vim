augroup skeleton
  autocmd!
  autocmd BufNewFile f*.p call <SID>Skeleton('f')
  autocmd BufNewFile w*.p call <SID>Skeleton('w')
augroup end


function! s:Skeleton(type)
  let system = tolower(expand('%:p:h:h:t'))
  let short_file = tolower(expand('%:t:r'))
  let directory = tolower(expand('%:p:h'))
  let dat_file = toupper(short_file) . '.DAT'

  while strpart(short_file, 3, 1) == '0'
    let short_file = strpart(short_file, 0, 3) . strpart(short_file, 4)
  endwhile

  if directory ==# '/home/fin10/billing'
    let short_sys = 'BL'
  elseif directory ==# '/home/fin10/cfap'
    let short_sys = 'AP'
  elseif directory ==# '/home/fin10/cfgl'
    let short_sys = 'GL'
  elseif directory ==# '/home/fin10/payroll'
    let short_sys = 'PAYROLL'
  elseif directory ==# '/home/rel50/windows' ||
        \directory ==# '/home/mc03/windows'
    if strpart(short_file, 0, 2) ==? 'wa'
      let short_sys = 'APPT'
    else
      let short_sys = 'MED'
    endif
  else
    let short_sys = ''
  endif

  if a:type ==# 'w'
    let skeleton_file = 'w_' . strpart(short_file, 2, 1)
    if skeleton_file ==# 'w_m' || skeleton_file ==# 'w_s'
      let skeleton_file = 'w_e'
    endif
  else
    if system ==# 'fin10'
      let skeleton_file = 'fxf'
    else
      let skeleton_file = 'fxm'
    endif
  endif
  let skeleton_file = '~/.vim/skeleton/' . skeleton_file . '.p'

  let short_file_sed = 's/\%\%SHORTFILE\%\%/' . short_file . '/g'
  let short_sys_sed = 's/\%\%SHORTSYS\%\%/' . short_sys . '/g'
  let dat_file_sed = 's/\%\%DATFILE\%\%/' . dat_file . '/g'
  let sed_expr = short_file_sed . ';' . short_sys_sed . ';' . dat_file_sed

  set filetype=progress
  silent! execute 'read !sed "' . sed_expr . '" ' . skeleton_file
  normal ggdd
endfunction
