-- https://github.com/terryma/vim-multiple-cursors

local plugin_key = vim.u.keymap["vim-multiple-cursors"].plugin_set
-- 关闭默认键位绑定
vim.g.multi_cursor_use_default_mapping = 0

vim.g.multi_cursor_start_word_key = plugin_key.start_word_key
vim.g.multi_cursor_next_key = plugin_key.next_key
vim.g.multi_cursor_prev_key = plugin_key.prev_key
vim.g.multi_cursor_skip_key = plugin_key.skip_key
vim.g.multi_cursor_quit_key = plugin_key.quit_key
