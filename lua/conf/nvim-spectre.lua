-- https://github.com/nvim-pack/nvim-spectre

-- WARN: spectre 手动安装依赖项 sed 和 ripgrep
-- yay -S sed
-- https://github.com/BurntSushi/ripgrep

local plugin_key = vim.u.keymap["nvim-spectre"].plugin_set

require("spectre").setup(
    {
        mapping = plugin_key.mapping
    }
)

vim.u.keymap.register_key("nvim-spectre")
