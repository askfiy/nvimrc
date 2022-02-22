-- https://github.com/voldikss/vim-translator

vim.g.translator_default_engines = {"google", "bing"}

-- 翻译成中文

vim.keybinds.gmap("n", "<leader>tsc", ":Translate --target_lang=zh --source_lang=auto<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "<leader>tsc", ":TranslateW --target_lang=zh --source_lang=auto<CR>", vim.keybinds.ns_opt)
-- 翻译成英文
vim.keybinds.gmap("n", "<leader>tse", ":Translate --target_lang=en --source_lang=auto<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "<leader>tse", ":TranslateW --target_lang=en --source_lang=auto<CR>", vim.keybinds.ns_opt)
-- 替换成中文
vim.keybinds.gmap("n", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<CR>", vim.keybinds.ns_opt)
-- 替换成英文
vim.keybinds.gmap("n", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("v", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<CR>", vim.keybinds.ns_opt)
