" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-buffer-line
Plug 'bling/vim-bufferline'


" vim-airline
Plug 'vim-airline/vim-airline'


" Custom plugins...
" EasyMotion - Allows <leader><leader>(b|e) to jump to (b)eginning or (end)
" of words.
Plug 'easymotion/vim-easymotion'
" Ctrl-P - Fuzzy file search
Plug 'kien/ctrlp.vim'

" Neomake build tool (mapped below to <c-b>)
Plug 'benekastah/neomake'

" Autocomplete for python
Plug 'davidhalter/jedi-vim'

" Colorscheme Zenburn
Plug 'jnurmine/Zenburn'

" Colorscheme solarized
Plug 'altercation/vim-colors-solarized'

"Xterm Color Table
Plug 'guns/xterm-color-table.vim'

" Tab completion
Plug 'ervandew/supertab'
