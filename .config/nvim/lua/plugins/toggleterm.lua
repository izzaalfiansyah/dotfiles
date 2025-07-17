return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local toggleterm = require("toggleterm")
    local Terminal = require("toggleterm.terminal").Terminal

    toggleterm.setup({
      direction = "horizontal",
      start_in_insert = true,
    })

    -- Define multiple horizontal terminals with different IDs
    local hterm1 = Terminal:new({ direction = "horizontal", hidden = true, count = 1 })
    local hterm2 = Terminal:new({ direction = "horizontal", hidden = true, count = 2 })
    local hterm3 = Terminal:new({ direction = "horizontal", hidden = true, count = 3 })
    local hterm4 = Terminal:new({ direction = "horizontal", hidden = true, count = 4 })
    local hterm5 = Terminal:new({ direction = "horizontal", hidden = true, count = 5 })

    vim.keymap.set("n", "<leader>t", "", { desc = "Toggle Terminal" })

    -- Keybindings to toggle them independently
    vim.keymap.set("n", "<leader>t1", function()
      hterm1:toggle()
    end, { desc = "Terminal 1" })
    vim.keymap.set("n", "<leader>t2", function()
      hterm2:toggle()
    end, { desc = "Terminal 2" })
    vim.keymap.set("n", "<leader>t3", function()
      hterm3:toggle()
    end, { desc = "Terminal 3" })
    vim.keymap.set("n", "<leader>t4", function()
      hterm4:toggle()
    end, { desc = "Terminal 4" })
    vim.keymap.set("n", "<leader>t5", function()
      hterm5:toggle()
    end, { desc = "Terminal 5" })
  end,
}
