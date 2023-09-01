
noremap <space>p :pop<CR>
noremap <c-b> :NvimTreeToggle<CR>

function EndsWith(longer, shorter) abort
  return a:longer[len(a:longer)-len(a:shorter):] ==# a:shorter
endfunction

function LaunchIpython()
    if EndsWith(@%, '.py') 
        :vsplit term://ipython --autocall=2  -i %
    else
        :vsplit term://ipython --autocall=2
    endif
    normal i
endfunction


noremap <space>i :call LaunchIpython()<CR>
noremap <space><CR> :!python %<CR>


