-- https://github.com/davidgranstrom/nvim-markdown-preview

-- WARN: nvim-markdown-preview 手动安装依赖 : pandoc 和 live-server
-- 通过 apt 或 yay 安装 pandoc 通过 npm 全局安装 live-server
-- yay -S pandoc
-- sudo npm install -g live-server
-- 后续使用 :MarkdownPreview 即可打开预览

-- 主题：github solarized-light solarized-dark
vim.g.nvim_markdown_preview_theme = "github"
vim.g.nvim_markdown_preview_format = "markdown"
