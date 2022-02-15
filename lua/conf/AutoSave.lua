-- https://github.com/Pocco81/AutoSave.nvim

require("autosave").setup(
    {
        enabled = true,
        -- 触发自动保存的事件
        events = {"InsertLeave", "TextChanged"},
        -- 自动保存时的提示信息
        execution_message = "",
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = true,
        on_off_commands = false,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
