vim.g.mapleader = " "

vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    ns_opt = {noremap = true, silent = true},
    se_opt = {silent = true, expr = true}
}

vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.ns_opt)

vim.keybinds.gmap("n", "H", "^", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.ns_opt)

vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.ns_opt)

vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.ns_opt)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.ns_opt)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.ns_opt)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.ns_opt)

vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.ns_opt)

vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.ns_opt)

vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.ns_opt)
