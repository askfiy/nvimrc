-- https://github.com/mbbill/undotree

vim.g.undotree_dir = vim.u.platform_undotree_dir

vim.cmd(
    [[
if has("persistent_undo")
    let target_path = expand(undotree_dir)
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir = target_path
    set undofile
]]
)

