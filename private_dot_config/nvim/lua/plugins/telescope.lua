return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    },
  },
}
