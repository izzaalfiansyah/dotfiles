return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets", "codeium.nvim", "L3MON4D3/LuaSnip" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "super-tab",
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
    snippets = { preset = "luasnip" },
    completion = { documentation = { auto_show = true } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer", "codeium" },
      providers = {
        codeium = { name = "Codeium", module = "codeium.blink", async = true },
      },
    },
  },
}
