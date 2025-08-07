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
          enabled = false,
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
    "RobertPietraru/bloc.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = { "dart" }, -- just active on dart file
    config = function()
      require("bloc").setup()

      local function get_name_path(type)
        local default_path = vim.fn.expand("%:p:h")
        local name = vim.fn.input(type .. " name: ")
        local path = vim.fn.input(type .. " path: ", default_path)
        path = path:sub(-1) == "/" and path or path .. "/"

        return name, path
      end

      vim.keymap.set("n", "<leader>rbc", function()
        local name, path = get_name_path("Cubit")
        require("bloc").create_cubit(name, path)
      end, { desc = "Create Cubit (Prompt)" })

      vim.keymap.set("n", "<leader>rbb", function()
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
        "<leader>rfg",
        "<cmd>FlutterFreezedGenForCurrentFile<CR>",
        desc = "Generate flutter freezed for the current file",
      },
      { "<leader>rft", "<cmd>FlutterFreezedInfoToggle<CR>", desc = "Toggle flutter freezed generation info" },
      { "<leader>rfq", "<cmd>FlutterFreezedStopGen<CR>", desc = "Stop generating flutter freezed files" },
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
