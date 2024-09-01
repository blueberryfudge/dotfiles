return {
  "zbirenbaum/copilot.lua",
  enabled = false,
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = false,
        enabled = false,
      },
      panel = {
        enabled = false,
        auto_refresh = true,
      },
    })
  end,
}
