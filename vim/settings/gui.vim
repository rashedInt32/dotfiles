"Accidentally pressing Shift K will no longer open stupid man entry
noremap K <nop>
noremap <D-s> <nop>
" Wtf is Ex Mode anyways? lets check
nnoremap Q <nop>
" Configure backspace so it acts as it should act
set backspace=indent,eol,start
" Prevent cursor from moving to beginning of line when switching buffers
set nostartofline
"Always show current position
set ruler
"no beep
set visualbell
set noerrorbells
" Height of the command bar
set cmdheight=1
" A buffer becomes hidden when it is abandoned
set hid
" Set to auto read when a file is changed from the outside
set autoread
"set autowrite all
set autowriteall
" Set coplete methon
set complete=.,w,b,u

set wrap
set linebreak

"remove right scrollbar
set guioptions-=r
" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>




