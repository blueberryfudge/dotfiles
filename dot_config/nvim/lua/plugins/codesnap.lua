return {
  {
    "mistricky/codesnap.nvim",
    enabled = false,
    event = { "InsertEnter" },
    lazy = true,
    build = "make",
    cmd = "CodeSnapPreviewOn",
    opts = {
      mac_window_bar = true,
      bg_theme = "sea",
      title = "",
      watermark = "",
      code_font_family = "CaskaydiaCove Nerd Font",
    },
    config = function(_, opts)
      require("codesnap").setup(opts)
    end,
  },
}
