" Specify a directory for plugins
" - For Neovim: ~/.
" 
" - for Neovim Windows init.vim .... 
"
"       init.vim - make this one specific for each OS
"                - start plug/begin
"            
"       general.vim - general items
"       plugins contains plugin items
"       keys - keyboard mapping commands
"       line.vim - line mods not contained in general. 
"
"" adjust configuration for such hostile environment as Windows {{{

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


let $VIMFILELOCATION = substitute($MYVIMRC, "init.vim", "", "")

if has("win32") || has("win16") || has("win64")
  let s:one=1
  let s:two=2
  "echo "Windows: ". $VIMFILELOCATION
else
  let s:one=1
  "echo "linux: ". $VIMFILELOCATION
endif
" }}

let $VIMFILETOREAD = $VIMFILELOCATION . 'pre-plugin-init.vim'
"echo "Sourcing: ". $VIMFILETOREAD
source $VIMFILETOREAD

let $VIMPLUGINLOCATION = $VIMFILELOCATION . 'plugged'
"
" - Avoid using standard Vim directory names like 'plugin'
"echo "VimPlugin Location". $VIMPLUGINLOCATION
call plug#begin($VIMPLUGINLOCATION)

source $VIMFILELOCATION/plugins.vim

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


call plug#end()


let $VIMFILETOREAD = $VIMFILELOCATION . 'setcolors.vim'
source $VIMFILETOREAD
"
"
let $VIMFILETOREAD = $VIMFILELOCATION . 'post-plugin-init.vim'
source $VIMFILETOREAD
"
" ==============================================================================
" Start of DEIN suggested approach
"
"
if &compatible
  set nocompatible " Be iMproved
endif
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


" Suggested Plugins ......
"
"
"  	call dein#add('roxma/nvim-yarp')
"	call dein#add('roxma/vim-hug-neovim-rpc')

"	call dein#add('Shougo/neosnippet.vim')
"	call dein#add('Shougo/neosnippet-snippets')

" Required:
filetype plugin indent on
syntax enable


