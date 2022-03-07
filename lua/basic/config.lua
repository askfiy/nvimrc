--------- 用户设置 ---------
vim.u = {}

-- Python 解释器
local platform_python = {
    MAC = "/usr/local/bin/python3",
    UNIX = "/usr/bin/python3",
    WINDOWS = "C:\\Python\\python.exe"
}

-- 平台信息
vim.u.platform_info = vim.bo.fileformat:upper()
-- 解释器路径
vim.u.platform_python_path = platform_python[vim.u.platform_info]
-- 是否开启透明背景
vim.u.background_transparency = true

--------- 插件设置 ---------

-- 代码片段存储路径
vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippet"
-- undotree 缓存存放路径
vim.g.undotree_dir = vim.fn.stdpath("config") .. "/undodir"
-- lint 配置文件路径
vim.g.nvim_lint_dir = vim.fn.stdpath("config") .. "/lint"
-- translate 代理服务器
vim.g.translator_proxy_url = "socks5://127.0.0.1:7890"
-- 数据库链接地址
vim.g.dbs = {
    {
        name = "dev",
        url = "mysql://askfiy@192.168.0.120/db1"
    },
    {
        name = "local",
        url = "mysql://root@localhost:3306/test"
    }
}

-- 自动切换输入法（Fcitx 框架）
vim.g.FcitxToggleInput = function()
    local input_status = tonumber(vim.fn.system("fcitx-remote"))
    if input_status == 2 then
        vim.fn.system("fcitx-remote -c")
    end
end

vim.cmd("autocmd InsertLeave * call FcitxToggleInput()")
