return {
  -- Other plugins
  {
    "arnamak/stay-centered.nvim",
    enabled = false,
    config = function()
      require("stay-centered").setup()
    end,
  },
}