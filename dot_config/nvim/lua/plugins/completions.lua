--return {
--  {
--    "hrsh7th/nvim-cmp",
--    event = "InsertEnter",
--    dependencies = {
--      "hrsh7th/cmp-buffer",
--      "hrsh7th/cmp-path",
--      "hrsh7th/cmp-nvim-lsp",
--      "hrsh7th/cmp-cmdline",
--      "onsails/lspkind.nvim",
--      "windwp/nvim-autopairs",
--      "L3MON4D3/LuaSnip",
--    },
--
--    config = function()
--      vim.cmd("highlight Pmenu guibg=NONE")
--      vim.cmd("highlight PmenuSbar guibg=NONE")
--      vim.cmd("highlight PmenuThumb guibg=NONE")
--      -- vim.opt.pumblend = 100
--      local cmp = require("cmp")
--      cmp.setup({
--
--        snippet = {
--          -- REQUIRED - you must specify a snippet engine
--          expand = function(args)
--            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
--          end,
--        },
--
--        mapping = cmp.mapping.preset.insert({
--          ["<Tab>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--        }),
--        sources = cmp.config.sources({
--          --  { name = "copilot", group_index = 2 },
--          { name = "nvim_lsp", group_index = 2 },
--          { name = "path", group_index = 2 },
--          { name = "luasnip", group_index = 2 },
--        }),
--      })
--    end,
--  },
--}
return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
      "windwp/nvim-autopairs",
      "L3MON4D3/LuaSnip",
    },

    config = function()
      vim.cmd("highlight Pmenu guibg=NONE")
      vim.cmd("highlight PmenuSbar guibg=NONE")
      vim.cmd("highlight PmenuThumb guibg=NONE")

      local cmp = require("cmp")

      cmp.setup({

        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },

        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp", group_index = 2 },
          { name = "path", group_index = 2 },
          { name = "luasnip", group_index = 2 },
        }),
      })

      -- Set up LSP for Go (gopls) with signatureHelp disabled
      require("lspconfig").gopls.setup({
        capabilities = vim.tbl_extend("keep", require("cmp_nvim_lsp").default_capabilities(), {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport = true,
                resolveSupport = {
                  properties = {
                    "documentation",
                    "detail",
                    -- Disable insertText for function signatures
                    "additionalTextEdits",
                  },
                },
                -- Disable the automatic insertion of function parameters
                insertTextMode = 1, -- Use InsertTextMode as Insert instead of Replace
              },
            },
          },
        }),
      })
    end,
  },
}
