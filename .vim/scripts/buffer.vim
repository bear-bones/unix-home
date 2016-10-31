" buffer/window management

" return to last edit position when opening files
augroup lastpos
  autocmd!
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup end

" Remember info about open buffers on close
set viminfo^=%

" allow unsaved changes to hang around when a buffer is hidden
set hidden

" buffer mappings
nnoremap <leader>be :enew<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprev<cr>
nnoremap <leader>bq :bp <bar> bd #<cr>
