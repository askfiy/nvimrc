-- Python 解释器目录
vim.g.python_path = "/usr/bin/python"
-- 指定代码片段存储路径
vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
-- 指定 undotree 缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"
-- 指定 translate 代理服务器
vim.g.translator_proxy_url = "socks5://127.0.0.1:7890"

-- 自动切换输入法（Fcitx 框架）
vim.cmd(
    [[
autocmd InsertLeave * call Fcitx2en()
function! Fcitx2en()
    let s:input_status=system("fcitx-remote")
    if s:input_status==2
        let g:input_toggle=1
        let l:a=system("fcitx-remote -c")
    endif
endfunction
]]
)
