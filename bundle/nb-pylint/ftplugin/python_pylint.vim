function! Pylint()
    set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
    set errorformat=%f:%l:\ %m
    setlocal sp=>%s\ 2>&1
    silent make!
    cwindow
endfunction

