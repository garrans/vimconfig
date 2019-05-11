" Many ideas and inclusions from the following: 
"
" https://dougblack.io/words/a-good-vimrc.html
"
"
"
"
let mapleader=","       " leader is comma

" jk is escape
inoremap jk <esc>


map <F2> :NERDTreeToggle<CR>

" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" this allows the use of <Ctrl><Shift>-v to paste while in insert mode

set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
