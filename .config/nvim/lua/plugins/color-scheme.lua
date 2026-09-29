return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark",
    },
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
