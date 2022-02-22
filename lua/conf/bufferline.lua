-- https://github.com/akinsho/bufferline.nvim

require("bufferline").setup(
    {
        options = {
            -- 为每个 buffer 都配置一个序数
            numbers = "ordinal",
            -- 使用内置 LSP 进行诊断
            diagnostics = "nvim_lsp",
            -- 不建议更改图标
            indicator_icon = "▎",
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            -- 分割符样式："slant" | "thick" | "thin"
            separator_style = "thin",
            -- 左侧让出 nvim-tree 的位置
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                }
            },
            -- 显示 LSP 报错图标
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and " " or (e == "warning" and " " or "")
                    s = s .. n .. sym
                end
                return s
            end
        }
    }
)

-- 关闭当前 buffer，由 bufdelete 插件所提供的方法
vim.keybinds.gmap("n", "<C-q>", "<cmd>Bdelete!<CR>", vim.keybinds.ns_opt)
-- 切换上一个缓冲区
vim.keybinds.gmap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", vim.keybinds.ns_opt)
-- 切换下一个缓冲区
vim.keybinds.gmap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", vim.keybinds.ns_opt)
-- 关闭左侧缓冲区
vim.keybinds.gmap("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", vim.keybinds.ns_opt)
-- 关闭右侧缓冲区
vim.keybinds.gmap("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", vim.keybinds.ns_opt)
-- 关闭左右两侧缓冲区
vim.keybinds.gmap("n", "<leader>bo", "<cmd>BufferLineCloseLeft<CR><cmd>BufferLineCloseRight<CR>", vim.keybinds.ns_opt)

-- 快速到某个 buffer
vim.keybinds.gmap("n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b7", "<cmd>BufferLineGoToBuffer 7<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b8", "<cmd>BufferLineGoToBuffer 8<CR>", vim.keybinds.ns_opt)
vim.keybinds.gmap("n", "<leader>b9", "<cmd>BufferLineGoToBuffer 9<CR>", vim.keybinds.ns_opt)
