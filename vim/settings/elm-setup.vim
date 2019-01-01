
" elm setup for vim
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1
let g:elm_setup_keybindings = 0
" syntastic setup for elm
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

autocmd BufWrite *.elm setlocal filetype=elm
autocmd BufWritePost *.elm silent execute '!elm-format --yes %' | edit! | setlocal filetype=elm | redraw!

" ycm for elm
let g:ycm_semantic_triggers = {
                  \ 'elm' : ['.'],
                  \}


