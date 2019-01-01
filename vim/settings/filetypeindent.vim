
"indent and tab size for specific file
" Only do this part when compiled with support for autocommands
if has("autocmd")
      " Enable file type detection
      filetype on

      " Syntax of these languages is fussy over tabs Vs spaces
      autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
      autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

      " Customisations based on house-style (arbitrary)
      autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
      autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
      autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab
      autocmd FileType elixir  setlocal ts=2 sts=2 sw=2 noexpandtab
      autocmd FileType javascript setlocal omnifunc=tern#Complete
      autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

endif


