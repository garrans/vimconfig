return {
  "tpope/vim-obsession",
  config = function()
    vim.cmd([[
      autocmd VimEnter * nested :Obsess
      autocmd VimLeave * :Obsess!
    ]])
  end,
}
