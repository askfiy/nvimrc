-- https://github.com/rmagatti/auto-session

-- 该插件会拖慢启动速度，因此禁用了

-- 推荐设置
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

require("auto-session").setup(
    {
        -- 自动加载最后保存的一次会话
        auto_session_enable_last_session = true,
        -- 保存会话时自动关闭 nvim-tree
        pre_save_cmds = {"tabdo NvimTreeClose"}
    }
)

vim.cmd([[
    autocmd VimLeavePre * silent! :SaveSession
]])
