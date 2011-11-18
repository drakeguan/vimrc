if exists('current_compiler')
  finish
endif
let current_compiler = 'pylint'

if exists(':Pylint') != 2
    command Pylint :call Pylint()
endif

if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

function! Pylint()
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

noremap <buffer> <F5> :call Pylint()<CR>
noremap! <buffer> <F5> <Esc>:call Pylint()<CR>
