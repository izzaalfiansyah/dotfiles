return {
  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.del("i", "<C-k>")
    end,
  },
}
