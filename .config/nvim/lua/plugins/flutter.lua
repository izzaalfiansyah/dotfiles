return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional, UI picker
      "nvimtools/none-ls.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          cmd = { "dart", "language-server", "--protocol=lsp" },
        },
        ui = {
          border = "rounded",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
          flutter_path = "flutter", -- Jika flutter tidak ada di PATH, beri path absolut
        },
      })
    end,
    ft = "dart",
  },
  {
    "RobertPietraru/bloc.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- pastikan dependensi terpenuhi
    },
    ft = { "dart" }, -- hanya aktif di file dart
    config = function()
      require("bloc").setup()

      local function get_name_path(type)
        local default_path = vim.fn.expand("%:p:h")
        local name = vim.fn.input(type .. " name: ")
        local path = vim.fn.input(type .. " path: ", default_path)
        path = path:sub(-1) == "/" and path or path .. "/"

        return name, path
      end

      vim.keymap.set("n", "<leader>fbc", function()
        local name, path = get_name_path("Cubit")
        require("bloc").create_cubit(name, path)
      end, { desc = "Create Cubit (Prompt)" })

      vim.keymap.set("n", "<leader>fbb", function()
        local name, path = get_name_path("Bloc")
        require("bloc").create_bloc(name, path)
      end, { desc = "Create Bloc (Prompt)" })
    end,
  },
  {
    "rithikjain/flutter-freezed.nvim",
    dependencies = {
      "L3MON4D3/LuaSnip",
    },
    lazy = false,
    keys = {
      {
        "<leader>gf",
        "<cmd>FlutterFreezedGenForCurrentFile<CR>",
        desc = "Generate flutter freezed for the current file",
      },
      { "<leader>gi", "<cmd>FlutterFreezedInfoToggle<CR>", desc = "Toggle flutter freezed generation info" },
      { "<leader>gx", "<cmd>FlutterFreezedStopGen<CR>", desc = "Stop generating flutter freezed files" },
    },
  },
  {
    "akinsho/pubspec-assist.nvim",
    requires = "plenary.nvim",
    config = function()
      require("pubspec-assist").setup({})
    end,
  },
}
