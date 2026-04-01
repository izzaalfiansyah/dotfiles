local util = require("conform.util")

return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters["blade-formatter"] = {
      command = "blade-formatter",
      args = { "--stdin" },
      stdin = true,
      cwd = util.root_file({ "composer.json", "composer.lock" }),
    }

    opts.formatters["biome-check"] = {
      require_cwd = true,
    }

    opts.formatters_by_ft["blade"] = { "blade-formatter" }
    opts.formatters_by_ft["javascript"] = { "biome-check" }
    opts.formatters_by_ft["typescript"] = { "biome-check" }
    opts.formatters_by_ft["javascriptreact"] = { "biome-check" }
    opts.formatters_by_ft["typescriptreact"] = { "biome-check" }
    opts.formatters_by_ft["vue"] = { "biome-check" }
    opts.formatters_by_ft["svelte"] = { "biome-check" }
    opts.formatters_by_ft["astro"] = { "biome-check" }
    opts.formatters_by_ft["json"] = { "biome-check" }
    opts.formatters_by_ft["css"] = { "biome-check" }

    return opts
  end,
}
