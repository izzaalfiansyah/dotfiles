return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      enabled = false,
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
        },
      },
    },
    terminal = {
      win = {
        position = "right",
        width = 0.23,
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
