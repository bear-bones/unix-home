" splits

" split resizing
nnoremap <silent> <c-up> <c-w>+
nnoremap <silent> <c-down> <c-w>-
nnoremap <silent> <c-left> <c-w><lt>
nnoremap <silent> <c-right> <c-w>>

" easy split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" resize splits on window resize
augroup splitresize
  autocmd!
  autocmd VimResized * exe "normal! \<c-w>="
augroup end
