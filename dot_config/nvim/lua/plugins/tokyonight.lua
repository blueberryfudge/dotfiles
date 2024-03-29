return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
      on_colors = function(colors)
        -- colors.fg_gutter = "#5f626d"
        colors.border = "#5f626d"
        -- colors.blue = "#0cf7b8"
        colors.bg_statusline = ""
        colors.orange = "#e6c000"
        colors.green = "#1dd2af"
        colors.green1 = "#09c4ff" --blue
        -- colors.bg_float = ""
        -- colors.cyan = "#0cf7b8"
      end,
      on_highlights = function(hl)
        hl.LineNr = { fg = "#717582" }
        hl.CursorLineNr = { fg = "#0cf7b8" }
        hl.Comment = { fg = "#717582" }
        hl.CursorLine = { bg = "" }
        -- hl.Pmenu = { bg = "NONE" }
        -- hl.PmenuSel = { bg = "NONE", fg = "NONE" }
      end,
    },
  },
}
