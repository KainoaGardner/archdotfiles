local M = {
  'VonHeikemen/lsp-zero.nvim',
  branch = "v1.x",
  dependencies = {
    -- LSP support
    'neovim/nvim-lspconfig',

    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },
}

function M.config()
  local lsp = require("lsp-zero")
  local lspconfig = require("lspconfig")
  local util = require("lspconfig.util")

  lsp.preset("recommended")

  -- Custom TypeScript config
  lsp.configure("ts_ls", {
    root_dir = function(fname)
      return util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git")(fname)
        or util.path.dirname(fname)
    end,
  })

  -- Custom Lua config
  lsp.configure("lua_ls", {
    root_dir = function()
      return vim.fn.expand("~/.config/nvim")
    end,
    settings = {
      Lua = {
        workspace = {
          checkThirdParty = false,
          library = vim.api.nvim_get_runtime_file("", true),
        },
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  })

  lsp.setup()
end

return M
