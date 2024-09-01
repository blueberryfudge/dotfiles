return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        -- config
        config = {
          mru = { enable = false, limit = 3, label = "Recent Files", cwd_only = true },
          footer = {},
          header = {
            "Get money",
          },
          packages = { enable = true },
          shortcut = {
            { desc = "Update", group = "@property", action = "Lazy update", key = "U" },
            { desc = "Install", group = "@property", action = "Lazy install", key = "I" },
          },
          project = { enable = false },
        },
      })
    end,
  },
}
