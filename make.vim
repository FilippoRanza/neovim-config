autocmd TermOpen * setlocal nonumber norelativenumber

function MakeTest()
    wall
    belowright 20split term://make test
    call feedkeys("G")
endfun

function MakeBuild()
    wall
    belowright 20split term://make build
    call feedkeys("G")
endfun

function CloseTermOnEnter()
    nnoremap <buffer> <CR> :q<CR>
endfun

autocmd TermClose * call CloseTermOnEnter()
