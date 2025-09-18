local M = {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
    cmd = { "NvimTreeToggle", "NvimTreeFindFileToggle", "NvimTreeCollapse", "NvimTreeRefresh" },
}

function M.config()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
        view = { width = 35, relativenumber = true },
        renderer = {
            indent_markers = { enable = true },
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
                    },
                },
            },
        },
        actions = { open_file = { window_picker = { enable = false } } },
        filters = { custom = { ".DS_Store" } },
        git = { ignore = false },
    })
end

M.toggle = "<cmd>NvimTreeToggle<CR>"
M.find_file = "<cmd>NvimTreeFindFileToggle<CR>"
M.collapse = "<cmd>NvimTreeCollapse<CR>"
M.refresh = "<cmd>NvimTreeRefresh<CR>"

return M
