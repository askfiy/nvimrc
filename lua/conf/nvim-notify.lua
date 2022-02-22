-- https://github.com/rcarriga/nvim-notify

vim.notify = require("notify")

vim.notify.setup(
    --[[
--  动画样式有：
--  fade_in_slide_out
--  fade
--  slide
--  static
--]]
    {
        stages = "fade"
    }
)
-- 使用案例：
-- 信息、级别、标题
-- 级别有：info、warn、error、debug、trace
-- 示例：
-- vim.notify("hi world", "info", {title = "test"})

-- 显示历史记录
vim.keybinds.gmap("n", "<leader>fn", "<cmd>lua require('telescope').extensions.notify.notify()<CR>", vim.keybinds.ns_opt)
