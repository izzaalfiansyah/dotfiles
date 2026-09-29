return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = false,
    },
    image = {
      enabled = true,
      force = true,
    },
    explorer = {
      enabled = true,
      auto_close = false, -- disable auto-close when focus shifts
      hidden = true,
      ignored = true,
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
          auto_close = false, -- if you launch it via picker
          focus = "list", -- ensure it stays focused
          hidden = true,
          ignored = true,
          layout = {
            layout = {
              width = 28,
            },
          },
        },
      },
    },
    terminal = {
      win = {
        position = "right",
        width = 50,
      },
    },
    lazygit = {
      win = {
        position = "float",
        width = 0.8,
      },
    },
  },
  keys = {
    {
      "<leader>gi",
      function()
        Snacks.picker.gh_issue()
      end,
      desc = "GitHub Issues (open)",
    },
    {
      "<leader>gI",
      function()
        Snacks.picker.gh_issue({ state = "all" })
      end,
      desc = "GitHub Issues (all)",
    },
    {
      "<leader>gp",
      function()
        Snacks.picker.gh_pr()
      end,
      desc = "GitHub Pull Requests (open)",
    },
    {
      "<leader>gP",
      function()
        Snacks.picker.gh_pr({ state = "all" })
      end,
      desc = "GitHub Pull Requests (all)",
    },
  },
}
