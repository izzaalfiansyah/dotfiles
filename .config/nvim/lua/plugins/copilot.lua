return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  enabled = false,
  opts = {
    suggestion = { enabled = true },
    panel = { enabled = true },
  },
}
