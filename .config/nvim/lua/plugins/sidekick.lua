return {
  "folke/sidekick.nvim",
  lazy = false,
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
  enabled = false,
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
