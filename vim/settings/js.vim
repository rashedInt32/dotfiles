"------  Javascript Settings  ------
" vim jsx setting
let g:jsx_ext_required = 0
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_flow_exe = 'flow'
"Syntastic ignore error for js framework
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"@"]
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \" "]
"let g:syntastic_mode_map = { 'passive_filetypes': ['js'] }
let g:syntastic_debug = 0
let g:syntastic_html_checkers=['']

let g:vimjs#casesensistive = 1
" Enabled by default. flip the value to make completion matches case insensitive

let g:vimjs#smartcomplete = 1
" Disabled by default. Enabling this will let vim complete matches at any location
" e.g. typing 'ocument' will suggest 'document' if enabled.

let g:vimjs#chromeapis = 1
" Disabled by default. Toggling this will enable completion for a number of Chrome's JavaScript extension APIs


