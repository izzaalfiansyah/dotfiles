return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    image = {
      enabled = true,
      force = true,
    },
    explorer = {
      enabled = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
      },
    },
    picker = {
      sources = {
        explorer = {
          ignored = true,
          hidden = true,
        },
      },
    },
  },
}
