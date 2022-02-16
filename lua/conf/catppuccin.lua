-- https://github.com/catppuccin/nvim

require("catppuccin").setup(
    {
        -- 透明背景
        transparent_background = vim.g.background_transparency,
        -- 使用终端背景色
        term_color = false,
        -- 代码样式
        styles = {
            comments = "italic",
            functions = "NONE",
            keywords = "NONE",
            strings = "NONE",
            variables = "NONE"
        },
        -- 为不同的插件统一样式风格
        integrations = {
            cmp = true,
            gitsigns = true,
            telescope = true,
            which_key = true,
            bufferline = true,
            markdown = true,
            ts_rainbow = true,
            hop = true,
            notify = true,
            indent_blankline = {
                enabled = true,
                colored_indent_levels = false
            },
            nvimtree = {
                enabled = true,
                show_root = false,
                -- 透明背景
                transparent_panel = vim.g.background_transparency,
            },
            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = "italic",
                    hints = "italic",
                    warnings = "italic",
                    information = "italic"
                },
                underlines = {
                    errors = "underline",
                    hints = "underline",
                    warnings = "underline",
                    information = "underline"
                }
            },
            -- 手动设置
            lsp_saga = false
        }
    }
)

-- 应用主题
vim.cmd([[colorscheme catppuccin]])

-- 高亮组风格统一
vim.cmd(
    [[
" 重命名边框
highlight link LspSagaRenameBorder FloatBorder
" 悬浮文档边框
highlight link LspSagaHoverBorder FloatBorder
" 悬浮文档分割线
highlight link LspSagaDocTruncateLine FloatBorder
" 代码诊断边框
highlight link LspSagaDiagnosticBorder FloatBorder
" 代码诊断分割线
highlight link LspSagaDiagnosticTruncateLine FloatBorder
" 函数签名背景和文字
highlight NormalFloat guifg=#D9E0EE guibg=#1E1E2E
]]
)
