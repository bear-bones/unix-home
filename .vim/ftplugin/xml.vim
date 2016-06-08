" for xml-like files (.xml, .xsl, .html, .fo) I don't care about line length;
" often I edit them fullscreen
if has('colorcolumn')
   set colorcolumn=0
endif

" I don't want the lines to wrap, since they're sometimes really long, and since
" the visual indentation is so crucial to understanding the document
set nowrap

" I want as little indentation as possible, since there are usually lots of
" levels of indentation
set shiftwidth=2
set softtabstop=2
set tabstop=2
