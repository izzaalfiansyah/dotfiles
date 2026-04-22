return {
  "folke/sidekick.nvim",
  lazy = false,
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
  opts = {
    -- add any options here
    cli = {
      mux = {
        backend = "zellij",
        enabled = true,
      },
    },
  },
}
