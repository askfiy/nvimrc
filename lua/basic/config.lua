-- Python 解释器目录
vim.g.python_path = "/usr/bin/python"
-- 指定代码片段存储路径
vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
-- 指定 undotree 缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"
-- 指定 translate 代理服务器
vim.g.translator_proxy_url = "socks5://127.0.0.1:7890"
-- 是否开启透明背景
vim.g.background_transparency = false

-- 自动切换输入法（Fcitx 框架）
vim.g.FcitxToggleInput = function()
    local input_status = tonumber(vim.fn.system("fcitx-remote"))
    if input_status == 2 then
        vim.fn.system("fcitx-remote -c")
    end
end

vim.cmd("autocmd InsertLeave * call FcitxToggleInput()")
