local M = {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
  	lazy = false,
}

function M.config()
    require "nvim-treesitter.configs".setup {
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "glsl",
          "lua",
          "python",
          "html",
          "css",
          "javascript",
          "typescript",
          "go",
          "json",
          "yaml",
          "gitignore",
          "dockerfile",
        },
        sync_install = true,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    }
end

return M
