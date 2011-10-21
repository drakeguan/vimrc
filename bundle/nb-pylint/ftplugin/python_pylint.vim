if !exists("*Pylint()")
    function Pylint()
        set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
        set errorformat=%f:%l:\ %m
        setlocal sp=>%s\ 2>&1

        set lazyredraw   " delay redrawing
        cclose           " close any existing cwindows

        " write any changes before continuing
        if &readonly == 0
            update
        endif

        " perform the pylint
        silent make!

        " open cwindow
        execute 'belowright copen'
        setlocal wrap
        nnoremap <buffer> <silent> c :cclose<CR>
        nnoremap <buffer> <silent> q :cclose<CR>

        set nolazyredraw
        redraw!
    endfunction
endif

noremap <buffer> <F5> :call Pylint()<CR>
noremap! <buffer> <F5> <Esc>:call Pylint()<CR>
