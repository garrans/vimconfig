
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
"
"


source $HOME\AppData\Local\nvim\general.vim
source $HOME\AppData\Local\nvim\setcolors.vim

" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/AppData/Local/nvim/plugged')

source $HOME\AppData\Local\nvim\plugins.vim

call plug#end()

source $HOME\AppData\Local\nvim\keys.vim
source $HOME\AppData\Local\nvim\line.vim



