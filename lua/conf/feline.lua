-- https://github.com/feline-nvim/feline.nvim
-- https://github.com/lewis6991/gitsigns.nvim
-- https://github.com/SmiteshP/nvim-gps

local gps = require("nvim-gps")
local vi_mode_utils = require("feline.providers.vi_mode")

require("nvim-gps").setup()

local components = {
    active = {},
    inactive = {}
}

components.active[1] = {
    {
        provider = " ",
        hl = function()
            return {
                bg = "skyblue",
                style = "bold"
            }
        end
    },
    {
        provider = " " .. vim.g.platform_icon .. vim.g.platform_info .. " ",
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
        end
    },
    {
        provider = "file_info",
        hl = {
            fg = "white",
            bg = "oceanblue",
            style = "bold"
        },
        left_sep = {
            {str = " ", hl = {bg = "oceanblue", fg = "NONE"}}
        },
        right_sep = {
            {str = " ", hl = {bg = "oceanblue", fg = "NONE"}},
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
        }
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
        }
    },
    -- 加入当前光标所在上下文的路径提示，由 gps 提供
    {
        provider = function()
            return gps.get_location()
        end,
        enabled = function()
            return gps.is_available()
        end,
        -- 第一个隐藏的组件
        -- 组件隐藏后显示的短提示
        short_provider = "",
        -- 组件隐藏优先级
        priority = -10,
        left_sep = {
            {str = " ", hl = {bg = "bg", fg = "NONE"}}
        }
    }
}

components.active[2] = {
    {
        provider = "diagnostic_errors",
        hl = {fg = "red"}
    },
    {
        provider = "diagnostic_warnings",
        hl = {fg = "yellow"}
    },
    {
        provider = "diagnostic_hints",
        hl = {fg = "cyan"}
    },
    {
        provider = "diagnostic_info",
        hl = {fg = "skyblue"}
    },
    {
        provider = " "
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
        }
    },
    {
        provider = "git_diff_added",
        hl = {
            fg = "green",
            bg = "black"
        }
    },
    {
        provider = "git_diff_changed",
        hl = {
            fg = "orange",
            bg = "black"
        }
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
        }
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
