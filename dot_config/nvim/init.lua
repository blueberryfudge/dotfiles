-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.fn.setenv("GOPATH", vim.fn.expand("~/.go"))
vim.fn.setenv("GOBIN", vim.fn.getenv("GOPATH") .. "/bin")
