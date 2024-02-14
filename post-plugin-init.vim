" Many ideas and inclusions from the following: 
"
" https://dougblack.io/words/a-good-vimrc.html
"
"
"
"
let mapleader=","       " leader settings
let g:EasyMotion_leader_key = '<Leader>'

" jk is escape
inoremap jk <esc>

" sjg map <Ctrl-i> to insert a single character
" this is is added line
" second added line from cmd prompt
" suggested in https://superuser.com/questions/581572/insert-single-character-in-vim
nnoremap <C-i> i_<Esc>r

" F3 to toggle search highlight
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>


"NERDTree Items
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
set modifiable

" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "0123456789abcdefghijklmnopqrstuvwxyz*+.<CR>

" this allows the use of <Ctrl><Shift>-v to paste while in insert mode

set clipboard+=unnamed  " use the clipboards of vim and win

"checkhealth recommended not setting this
"set paste               " Paste from a windows or from vim

set go+=a               " Visual selection automatically copied to the clipboard
"
" Set ColorScheme
" =====================
colorscheme slate

"
" UltiSnips Config
" =====================
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"


