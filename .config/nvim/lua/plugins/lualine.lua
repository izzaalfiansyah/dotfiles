return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "catppuccin",
    sections = {
      lualine_x = {
        "searchCount",
        "filetype",
        "encoding",
      },
    },
  },
}
