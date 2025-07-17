return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 100,
        virt_text_pos = "eol",
      },
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

      -- stylua: ignore start
      map("n", "]h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "next hunk")
      map("n", "[h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "prev hunk")
      map("n", "]h", function() gs.nav_hunk("last") end, "last hunk")
      map("n", "[h", function() gs.nav_hunk("first") end, "first hunk")
      map({ "n", "v" }, "<leader>ghs", ":gitsigns stage_hunk<cr>", "stage hunk")
      map({ "n", "v" }, "<leader>ghr", ":gitsigns reset_hunk<cr>", "reset hunk")
      map("n", "<leader>ghs", gs.stage_buffer, "stage buffer")
      map("n", "<leader>ghu", gs.undo_stage_hunk, "undo stage hunk")
      map("n", "<leader>ghr", gs.reset_buffer, "reset buffer")
      map("n", "<leader>ghp", gs.preview_hunk_inline, "preview hunk inline")
      map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "blame line")
      map("n", "<leader>ghb", function() gs.blame() end, "blame buffer")
      map("n", "<leader>ghd", gs.diffthis, "diff this")
      map("n", "<leader>ghd", function() gs.diffthis("~") end, "diff this ~")
      map({ "o", "x" }, "ih", ":<c-u>gitsigns select_hunk<cr>", "gitsigns select hunk")
      end,
    },
  },
}
