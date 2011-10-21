" More syntax highlighting.
let python_highlight_all = 1

" Smartindent 
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class

" Make smartindent use blanks instead of tab.
"setlocal smarttab

" Auto completion
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Highligh tabs
" ref: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
autocmd BufRead *.py set list listchars=tab:»-

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

