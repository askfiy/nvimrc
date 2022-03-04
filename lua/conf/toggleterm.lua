-- https://github.com/akinsho/toggleterm.nvim

local Toggleterm = require("toggleterm")
local plugin_key = vim.u.keymap.set.toggleterm.plugin_set

Toggleterm.setup(
    {
        --  开启的终端默认进入插入模式
        start_in_insert = false,
        -- 设置终端打开的大小
        size = 6,
        -- 打开普通终端时，关闭拼写检查
        on_open = function()
            vim.cmd("setlocal nospell")
        end
    }
)

-- 新建终端
local Terminal = require("toggleterm.terminal").Terminal

local function inInsert()
    -- 进入插入模式
    vim.cmd("startinsert")
    -- 删除 Esc 的映射
    vim.api.nvim_del_keymap("t", plugin_key.delete_all_exit)
end

-- 新建浮动终端
local floatTerm =
    Terminal:new(
    {
        hidden = true,
        direction = "float",
        float_opts = {
            border = "double"
        },
        on_open = function(term)
            inInsert()
            -- 浮动终端中 Esc 是退出
            vim.api.nvim_buf_set_keymap(
                term.bufnr,
                "t",
                plugin_key.float.float_exit,
                "<c-\\><c-n>:close<cr>",
                vim.u.keymap.opt.ns_opt
            )
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.api.nvim_set_keymap("t", plugin_key.float.again_exit, "<c-\\><c-n>", vim.u.keymap.opt.ns_opt)
        end
    }
)

-- 新建 lazygit 终端
local lazyGit =
    Terminal:new(
    {
        cmd = "lazygit",
        hidden = true,
        direction = "float",
        float_opts = {
            border = "double"
        },
        on_open = function(term)
            inInsert()
            -- lazygit 中 q 是退出
            vim.api.nvim_buf_set_keymap(
                term.bufnr,
                "i",
                plugin_key.lazygit.lazygit_exit,
                "<cmd>close<CR>",
                vim.u.keymap.opt.ns_opt
            )
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.api.nvim_set_keymap("t", plugin_key.lazygit.again_exit, "<c-\\><c-n>", vim.u.keymap.opt.ns_opt)
        end
    }
)

-- 定义新的方法
Toggleterm.float_toggle = function()
    floatTerm:toggle()
end

Toggleterm.lazygit_toggle = function()
    lazyGit:toggle()
end
