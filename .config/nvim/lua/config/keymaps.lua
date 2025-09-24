local opts = { noremap = true, silent = true }

-- Exit from a mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode with esc", noremap = true, silent = true })

-- Selection
vim.keymap.set("n", "<C-a>", "ggVG")

-- Save File
vim.keymap.set("n", "<C-s>", vim.cmd.write, { desc = "Save file" })
vim.keymap.set("i", "<C-s>", vim.cmd.write, { desc = "Save file" })
vim.keymap.set("v", "<C-s>", vim.cmd.write, { desc = "Save file" })

-- Set File Type
vim.keymap.set("n", "<leader>sf", function()
  vim.ui.input({ prompt = "Set filetype: " }, function(input)
    if input then
      vim.cmd("set filetype=" .. input)
    end
  end)
end, { desc = "Change Filetype" })

-- Disable recording typing
vim.keymap.set("n", "q", "<Nop>", { noremap = true, silent = true })

-- Codeium
vim.keymap.set("n", "<leader>acc", ":Codeium Chat<CR>", { desc = "Codeium Chat" })
vim.keymap.set("n", "<leader>act", ":Codeium Toggle<CR>", { desc = "Codeium Toggle" })
vim.keymap.set("n", "<leader>aca", ":Codeium Auth<CR>", { desc = "Codeium Auth" })

-- Copy and Cut
vim.keymap.set("n", "<C-c>", "+yy", opts)
vim.keymap.set("v", "<C-c>", "+y")
vim.keymap.set("n", "<C-x>", "+dd", opts)
vim.keymap.set("v", "<C-x>", "+d")

-- Paste
vim.keymap.set("n", "<C-v>", '"+p', opts)
vim.keymap.set("v", "<C-v>", '"+p', opts)
vim.keymap.set("i", "<C-v>", "<C-r>+", opts)
