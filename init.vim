" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
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

let $VIMFILELOCATION = substitute($MYVIMRC, "init.vim", "", "")

if has("win32") || has("win16") || has("win64")
  let s:one=1
"  echo "Windows: ", $VIMFILELOCATION
else
  let s:one=1
"  echo "linux: ". $VIMFILELOCATION
endif
" }}
let $VIMFILETOREAD = $VIMFILELOCATION . 'general.vim'
source $VIMFILETOREAD

let $VIMFILETOREAD = $VIMFILELOCATION . 'setcolors.vim'
source $VIMFILETOREAD

let $VIMPLUGINLOCATION = $VIMFILELOCATION . 'plugged'
"
" - Avoid using standard Vim directory names like 'plugin'
"echo $VIMPLUGINLOCATION
"
"---------------------------------------
call plug#begin($VIMPLUGINLOCATION)

let $VIMFILETOREAD = $VIMFILELOCATION . 'plugins.vim'
source $VIMFILETOREAD

call plug#end()
"---------------------------------------
"
let $VIMFILETOREAD = $VIMFILELOCATION . 'keys.vim'
source $VIMFILETOREAD

let $VIMFILETOREAD = $VIMFILELOCATION . 'line.vim'
source $VIMFILETOREAD

