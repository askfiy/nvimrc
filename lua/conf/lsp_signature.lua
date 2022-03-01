-- https://github.com/ray-x/lsp_signature.nvim

local plugin_key = vim.u.keymap["lsp_signature"].plugin_set

require("lsp_signature").setup(
    {
        bind = true,
        -- 边框样式
        handler_opts = {
            -- double、rounded、single、shadow、none
            border = "rounded"
        },
        -- 自动触发
        floating_window = false,
        -- 绑定按键
        toggle_key = plugin_key.toggle_key,
        -- 虚拟提示关闭
        hint_enable = false,
        -- 正在输入的参数将如何突出显示
        hi_parameter = "LspSignatureActiveParameter"
    }
)
