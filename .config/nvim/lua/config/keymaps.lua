local opts = { noremap = true, silent = true }

-- Ignore dotfiles on telescope
-- vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files({
--     hidden = true,
--     no_ignore = true,
--   })
-- end, { desc = "Find files (+dotfiles, +ignored)" })
--
-- vim.keymap.set("n", "<leader><space>", function()
--   require("telescope.builtin").find_files({
--     hidden = true,
--     no_ignore = true,
--   })
-- end, { desc = "Find files (include dotfiles & ignored)" })

-- Exit insert, visual, and terminal mode using jk
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode with qq", noremap = true, silent = true })

-- Keymap for set attribute from object and set array on php
-- vim.keymap.set("i", ",,", "->", { desc = "Type -> in insert mode", noremap = true })
-- vim.keymap.set("i", ";;", "=>", { desc = "Type => in insert mode", noremap = true })

-- Selection
vim.keymap.set("n", "<C-a>", "ggVG")

-- Save File
-- vim.keymap.set("n", "<leader>fs", vim.cmd.write, { desc = "Save file" })
vim.keymap.set("n", "<C-s>", vim.cmd.write, { desc = "Save file" })
vim.keymap.set("i", "<C-s>", vim.cmd.write, { desc = "Save file" })
vim.keymap.set("v", "<C-s>", vim.cmd.write, { desc = "Save file" })

-- Close Tab
-- vim.keymap.set("n", "<leader>fw", ":bd<CR>", { desc = "Delete buffer" })

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
