" quick save/quit: ZZ saves, ZX saves and quits, ZQ quits without saving,
" ZN saves and goes to next file, ZP saves and goes to previous file
inoremap ZN <c-o>:next<cr>
inoremap ZP <c-o>:previous<cr>
inoremap ZQ <c-o>ZQ
inoremap ZX <c-o>ZZ
inoremap ZZ <c-o>:w<cr>
nnoremap ZN :next<cr>
nnoremap ZP :previous<cr>
" nnoremap ZQ ZQ -- ZQ has default behavior in normal mode
nnoremap ZX ZZ
nnoremap ZZ :w<cr>
vnoremap ZN <esc>:next<cr>gv
vnoremap ZP <esc>:previous<cr>gv
vnoremap ZQ <esc>ZQ
vnoremap ZX <esc>ZZ
vnoremap ZZ <esc>:w<cr>gv
