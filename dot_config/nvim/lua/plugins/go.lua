return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        lsp_cfg = {
          settings = {
            gopls = {
              hints = {
                enabled = false, -- Disable inlay hints
                assignVariableTypes = false,
              },
            },
          },
        },
      })
    end,
    event = { "InsertEnter *.go" },
    ft = { "go", "gomod" },
    -- build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
}
