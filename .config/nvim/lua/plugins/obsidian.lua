return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)
    vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Obsidian: Open Note" })
    vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { desc = "Obsidian: Today Note" })
    vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Obsidian: Backlinks" })
    vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Obsidian: Quick Switch" })
    vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Obsidian: Search Notes" })
    vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Obsidian: New Note" })
    vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianFollowLink<CR>", { desc = "Obsidian: Follow Link" })
  end,
}
