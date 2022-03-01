-- https://github.com/akinsho/toggleterm.nvim

local Toggleterm = require("toggleterm")
local plugin_key = vim.u.keymap["toggleterm"].plugin_set

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
    vim.u.keymap.dgset("t", plugin_key.delete_all_exit)
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
            vim.u.keymap.bset(
                term.bufnr,
                "t",
                plugin_key.float.float_exit,
                "<C-\\><C-n>:close<CR>",
                vim.u.keymap.ns_opt
            )
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.u.keymap.gset("t", plugin_key.float.again_exit, "<C-\\><C-n>", vim.u.keymap.ns_opt)
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
            vim.u.keymap.bset(term.bufnr, "i", plugin_key.lazygit.lazygit_exit, "<cmd>close<CR>", vim.u.keymap.ns_opt)
        end,
        on_close = function()
            -- 重新映射 Esc
            vim.u.keymap.gset("t", plugin_key.lazygit.again_exit, "<C-\\><C-n>", vim.u.keymap.ns_opt)
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

vim.u.keymap.register_key("toggleterm")

-- 要需创建多个终端，可：
-- 1 <键位>
-- 2 <键位>
-- ... <键位>
-- 另外，上面我们新建了 2 个特殊终端，所以普通终端的顺序应该是从 3 开始
