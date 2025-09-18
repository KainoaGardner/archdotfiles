local M = {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "nvim-lua/plenary.nvim",
  },
}

M.servers = {
  -- "ts_ls",      -- TypeScript/JavaScript
  "gopls",      -- Go
  "lua_ls",     -- Lua
  "pyright",    -- Python
}

function M.config()
  require("mason").setup()

  require("mason-lspconfig").setup({
    ensure_installed = M.servers,
    automatic_installation = true,
  })
end

return M
