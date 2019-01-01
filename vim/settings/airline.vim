" vim airline setting
if ! has("gui_running")
      let g:loaded_airline = 1

endif
" vim airline
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_left_sep= ' '
let g:airline_right_sep= ' '
"let g:airline_theme='solarized'
let g:airline_theme='luna'
"let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffers_label = '@'
set laststatus=2


