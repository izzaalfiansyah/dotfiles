return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      emmet_language_server = {
        filetypes = {
          "html",
          "css",
          "scss",
          "sass",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "svelte",
          "vue",
          "vue-html",
          "xml",
          "php",
          "blade",
        },
      },
      tailwindcss = {
        filetypes_exclude = { "markdown" },
        filetypes_include = {},
      },
      volar = {
        init_options = {
          vue = {
            hybridMode = true,
          },
        },
      },
    },
  },
}
