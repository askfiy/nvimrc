vim.g.mapleader = " "

vim.u.keymap = {
    fn = {
        register_key = function(plug_name)
            local vim_api_set = vim.u.keymap.set[plug_name].vim_api_set
            for _, value in ipairs(vim_api_set) do
                vim.api.nvim_set_keymap(value[1], value[2], value[3], vim.u.keymap.opt[value[4]])
            end
        end
    },
    opt = {
        ns_opt = {noremap = true, silent = true},
        se_opt = {silent = true, expr = true}
    },
    set = {}
}

vim.u.keymap.set.base = {
    vim_api_set = {
        {"n", "\\\\", "<cmd>qa<cr>", "ns_opt"},
        {"n", "<esc>", ":nohlsearch<cr>", "ns_opt"},
        {"t", "<esc>", "<c-\\><c-n>", "ns_opt"},
        {"i", "jj", "<esc>", "ns_opt"},
        {"n", "H", "^", "ns_opt"},
        {"v", "H", "^", "ns_opt"},
        {"n", "L", "$", "ns_opt"},
        {"v", "L", "$", "ns_opt"},
        {"n", "<c-u>", "10k", "ns_opt"},
        {"n", "<c-d>", "10j", "ns_opt"},
        {"i", "<a-k>", "<up>", "ns_opt"},
        {"i", "<a-j>", "<down>", "ns_opt"},
        {"i", "<a-h>", "<left>", "ns_opt"},
        {"i", "<a-l>", "<right>", "ns_opt"},
        {"n", "<a-k>", "<cmd>res +1<cr>", "ns_opt"},
        {"n", "<a-j>", "<cmd>res -1<cr>", "ns_opt"},
        {"n", "<a-h>", "<cmd>vertical resize-1<cr>", "ns_opt"},
        {"n", "<a-l>", "<cmd>vertical resize+1<cr>", "ns_opt"},
        {"n", "<leader>cs", "<cmd>set spell!<cr>", "ns_opt"},
        {"n", ";y", '"+y', "ns_opt"},
        {"n", ";p", '"+p', "ns_opt"},
        {"n", ";P", '"+P', "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.bufferline = {
    vim_api_set = {
        {"n", "<c-q>", "<cmd>Bdelete!<cr>", "ns_opt"},
        {"n", "<c-h>", "<cmd>BufferLineCyclePrev<cr>", "ns_opt"},
        {"n", "<c-l>", "<cmd>BufferLineCycleNext<cr>", "ns_opt"},
        {"n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", "ns_opt"},
        {"n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", "ns_opt"},
        {"n", "<leader>bo", "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>", "ns_opt"},
        {"n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<cr>", "ns_opt"},
        {"n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<cr>", "ns_opt"},
        {"n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<cr>", "ns_opt"},
        {"n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<cr>", "ns_opt"},
        {"n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<cr>", "ns_opt"},
        {"n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<cr>", "ns_opt"},
        {"n", "<leader>b7", "<cmd>BufferLineGoToBuffer 7<cr>", "ns_opt"},
        {"n", "<leader>b8", "<cmd>BufferLineGoToBuffer 8<cr>", "ns_opt"},
        {"n", "<leader>b9", "<cmd>BufferLineGoToBuffer 9<cr>", "ns_opt"},
        {"n", "<leader>bt", "<cmd>BufferLinePick<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.comment = {
    vim_api_set = {},
    plugin_set = {
        toggle = {
            line = "gcc",
            block = "gCC"
        },
        opleader = {
            line = "gc",
            block = "gC"
        },
        extra = {
            above = "gcO",
            below = "gco",
            eol = "gcA"
        }
    }
}

vim.u.keymap.set.copilot = {
    vim_api_set = {
        {"i", "<c-l>", "copilot#Accept('')", "se_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.hop = {
    vim_api_set = {
        {"n", "<leader>hw", "<cmd>HopWord<cr>", "ns_opt"},
        {"n", "<leader>hl", "<cmd>HopLine<cr>", "ns_opt"},
        {"n", "<leader>hc", "<cmd>HopChar1<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.lsp_signature = {
    vim_api_set = {},
    plugin_set = {
        toggle_key = "<c-j>"
    }
}

vim.u.keymap.set.lspsaga = {
    vim_api_set = {},
    plugin_set = {
        code_action_keys = {
            quit = "<esc>",
            exec = "<cr>"
        },
        rename_action_keys = {
            quit = "<esc>",
            exec = "<cr>"
        }
    }
}

vim.u.keymap.set.neoformat = {
    vim_api_set = {
        {"n", "<leader>cf", "<cmd>Neoformat<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_cmp = {
    vim_api_set = {},
    plugin_set = {
        select_prev_item = "<c-p>",
        select_next_item = "<c-n>",
        confirm_current = "<cr>",
        toggle_complete = "<c-k>",
        current_or_next = "<tab>"
    }
}

vim.u.keymap.set.nvim_dap_ui = {
    vim_api_set = {
        {"n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_dap = {
    vim_api_set = {
        {"n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "ns_opt"},
        {"n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", "ns_opt"},
        {"n", "<F6>", "<cmd>lua require'dap'.step_into()<cr>", "ns_opt"},
        {"n", "<F7>", "<cmd>lua require'dap'.step_over()<cr>", "ns_opt"},
        {"n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", "ns_opt"},
        {"n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", "ns_opt"},
        {
            "n",
            "<F10>",
            "<cmd>lua require'dap'.close()<cr><cmd>lua require'dap.repl'.close()<cr><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_hlslens = {
    vim_api_set = {
        {
            "n",
            "n",
            "<cmd>execute('normal!'.v:count1.'n')<cr><cmd>lua require('hlslens').start()<cr>",
            "ns_opt"
        },
        {
            "n",
            "N",
            "<cmd>execute('normal!'.v:count1.'N')<cr><cmd>lua require('hlslens').start()<cr>",
            "ns_opt"
        },
        {"n", "*", "*<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
        {"n", "#", "#<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
        {"n", "g*", "g*<cmd>lua require('hlslens').start()<cr>", "ns_opt"},
        {"n", "g#", "g#<cmd>lua require('hlslens').start()<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_lsp_installer = {
    vim_api_set = {},
    plugin_set = {
        lsp_definitions = "gd",
        lsp_references = "gr",
        diagnostics = "go",
        lsp_code_actions = "<leader>ca",
        rename = "<leader>cn",
        hover_doc = "gh",
        diagnostic_jump_prev = "g[",
        diagnostic_jump_next = "g]",
        smart_scroll_with_saga_prev = "<c-p>",
        smart_scroll_with_saga_next = "<c-n>"
    }
}

vim.u.keymap.set.nvim_notify = {
    vim_api_set = {
        {
            "n",
            "<leader>fn",
            "<cmd>lua require('telescope').extensions.notify.notify() theme=dropdown<cr>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_spectre = {
    vim_api_set = {
        {"n", "<leader>rp", "<cmd>lua require('spectre').open()<cr>", "ns_opt"},
        {"n", "<leader>rf", "viw:lua require('spectre').open_file_search()<cr>", "ns_opt"},
        {"n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "ns_opt"}
    },
    plugin_set = {
        mapping = {
            ["toggle_line"] = {
                map = "dd",
                cmd = "<cmd>lua require('spectre').toggle_line()<cr>",
                desc = "toggle current item"
            },
            ["enter_file"] = {
                map = "<cr>",
                cmd = "<cmd>lua require('spectre.actions').select_entry()<cr>",
                desc = "goto current file"
            },
            ["show_option_menu"] = {
                map = "<leader>o",
                cmd = "<cmd>lua require('spectre').show_options()<cr>",
                desc = "show option"
            },
            ["run_replace"] = {
                map = "<leader>r",
                cmd = "<cmd>lua require('spectre.actions').run_replace()<cr>",
                desc = "replace all"
            },
            ["change_view_mode"] = {
                map = "<leader>v",
                cmd = "<cmd>lua require('spectre').change_view()<cr>",
                desc = "change result view mode"
            }
        }
    }
}

vim.u.keymap.set.nvim_tree = {
    vim_api_set = {
        {"n", "<leader>1", "<cmd>NvimTreeToggle<cr>", "ns_opt"},
        {"n", "<leader>fc", "<cmd>NvimTreeFindFile<cr>", "ns_opt"}
        -- 默认按键
        -- o     ：打开目录或文件
        -- a     ：新增目录或文件
        -- r     ：重命名目录或文件
        -- x     ：剪切目录或文件
        -- c     ：复制目录或文件
        -- d     ：删除目录或文件
        -- y     ：复制目录或文件名称
        -- Y     ：复制目录或文件相对路径
        -- gy    ：复制目录或文件绝对路径
        -- p     ：粘贴目录或文件
        -- s     ：使用系统默认程序打开目录或文件
        -- <Tab> ：将文件添加到缓冲区，但不移动光标
        -- <c-v> ：垂直分屏打开文件
        -- <c-x> ：水平分屏打开文件
        -- <c-]> ：进入光标下的目录
        -- <c-r> ：重命名目录或文件，删除已有目录名称
        -- -     ：返回上层目录
        -- I     ：切换隐藏文件/目录的可见性
        -- H     ：切换点文件的可见性
        -- R     ：刷新资源管理器
        -- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索
    },
    plugin_set = {}
}

vim.u.keymap.set.nvim_treesitter = {
    vim_api_set = {},
    plugin_set = {
        incremental_selection_keymaps = {
            init_selection = "<cr>",
            node_incremental = "<cr>",
            node_decremental = "<bs>",
            scope_incremental = "<tab>"
        }
    }
}

vim.u.keymap.set.switch = {
    vim_api_set = {
        {"n", "gs", ":Switch<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.telescope = {
    vim_api_set = {
        {"n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<cr>", "ns_opt"},
        {"n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<cr>", "ns_opt"},
        {"n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<cr>", "ns_opt"},
        {"n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<cr>", "ns_opt"},
        {"n", "<leader>fh", "<cmd>Telescope resume theme=dropdown<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.todo_comments = {
    vim_api_set = {
        {"n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.toggleterm = {
    vim_api_set = {
        {"n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<cr>", "ns_opt"},
        {"n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<cr>", "ns_opt"},
        {"n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<cr>", "ns_opt"},
        {"n", "<leader>ta", "<cmd>ToggleTermToggleAll<cr>", "ns_opt"}
    },
    plugin_set = {
        delete_all_exit = "<esc>",
        lazygit = {
            lazygit_exit = "q",
            again_exit = "<esc>"
        },
        float = {
            float_exit = "<esc>",
            again_exit = "<esc>"
        }
    }
}

vim.u.keymap.set.undotree = {
    vim_api_set = {
        {"n", "<leader>3", ":UndotreeToggle<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.vim_carbon_now_sh = {
    vim_api_set = {
        {"v", "<leader>ch", ":CarbonNowSh<cr>", "ns_opt"},
        {"n", "<leader>ch", ":CarbonNowSh<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.vim_multiple_cursors = {
    vim_api_set = {},
    plugin_set = {
        start_word_key = "gb",
        next_key = "<c-n>",
        prev_key = "<c-p>",
        skip_key = "<c-b>",
        quit_key = "<esc>"
    }
}

vim.u.keymap.set.vim_translator = {
    vim_api_set = {
        {"n", "<leader>tsc", ":Translate --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tsc", ":TranslateW --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>tse", ":Translate --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tse", ":TranslateW --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<cr>", "ns_opt"},
        {"n", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"},
        {"v", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<cr>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.set.vista = {
    vim_api_set = {
        {"n", "<leader>2", "<cmd>Vista!!<cr>", "ns_opt"}
    },
    plugin_set = {}
}

for plug_name, _ in pairs(vim.u.keymap.set) do
    vim.u.keymap.fn.register_key(plug_name)
end
