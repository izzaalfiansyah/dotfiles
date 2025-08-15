return {
  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    opts = {
      modes = { insert = true, command = false, terminal = false },
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
    },
    config = function(_, opts)
      LazyVim.mini.pairs(opts)
    end,
  },
}
