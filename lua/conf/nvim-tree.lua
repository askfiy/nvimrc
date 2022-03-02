-- https://github.com/kyazdani42/nvim-tree.lua

require("nvim-tree").setup(
    {
        auto_close = true,
        view = {
            width = 30,
            height = 30,
            hide_root_folder = false,
            auto_resize = true
        },
        diagnostics = {
            -- 是否启用文件诊断信息
            enable = false,
            icons = {
                hint = "",
                info = "",
                warning = "",
                error = ""
            }
        },
        git = {
            -- 是否启用 git 信息
            enable = false,
            ignore = true,
            timeout = 500
        }
    }
)

vim.g.nvim_tree_icons = {
    default = " ",
    symlink = " ",
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "",
        deleted = "",
        ignored = ""
    },
    folder = {
        -- arrow_open = "╰─▸",
        -- arrow_closed = "├─▸",
        arrow_open = "",
        arrow_closed = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = ""
    }
}

-- 目录后加上反斜杠 /
vim.g.nvim_tree_add_trailing = 1

