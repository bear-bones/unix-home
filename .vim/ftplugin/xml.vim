" for xml-like files (.xml, .xsl, .html, .fo) I don't care about line length;
" often I edit them fullscreen
if has('colorcolumn')
  set colorcolumn=0
endif

" I don't want the lines to wrap, since they're sometimes really long, and since
" the visual indentation is so crucial to understanding the document
set nowrap
