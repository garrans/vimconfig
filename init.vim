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
source general.vim
source setcolors.vim
"
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('plugged')
source plugins.vim
"
"
call plug#end()
"
"
source keys.vim
source line.vim

