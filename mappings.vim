
function MakeBuild() 
    :wall
    :make build
endfunction


function MakeTest() 
    :wall
    :make test
endfunction


:map <A-b> :call MakeBuild()<cr>
:map <A-t> :call MakeTest()<cr>

