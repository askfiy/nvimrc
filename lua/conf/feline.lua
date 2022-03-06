-- https://github.com/feline-nvim/feline.nvim
-- https://github.com/lewis6991/gitsigns.nvim
-- https://github.com/SmiteshP/nvim-gps

local gps = require("nvim-gps")
local vi_mode_utils = require("feline.providers.vi_mode")

local components = {
    active = {},
    inactive = {}
}

gps.setup()

components.active[1] = {
    {
        provider = " ",
        hl = function()
            return {
                bg = "oceanblue",
                style = "bold"
            }
        end,
        -- 组建隐藏后显示的消息
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 4
    },
    {
        provider = " " .. vim.u.platform_icon .. vim.u.platform_info .. " ",
        hl = function()
            local mode = vi_mode_utils.get_vim_mode()
            if mode == "NORMAL" then
                return {
                    fg = "white"
                }
            elseif mode == "INSERT" then
                return {
                    fg = "green"
                }
            elseif mode == "VISUAL" then
                return {
                    fg = "skyblue"
                }
            else
                return {
                    fg = vi_mode_utils.get_mode_color()
                }
            end
        end,
        short_provider = "",
        priority = 5
    },
    {
        provider = "file_info",
        hl = {
            fg = "white",
            bg = "oceanblue",
            style = "bold"
        },
        left_sep = {
            "slant_left_2",
            {str = " ", hl = {bg = "oceanblue", fg = "NONE"}}
        },
        right_sep = {
            {str = " ", hl = {bg = "oceanblue", fg = "NONE"}},
            "slant_right_2",
            " "
        }
    },
    {
        provider = "file_size",
        right_sep = {
            " ",
            {
                str = "slant_left_2_thin",
                hl = {
                    fg = "fg",
                    bg = "bg"
                }
            }
        },
        short_provider = "",
        priority = 3
    },
    {
        provider = "position",
        left_sep = " ",
        right_sep = {
            " ",
            {
                str = "slant_right_2_thin",
                hl = {
                    fg = "fg",
                    bg = "bg"
                }
            }
        },
        short_provider = "",
        priority = 2
    },
    -- 加入当前光标所在上下文的路径提示，由 gps 提供
    {
        provider = function()
            return gps.get_location()
        end,
        enabled = function()
            return gps.is_available()
        end,
        short_provider = "",
        priority = 1,
        left_sep = {
            {str = " ", hl = {bg = "bg", fg = "NONE"}}
        }
    }
}

components.active[2] = {
    {
        provider = "diagnostic_errors",
        hl = {fg = "red"},
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 12
    },
    {
        provider = "diagnostic_warnings",
        hl = {fg = "yellow"},
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 11
    },
    {
        provider = "diagnostic_hints",
        hl = {fg = "cyan"},
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 10
    },
    {
        provider = "diagnostic_info",
        hl = {fg = "skyblue"},
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 9
    },
    {
        provider = " ",
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 13
    },
    {
        provider = "git_branch",
        hl = {
            fg = "white",
            bg = "black",
            style = "bold"
        },
        left_sep = {
            str = " ",
            hl = {
                fg = "NONE",
                bg = "black"
            }
        },
        right_sep = {
            str = " ",
            hl = {
                fg = "NONE",
                bg = "black"
            }
        },
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 14
    },
    {
        provider = "git_diff_added",
        hl = {
            fg = "green",
            bg = "black"
        },
        short_provider = "",
        priority = 8
    },
    {
        provider = "git_diff_changed",
        hl = {
            fg = "orange",
            bg = "black"
        },
        short_provider = "",
        -- 组件隐藏优先级（越低越优先消失）
        priority = 7
    },
    {
        provider = "git_diff_removed",
        hl = {
            fg = "red",
            bg = "black"
        },
        right_sep = {
            str = " ",
            hl = {
                fg = "NONE",
                bg = "black"
            }
        },
        short_provider = "",
        priority = 6
    },
    {
        provider = "line_percentage",
        hl = {
            style = "bold"
        },
        left_sep = " ",
        right_sep = " "
    },
    {
        provider = "scroll_bar",
        hl = {
            fg = "skyblue",
            style = "bold"
        }
    }
}

components.inactive[1] = {
    {
        provider = "file_type",
        hl = {
            fg = "white",
            bg = "oceanblue",
            style = "bold"
        },
        left_sep = {
            str = " ",
            hl = {
                fg = "NONE",
                bg = "oceanblue"
            }
        },
        right_sep = {
            {
                str = " ",
                hl = {
                    fg = "NONE",
                    bg = "oceanblue"
                }
            },
            "slant_right"
        }
    },
    -- Empty component to fix the highlight till the end of the statusline
    {}
}

require("feline").setup({components = components})
