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
"   Above is realized with :Pylint command. To disable calling Pylint every
"   time a buffer is saved put into .vimrc file
let g:pylint_onwrite = 0
"   Displaying code rate calculated by Pylint can be avoided by setting
let g:pylint_show_rate = 0
"   Openning of QuickFix window can be disabled with
"       let g:pylint_cwindow = 0
noremap <buffer> <F5> :call Pylint(1)<CR>
noremap! <buffer> <F5> <Esc>:call Pylint(1)<CR>
