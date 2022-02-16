-- https://github.com/github/copilot.vim

vim.g.copilot_no_tab_map = true

local opts = {silent = true, expr = true}

vim.keybinds.gmap("i", "<C-l>", "copilot#Accept('')", opts)
