" More syntax highlighting.
let python_highlight_all = 1

" Smartindent 
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class

" Make smartindent use blanks instead of tab.
"setlocal smarttab

" Auto completion
setlocal omnifunc=pythoncomplete#Complete

" Highligh tabs
" ref: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
setlocal list listchars=tab:»-

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" pylint
compiler pylint
"   Above is realized with :Pylint command.
noremap <buffer> <F5> :call Pylint(1)<CR>
noremap! <buffer> <F5> <Esc>:call Pylint(1)<CR>
