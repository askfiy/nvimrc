-- https://github.com/github/copilot.vim

vim.g.copilot_no_tab_map = true

vim.keybinds.gmap("i", "<C-l>", "copilot#Accept('')", vim.keybinds.se_opt)
