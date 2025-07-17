return {
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   opts = {
  --     transparent_background = true,
  --   },
  -- },
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
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
