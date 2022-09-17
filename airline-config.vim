" vim-airline configuration
"



" Set column symbols
"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_symbols.colnr  = 'C'
let g:airline_symbols.linenr  = ' L'
let g:airline_symbols.maxlinenr  = ' '
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.notexists = '★'
" let g:airline_symbols. = ''
let g:airline_theme = 'bubblegum'
