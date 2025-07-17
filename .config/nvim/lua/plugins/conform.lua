local util = require("conform.util")

return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- tambahkan formatter blade
    opts.formatters["blade-formatter"] = {
      command = "blade-formatter",
      args = { "--stdin" },
      stdin = true,
      cwd = util.root_file({ "composer.json", "composer.lock" }),
    }

    -- set blade formatter
    opts.formatters_by_ft["blade"] = { "blade-formatter" }
    return opts
  end,
}
