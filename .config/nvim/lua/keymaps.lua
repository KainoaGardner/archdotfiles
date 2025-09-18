vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>-", "<C-x>")
vim.keymap.set("n", "<leader>=", "<C-a>")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>")

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

--telescope keymaps
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", function()
   builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

--nvim-tree keymaps
local nvimtree = require("nvim-tree")

-- Toggle NvimTree
vim.keymap.set("n", "<leader>ee", function()
    vim.cmd("NvimTreeToggle")
end, { desc = "Toggle file explorer" })

vim.keymap.set("n", "<leader>ef", function()
    vim.cmd("NvimTreeFindFileToggle")
end, { desc = "Toggle file explorer on current file" })

vim.keymap.set("n", "<leader>ec", function()
    vim.cmd("NvimTreeCollapse")
end, { desc = "Collapse file explorer" })

vim.keymap.set("n", "<leader>er", function()
    vim.cmd("NvimTreeRefresh")
end, { desc = "Refresh file explorer" })



-- lsp keymaps
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_next)
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename)

vim.keymap.set("n", "<leader>sf", function()
  vim.cmd("set filetype=typescript")
  print("Filetype set to TypeScript")
end, { desc = "Set filetype to TypeScript" })

