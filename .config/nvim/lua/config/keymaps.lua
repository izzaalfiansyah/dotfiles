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
vim.keymap.set("n", "q", "<Nop>", opts)

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

-- Open telescope
vim.keymap.set("n", "<C-p>", LazyVim.pick("files"), opts)
vim.keymap.set("v", "<C-p>", LazyVim.pick("files"), opts)
vim.keymap.set("i", "<C-p>", LazyVim.pick("files"), opts)

-- Close buffer
vim.keymap.set("n", "<C-w>", ":bd<CR>", opts)
vim.keymap.set("v", "<C-w>", ":bd<CR>", opts)
vim.keymap.set("i", "<C-w>", ":bd<CR>", opts)

-- Code action
vim.keymap.set("n", "<C-.>", vim.lsp.buf.code_action, opts)
vim.keymap.set("v", "<C-.>", vim.lsp.buf.code_action, opts)
vim.keymap.set("i", "<C-.>", vim.lsp.buf.code_action, opts)

-- Quit
vim.keymap.set("n", "<C-q>", ":qa<CR>", opts)
vim.keymap.set("v", "<C-q>", ":qa<CR>", opts)
vim.keymap.set("i", "<C-q>", ":qa<CR>", opts)

-- Undo & Redo
vim.keymap.set("n", "<C-z>", ":undo<CR>", opts)
vim.keymap.set("v", "<C-z>", ":undo<CR>", opts)
vim.keymap.set("i", "<C-z>", ":undo<CR>", opts)
vim.keymap.set("n", "<C-S-z>", ":redo<CR>", opts)
vim.keymap.set("v", "<C-S-z>", ":redo<CR>", opts)
vim.keymap.set("i", "<C-S-z>", ":redo<CR>", opts)
