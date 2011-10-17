" More syntax highlighting.
let python_highlight_all = 1

" Smartindent 
autocmd BufRead *.py set et smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Auto completion
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Highligh tabs
" ref: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
autocmd BufRead *.py set list listchars=tab:»-

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

"" `gf` jumps to the filename under the cursor.  Point at an import statement
"" and jump to it!
"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
    "if os.path.isdir(p):
        "vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF
