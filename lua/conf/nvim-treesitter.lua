-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/p00f/nvim-ts-rainbow
-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring

local plugin_key = vim.u.keymap["nvim-treesitter"].plugin_set

require("nvim-treesitter.configs").setup(
    {
        -- 安装的高亮支持来源
        ensure_installed = "maintained",
        -- 同步下载高亮支持
        sync_install = false,
        -- 高亮相关
        highlight = {
            -- 启用高亮支持
            enable = true,
            -- 使用 treesitter 高亮而不是 neovim 内置的高亮
            additional_vim_regex_highlighting = false
        },
        -- 范围选择
        incremental_selection = {
            enable = true,
            keymaps = plugin_key.incremental_selection_keymaps
        },
        -- 缩进
        indent = {
            enable = false
        },
        -- 彩虹括号，由 nvim-ts-rainbow 插件提供
        rainbow = {
            enable = true,
            extended_mode = true
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
        -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
        context_commentstring = {
            enable = true
        }
    }
)
