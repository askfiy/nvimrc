-- https://github.com/stevearc/aerial.nvim

local plugin_key = vim.u.keymap.set.aerial.plugin_set
require("aerial").setup(
    {
        min_width = 30,
        -- 目前 LSP 支持不是很好，所以用 treesitter 来代替解析工作
        -- backends = {"lsp", "treesitter", "markdown"}
        backends = {"treesitter", "markdown"},
        -- false 是显示所有的图标
        filter_kind = false,
        nerd_font = "auto",
        update_events = "TextChanged,InsertLeave",
        on_attach = function(bufnr)
            vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.aerial_toggle, "<cmd>AerialToggle!<CR>", {})
            vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.aerial_prev, "<cmd>AerialPrev<CR>", {})
            vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.aerial_next, "<cmd>AerialNext<CR>", {})
            vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.aerial_prev_up, "<cmd>AerialPrevUp<CR>", {})
            vim.api.nvim_buf_set_keymap(bufnr, "n", plugin_key.aerial_next_up, "<cmd>AerialNextUp<CR>", {})
        end
    }
)

local aerial = require("aerial")
print(aerial)
