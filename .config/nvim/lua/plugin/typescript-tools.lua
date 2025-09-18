local M = {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
}



function M.config()
  require("typescript-tools").setup({

  })
end


return M
