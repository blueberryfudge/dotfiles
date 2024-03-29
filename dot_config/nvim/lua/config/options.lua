-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options he

vim.o.termguicolors = true

vim.cmd("highlight Pmenu guibg=NONE")
vim.opt.pumblend = 0

vim.api.nvim_create_autocmd("VimResized", {
  group = vim.api.nvim_create_augroup("WinResize", { clear = true }),
  pattern = "*",
  command = "wincmd =",
  desc = "Auto resize windows on terminal buffer resize",
})
