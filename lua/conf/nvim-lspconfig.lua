-- https://github.com/neovim/nvim-lspconfig

-- 诊断样式定制
vim.diagnostic.config(
    {
        virtual_text = {
            prefix = "●",
            source = "always"
        },
        float = {
            source = "always"
        },
        update_in_insert = false
    }
)
