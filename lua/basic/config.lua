-- 用户设置
vim.u = {}

-- 获取平台图标
local platform_icons = {
    MAC = " ",
    UNIX = " ",
    WINDOWS = " "
}

-- 获取平台 Python 解释器路径
local platform_python = {
    MAC = "/usr/local/bin/python3",
    UNIX = "/usr/bin/python3",
    WINDOWS = "C:\\Python\\python.exe"
}

-- 获取平台 undotree 路径
local platform_undotree = {
    MAC = "~/.config/nvim/undodir",
    UNIX = "~/.config/nvim/undodir",
    WINDOWS = "C:\\Users\\%USERNAME%\\AppData\\Local\\nvim\\undodir"
}

-- 获取平台 vim-snippet 路径
local platform_snippet = {
    MAC = "~/.config/nvim/snippet",
    UNIX = "~/.config/nvim/snippet",
    WINDOWS = "C:\\Users\\%USERNAME%\\AppData\\Local\\nvim\\snippet"
}

-- 获取平台 lint 配置文件路径
local platform_lint = {
    MAC = "~/.config/nvim/lint",
    UNIX = "~/.config/nvim/lint",
    WINDOWS = "C:\\Users\\%USERNAME%\\AppData\\Local\\nvim\\lint"
}

-- 获取平台代码截图存储路径
local platform_screenshot = {
    MAC = "~/Pictures/screenshot",
    UNIX = "~/Pictures/screenshot",
    WINDOWS = "C:\\Users\\%USERNAME%\\Pictures\\screenshot"
}

-- 获取平台信息
vim.u.platform_info = vim.bo.fileformat:upper()
-- 获取平台图标
vim.u.platform_icon = platform_icons[vim.u.platform_info]
-- Python 解释器目录
vim.u.platform_python_path = platform_python[vim.u.platform_info]
-- 指定代码片段存储路径
vim.u.platform_snippet_dir = platform_snippet[vim.u.platform_info]
-- 指定 undotree 缓存存放路径
vim.u.platform_undotree_dir = platform_undotree[vim.u.platform_info]
-- 指定 lint 配置文件路径
vim.u.platform_lint_config_path = platform_lint[vim.u.platform_info]
-- 指定截图存储路径
vim.u.platform_screenshot_save_path = platform_screenshot[vim.u.platform_info]

-- 指定 translate 代理服务器
vim.u.translator_proxy_url = "socks5://127.0.0.1:7890"
-- 是否开启透明背景
vim.u.background_transparency = true

-- 自动切换输入法（Fcitx 框架）
vim.g.FcitxToggleInput = function()
    local input_status = tonumber(vim.fn.system("fcitx-remote"))
    if input_status == 2 then
        vim.fn.system("fcitx-remote -c")
    end
end

vim.cmd("autocmd InsertLeave * call FcitxToggleInput()")
