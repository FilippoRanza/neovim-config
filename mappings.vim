
function MakeBuild() 
    :wall
    :make build
endfunction


function MakeTest() 
    :wall
    :make test
endfunction


:map <C-B> :call MakeBuild()<cr>
:map <C-T> :call MakeTest()<cr>

