autocmd TermOpen * setlocal nonumber norelativenumber

function MakeTest()
    wall
    belowright 20split term://make -j test
    call feedkeys("G")
endfun

function MakeBuild()
    wall
    belowright 20split term://make -j build
    call feedkeys("G")
endfun

function CloseTermOnEnter()
    nnoremap <buffer> <CR> :bd<CR>
endfun

autocmd TermClose * call CloseTermOnEnter()
