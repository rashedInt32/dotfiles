set nocompatible              " be iMproved, required


" Some setting seperate from main vim file, most of the time those config was
" untouched

so ~/.vim/plugins.vim
let $PATH = '/usr/local/bin:'.$PATH


set rtp+=~/.fzf


" Some usefull key binding and plugin trigger key binding
let mapleader=","                       " Leader key
let g:mapleader=","

"change esc key to double semicolon
":imap jj <Esc>

"Efficient saving
nmap <leader>w :w!<cr>

"toggle fonding
nnoremap <space> za

" move to beginning/end of line
map E $
map B ^

map ; :

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" highlight last inserted text
nnoremap gV `[v`]

" open ag.vim
nnoremap <leader>a :Ag

" toggle gundo
nnoremap <leader>z :GundoToggle<CR>

" Command Left/h & Right/l cycle between buffers
map <D-j> gT
map <D-k> gt

" Real time search and replace with preview
nnoremap <C-s> :OverCommandLine<CR>%s/

" vim mark multiple edit like sublime
let g:mark_multiple_trigger = "<C-n>"

"auto closing tag configure
let delimitMate_expand_cr=2

" set paste mode
set pastetoggle=<F2>


" Vue file html/css/js file config
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" Emmet plugin and exicution mode
let g:user_emmet_install_global = 0
let g:user_emmet_mode='a'
let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,php,sass,scss,less,javascript.jsx EmmetInstall



let g:buftabs_only_basename=1
" map for jampint window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"set auto folding code disbable
:setlocal foldmethod=manual
set foldmethod=indent
set nofoldenable
set foldlevel=99




" Unite plugin setting
" recently edited file can be search by
nnoremap <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>
" open buffer can be navigate by this
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>


" NERDTreeToggle
noremap <Leader>t :NERDTreeToggle<cr>
noremap <Leader>r :NERDTreeMirror<cr>
:set guioptions-=L
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.vim$', '\.swp$' , '\.pyc$']


" neocomplete configure
"let g:neocomplete#enable_at_startup = 1
let g:cssColorVimDoNotMessMyUpdatetime = 1


"vim destraction mode mapping
nnoremap dm :Goyo<CR>
let g:goyo_width = 100
let g:goyo_height = 90


" next indentation setup
nnoremap [ :IndentationGoUp<CR>
nnoremap ] :IndentationGoDown<CR>


" move plugin settin
let g:move_key_modifier = 'C'
let g:move_map_keys = 0
nmap <C-i> <Plug>MoveLineUp
nmap <C-m> <Plug>MoveLineDown
vmap <C-i> <Plug>MoveBlockUp
vmap <C-m> <Plug>MoveBlockDown


" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


" Nerdtree minimal ui
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


" Matching word highlighting
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>


" Ultisnips requirement
let g:UltiSnipsEditSplit="vertical"
" Ultisnips  Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"















"font and line height
set linespace=8
"set guifont=operator\ mono\ light:h16
"set guifont=Monoid\ Retina:h12
"set guifont=input\ mono:h16
set renderoptions=type:directx
set encoding=utf-8
set macligatures
"set guifont=mononoki\ Nerd\ Font\ Mono:h20
set guifont=Dank\ Mono:h20


if exists('+colorcolumn')
  " Highlight up to 255 columns (this is the current Vim max) beyond 'textwidth'
  let &l:colorcolumn='+' . join(range(0, 254), ',+')
endif

"color shceme configuration
syntax enable
set t_Co=256

if (has("termguicolors"))
    set termguicolors
endif
let g:onedark_termcolors=256
set background=dark
"colorscheme solarized
colorscheme stellarized_dark
"colorscheme stellarized_dark
"colorscheme onedark
"colorscheme vimterial_dark
highlight LineNr guibg=bg
hi vertsplit guifg=bg guibg=bg
set foldcolumn=1
hi foldcolumn guibg=bg
hi CursorLineNR guibg=bg
"hi CursorColumn guibg=bg
hi CursorLine guibg=bg
highlight Comment gui=italic
highlight htmlArg gui=italic
"highlight htmlArg guifg=#b05c67
highlight htmlTag gui=italic
"highlight htmlTag gui=none
highlight htmlArg cterm=italic
highlight Cursor guifg=#f9f9f9  guibg=#b2785c

" Make it so the ugly NonText" characters are hidden at the end of a file
" (the ~)

:hi NonText guifg=bg



"highlight javaScript guifg=#BB80B3
"highlight javaScript guifg=#9a95d7

"colorscheme solarized, sourcerer, phoenix, one-dark, hybrid_material,
"gotham256, heroku, spacegray, inori, itg_flat, railscasts, cabin, Hilal, OceanicNext




"easy motion setup
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>f <Plug>(easymotion-j)
map <Leader>d <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)


"search word
let g:ackprg = 'ag --nogroup --nocolor --column'
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"

let g:grepper = {
    \ 'tools': ['ag', 'git', 'grep'],
    \ 'open':  0,
    \ 'jump':  1,
    \ }



" How should we execute the search?
" --heading and --stats are required!
let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'







" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]



" Quickly open/reload vim
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <silent> <leader>es :source $MYVIMRC<CR>


nnoremap <C-p> :CommandT<CR>
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn,*/.jpg,*/.png,*/.gif,*/.jpeg,*/node_modules

let g:CommandTWildIgnore=&wildignore . ",*/bower_components"


" trying to setup ycm for completion
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1 }


"let g:php_syntax_extensions_enabled


set rubydll=/usr/local/lib/libruby.2.5.dylib
set luadll=/usr/local/Cellar/lua52/5.2.1/lib/liblua.dylib

set shortmess+=c



" Ale linter settings
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" enable completiong
" Gutter open
" Ale sign

let g:vue_disable_pre_processors=1


so ~/.vim/settings/ctrlp.vim
"so ~/.vim/settings/js.vim
so ~/.vim/settings/airline.vim
so ~/.vim/settings/haskell.vim
so ~/.vim/settings/globalindent.vim
"so ~/.vim/settings/list.vim
so ~/.vim/settings/filetypeindent.vim
so ~/.vim/settings/nerdcmt.vim
so ~/.vim/settings/elm-setup.vim
so ~/.vim/settings/gui.vim
so ~/.vim/settings/trailingspace.vim
so ~/.vim/settings/rainbowparen.vim
