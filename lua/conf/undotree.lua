-- https://github.com/mbbill/undotree

vim.cmd(
    [[
if has("persistent_undo")
    " 在 config.lua 中定义好了 undotree_dir 全局变量
    let target_path = expand(undotree_dir)
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir = target_path
    set undofile
]]
)

-- 按键绑定
vim.keybinds.gmap("n", "<leader>3", ":UndotreeToggle<CR>", vim.keybinds.ns_opt)
