return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = false,
    },
    explorer = {
      enabled = true,
      auto_close = true, -- disable auto-close when focus shifts
      hidden = true,
      ignored = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
      },
      -- other explorer options...
    },
    -- optionally configure picker behaviors:
    picker = {
      sources = {
        explorer = {
          auto_close = true, -- if you launch it via picker
          focus = "list", -- ensure it stays focused
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
