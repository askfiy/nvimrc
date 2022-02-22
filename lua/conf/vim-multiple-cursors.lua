-- https://github.com/terryma/vim-multiple-cursors

-- 关闭默认键位绑定
vim.g.multi_cursor_use_default_mapping = 0

-- 应用键位
-- 开始选择单词
vim.g.multi_cursor_start_word_key = "gb"
-- 向后选择
vim.g.multi_cursor_next_key = "<C-n>"
-- 取消当前选择
vim.g.multi_cursor_prev_key = "<C-p>"
-- 跳过选择
vim.g.multi_cursor_skip_key = "<C-b>"
-- 退出选择
vim.g.multi_cursor_quit_key = "<ESC>"
