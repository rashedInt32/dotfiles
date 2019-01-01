
" Set wildignore file for ctrl-p plugin search file
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,*/.jpg,*/.png,*/.gif,*/.jpeg,*/build,
let g:ctrlp_working_path_mode = 0
" ctrl p custom ignore folder and file
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir', 'tmux'] "
let g:ctrlp_custom_ignore = 'node_modules\|elm-stuff\|DS_Store\|git\|png\|jpg\|gif\|svg\|vendors'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" open file new tab
let g:ctrlp_prompt_mappings = {
      \ 'AcceptSelection("e")': ['<c-t>'],
      \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
      \ }
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <D-p> :CtrlP<CR>


