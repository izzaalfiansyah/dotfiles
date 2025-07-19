return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    sections = {
      lualine_a = {
        {
          "searchcount",
          maxcount = 99,
          timeout = 100,
        },
      },
    },
  },
}
