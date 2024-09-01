return {
  "f-person/git-blame.nvim",
  event = { "InsertEnter" },

  config = function()
    require("gitblame").setup({
      enabled = false,
    })
  end,
}
