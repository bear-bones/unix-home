" use the progress compiler
" defines the following buffer-local functions
"   Dictionary
"   Compile
"   CompileAndPrompt
"   Run
"   Ship
compiler progress



" mappings to mimic progress editor commands
" F1 => run the program
noremap  <silent> <buffer>  <f1>         :w!<cr>:call Run()<cr>
inoremap <silent> <buffer>  <f1>    <c-o>:w!<cr><c-o>:call Run()<cr>
" Shift+F1 => run the program, even if it doesn't compile
noremap  <silent> <buffer>  <s-f1>       :w!<cr>:call Run("force")<cr>
inoremap <silent> <buffer>  <s-f1>  <c-o>:w!<cr><c-o>:call Run("force")<cr>
" F2 => compile the program
noremap  <silent> <buffer>  <f2>         :w!<cr>:call Compile()<cr>
inoremap <silent> <buffer>  <f2>    <c-o>:w!<cr><c-o>:call Compile()<cr>
" F3 => open the progress dictionary
noremap  <silent> <buffer>  <f3>         :call Dictionary()<cr>
inoremap <silent> <buffer>  <f3>    <c-o>:call Dictionary()<cr>
" F4 => ship the program
noremap  <silent> <buffer>  <f4>         :w!<cr>:call Ship()<cr>
inoremap <silent> <buffer>  <f4>    <c-o>:w!<cr><c-o>:call Ship()<cr>
" shift+F4 => ship the program, even if it doesn't compile
noremap  <silent> <buffer>  <s-f4>       :w!<cr>:call Ship("force")<cr>
inoremap <silent> <buffer>  <s-f4>  <c-o>:w!<cr><c-o>:call Ship("force")<cr>
