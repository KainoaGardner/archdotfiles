local M = {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = { "hrsh7th/nvim-cmp" },
}

function M.config()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({
        check_ts = true, -- enable treesitter integration
        ts_config = {
            lua = { "string" },            -- don't add pairs inside lua strings
            javascript = { "template_string" }, -- skip pairs inside JS template strings
            java = false,                  -- disable TS checking for java
        },
    })

    -- integrate with nvim-cmp
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

return M

