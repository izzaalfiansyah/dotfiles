return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "html",
        "php",
        "javascript",
        "sql",
        "python",
        "typescript",
        "vue",
        "css",
        "json5",
        "rust",
        "ron",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "scss",
        "ninja",
        "rst",
        "markdown",
        "markdown_inline",
        "yaml",
        "dart",
        -- "http",
        -- "graphlql",
        -- "prettier",
      },
      autotag = {
        enable = true,
      },
    },
    config = function(_, opts)
      opts.indent = {
        enable = true,
      }

      require("nvim-treesitter.configs").setup(opts)

      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
      })

      ---@class parser_config
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }

      vim.filetype.add({
        pattern = {
          [".*%.blade%.php"] = "blade",
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    init = function()
      -- Disable entire built-in ftplugin mappings to avoid conflicts.
      -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
      vim.g.no_plugin_maps = true

      -- Or, disable per filetype (add as you like)
      -- vim.g.no_python_maps = true
      -- vim.g.no_ruby_maps = true
      -- vim.g.no_rust_maps = true
      -- vim.g.no_go_maps = true
    end,
    config = function()
      -- put your config here
    end,
  },
}
