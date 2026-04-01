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
          color = {
            enabled = true,
            background = true,
            foreground = true,
          },
          cmd = { "dart", "language-server", "--protocol=lsp" },
        },
        ui = {
          border = "rounded",
          notification_style = "native",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = false,
          flutter_path = "flutter", -- absolute path if flutter not detected
        },
      })

      vim.keymap.set("n", "<leader>rs", ":FlutterRun<cr>", { desc = "Flutter Run" })
      vim.keymap.set("n", "<leader>rr", ":FlutterReload<cr>", { desc = "Flutter Reload" })
      vim.keymap.set("n", "<leader>rR", ":FlutterRestart<cr>", { desc = "Flutter Restart" })
      vim.keymap.set("n", "<leader>rq", ":FlutterQuit<cr>", { desc = "Flutter end session" })
      vim.keymap.set("n", "<leader>rl", ":FlutterLogToggle<cr>", { desc = "Flutter toggle log" })
      vim.keymap.set("n", "<leader>rc", ":FlutterLogClear<cr>", { desc = "Flutter clear log" })
      vim.keymap.set("n", "<leader>ro", ":FlutterOutlineToggle<cr>", { desc = "Flutter toggle outline" })
      vim.keymap.set("n", "<leader>rd", ":FlutterDevices<cr>", { desc = "Flutter devices" })
    end,
    ft = "dart",
  },
  {
    "wa11breaker/flutter-bloc.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = {
      bloc_type = "default", -- Choose from: 'default', 'equatable', 'freezed'
      use_sealed_classes = false,
      enable_code_actions = true,
    },
    ft = { "dart" },
    config = function()
      vim.keymap.set(
        "n",
        "<leader>rbc",
        "<cmd>lua require('flutter-bloc').create_cubit()<cr>",
        { desc = "Create Cubit (Prompt)" }
      )
      vim.keymap.set(
        "n",
        "<leader>rbb",
        "<cmd>lua require('flutter-bloc').create_bloc()<cr>",
        { desc = "Create Bloc (Prompt)" }
      )
    end,
  },
  {
    "rithikjain/flutter-freezed.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "L3MON4D3/LuaSnip",
    },
    lazy = false,
    keys = {
      {
        "<leader>rfg",
        "<cmd>FlutterFreezedGenForCurrentFile<CR>",
        desc = "Generate flutter freezed for the current file",
      },
      { "<leader>rft", "<cmd>FlutterFreezedInfoToggle<CR>", desc = "Toggle flutter freezed generation info" },
      { "<leader>rfq", "<cmd>FlutterFreezedStopGen<CR>", desc = "Stop generating flutter freezed files" },
    },
  },
}
