vim.g.mapleader = " "

vim.u.keymap = {
    gset = vim.api.nvim_set_keymap,
    bset = vim.api.nvim_buf_set_keymap,
    dgset = vim.api.nvim_del_keymap,
    dbset = vim.api.nvim_buf_del_keymap,
    ns_opt = {noremap = true, silent = true},
    se_opt = {silent = true, expr = true}
}

vim.u.keymap.register_key = function(plug_name)
    local vim_api_set = vim.u.keymap[plug_name].vim_api_set
    for _, value in ipairs(vim_api_set) do
        vim.u.keymap.gset(value[1], value[2], value[3], vim.u.keymap[value[4]])
    end
end

vim.u.keymap["basic"] = {
    vim_api_set = {
        {"n", "\\\\", "<cmd>qa<CR>", "ns_opt"},
        {"n", "<ESC>", ":nohlsearch<CR>", "ns_opt"},
        {"i", "jj", "<Esc>", "ns_opt"},
        {"n", "H", "^", "ns_opt"},
        {"v", "H", "^", "ns_opt"},
        {"n", "L", "$", "ns_opt"},
        {"v", "L", "$", "ns_opt"},
        {"n", "<C-u>", "10k", "ns_opt"},
        {"n", "<C-d>", "10j", "ns_opt"},
        {"i", "<A-k>", "<up>", "ns_opt"},
        {"i", "<A-j>", "<down>", "ns_opt"},
        {"i", "<A-h>", "<left>", "ns_opt"},
        {"i", "<A-l>", "<right>", "ns_opt"},
        {"n", "<A-k>", "<cmd>res +1<CR>", "ns_opt"},
        {"n", "<A-j>", "<cmd>res -1<CR>", "ns_opt"},
        {"n", "<A-h>", "<cmd>vertical resize-1<CR>", "ns_opt"},
        {"n", "<A-l>", "<cmd>vertical resize+1<CR>", "ns_opt"},
        {"n", "<leader>cs", "<cmd>set spell!<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["bufferline"] = {
    vim_api_set = {
        {"n", "<C-q>", "<cmd>Bdelete!<CR>", "ns_opt"},
        {"n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", "ns_opt"},
        {"n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", "ns_opt"},
        {"n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>", "ns_opt"},
        {"n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>", "ns_opt"},
        {"n", "<leader>bo", "<cmd>BufferLineCloseLeft<CR><cmd>BufferLineCloseRight<CR>", "ns_opt"},
        {"n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<CR>", "ns_opt"},
        {"n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<CR>", "ns_opt"},
        {"n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<CR>", "ns_opt"},
        {"n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<CR>", "ns_opt"},
        {"n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<CR>", "ns_opt"},
        {"n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<CR>", "ns_opt"},
        {"n", "<leader>b7", "<cmd>BufferLineGoToBuffer 7<CR>", "ns_opt"},
        {"n", "<leader>b8", "<cmd>BufferLineGoToBuffer 8<CR>", "ns_opt"},
        {"n", "<leader>b9", "<cmd>BufferLineGoToBuffer 9<CR>", "ns_opt"},
        {"n", "<leader>bt", "<cmd>BufferLinePick<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["Comment"] = {
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

vim.u.keymap["copilot"] = {
    vim_api_set = {
        {"i", "<C-l>", "copilot#Accept('')", "se_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["hop"] = {
    vim_api_set = {
        {"n", "<leader>hw", "<cmd>HopWord<CR>", "ns_opt"},
        {"n", "<leader>hl", "<cmd>HopLine<CR>", "ns_opt"},
        {"n", "<leader>hc", "<cmd>HopChar1<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["lsp_signature"] = {
    vim_api_set = {},
    plugin_set = {
        toggle_key = "<C-j>"
    }
}

vim.u.keymap["lspsaga"] = {
    vim_api_set = {},
    plugin_set = {
        code_action_keys = {
            quit = "<Esc>",
            exec = "<CR>"
        },
        rename_action_keys = {
            quit = "<Esc>",
            exec = "<CR>"
        }
    }
}

vim.u.keymap["neoformat"] = {
    vim_api_set = {
        {"n", "<leader>cf", "<cmd>Neoformat<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["nvim-cmp"] = {
    vim_api_set = {},
    plugin_set = {
        select_prev_item = "<C-p>",
        select_next_item = "<C-n>",
        confirm_current = "<CR>",
        toggle_complete = "<C-k>",
        current_or_next = "<tab>"
    }
}

vim.u.keymap["nvim-dap-ui"] = {
    vim_api_set = {
        {"n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["nvim-dap"] = {
    vim_api_set = {
        {"n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "ns_opt"},
        {"n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", "ns_opt"},
        {"n", "<F6>", "<cmd>lua require'dap'.step_into()<CR>", "ns_opt"},
        {"n", "<F7>", "<cmd>lua require'dap'.step_over()<CR>", "ns_opt"},
        {"n", "<F8>", "<cmd>lua require'dap'.step_out()<CR>", "ns_opt"},
        {"n", "<F9>", "<cmd>lua require'dap'.run_last()<CR>", "ns_opt"},
        {
            "n",
            "<F10>",
            "<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<CR>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap["nvim-hlslens"] = {
    vim_api_set = {
        {
            "n",
            "n",
            "<Cmd>execute('normal!'.v:count1.'n')<CR><Cmd>lua require('hlslens').start()<CR>",
            "ns_opt"
        },
        {
            "n",
            "N",
            "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>",
            "ns_opt"
        },
        {"n", "*", "*<Cmd>lua require('hlslens').start()<CR>", "ns_opt"},
        {"n", "#", "#<Cmd>lua require('hlslens').start()<CR>", "ns_opt"},
        {"n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", "ns_opt"},
        {"n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["nvim-lsp-installer"] = {
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
        smart_scroll_with_saga_prev = "<C-p>",
        smart_scroll_with_saga_next = "<C-n>"
    }
}

vim.u.keymap["nvim-notify"] = {
    vim_api_set = {
        {
            "n",
            "<leader>fn",
            "<cmd>lua require('telescope').extensions.notify.notify()<CR>",
            "ns_opt"
        }
    },
    plugin_set = {}
}

vim.u.keymap["nvim-spectre"] = {
    vim_api_set = {
        {"n", "<leader>rp", "<cmd>lua require('spectre').open()<CR>", "ns_opt"},
        {"n", "<leader>rf", "viw:lua require('spectre').open_file_search()<CR>", "ns_opt"},
        {"n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "ns_opt"}
    },
    plugin_set = {
        mapping = {
            -- 删除选中
            ["toggle_line"] = {
                map = "dd",
                cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
                desc = "toggle current item"
            },
            -- 前往文件
            ["enter_file"] = {
                map = "<CR>",
                cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
                desc = "goto current file"
            },
            -- 查看菜单（忽略大小写、忽略隐藏文件）
            ["show_option_menu"] = {
                map = "<leader>o",
                cmd = "<cmd>lua require('spectre').show_options()<CR>",
                desc = "show option"
            },
            -- 开始替换
            ["run_replace"] = {
                map = "<leader>r",
                cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
                desc = "replace all"
            },
            -- 显示差异
            ["change_view_mode"] = {
                map = "<leader>v",
                cmd = "<cmd>lua require('spectre').change_view()<CR>",
                desc = "change result view mode"
            }
        }
    }
}

vim.u.keymap["nvim-tree"] = {
    vim_api_set = {
        {"n", "<leader>1", "<cmd>NvimTreeToggle<CR>", "ns_opt"},
        {"n", "<leader>fc", "<cmd>NvimTreeFindFile<CR>", "ns_opt"}
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
        -- <C-v> ：垂直分屏打开文件
        -- <C-x> ：水平分屏打开文件
        -- <C-]> ：进入光标下的目录
        -- <C-r> ：重命名目录或文件，删除已有目录名称
        -- -     ：返回上层目录
        -- I     ：切换隐藏文件/目录的可见性
        -- H     ：切换点文件的可见性
        -- R     ：刷新资源管理器
        -- 另外，文件资源管理器操作和操作文档方式一致，可按 / ? 进行搜索
    },
    plugin_set = {}
}

vim.u.keymap["nvim-treesitter"] = {
    vim_api_set = {},
    plugin_set = {
        incremental_selection_keymaps = {
            -- 初始化选择
            init_selection = "<CR>",
            -- 递增
            node_incremental = "<CR>",
            -- 递减
            node_decremental = "<BS>",
            -- 选择一个范围
            scope_incremental = "<TAB>"
        }
    }
}

vim.u.keymap["switch"] = {
    vim_api_set = {
        {"n", "gs", ":Switch<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["telescope"] = {
    vim_api_set = {
        -- 查找文件
        {"n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", "ns_opt"},
        -- 查找文字
        {"n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", "ns_opt"},
        -- 查找最近打开的文件
        {"n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", "ns_opt"},
        -- 查找 marks 标记
        {"n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", "ns_opt"},
        -- 上次运行的命令
        {"n", "<leader>fh", "<cmd>Telescope resume theme=dropdown<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["todo-comments"] = {
    vim_api_set = {
        -- 查找 TODO 标签
        {"n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["toggleterm"] = {
    vim_api_set = {
        -- 退出终端插入模式
        {"t", "<Esc>", "<C-\\><C-n>", "ns_opt"},
        -- 打开普通终端
        {"n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<CR>", "ns_opt"},
        -- 打开浮动终端
        {"n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>", "ns_opt"},
        -- 打开lazy git 终端
        {"n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", "ns_opt"},
        -- 打开或关闭所有终端
        {"n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", "ns_opt"}
    },
    plugin_set = {
        delete_all_exit = "<Esc>",
        lazygit = {
            lazygit_exit = "q",
            again_exit = "<Esc>"
        },
        float = {
            float_exit = "<Esc>",
            again_exit = "<Esc>"
        }
    }
}

vim.u.keymap["undotree"] = {
    vim_api_set = {
        -- 按键绑定
        {"n", "<leader>3", ":UndotreeToggle<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["vim-carbon-now-sh"] = {
    vim_api_set = {
        {"v", "<leader>ch", ":CarbonNowSh<CR>", "ns_opt"},
        {"n", "<leader>ch", ":CarbonNowSh<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["vim-multiple-cursors"] = {
    vim_api_set = {},
    plugin_set = {
        start_word_key = "gb",
        next_key = "<C-n>",
        prev_key = "<C-p>",
        skip_key = "<C-b>",
        quit_key = "<ESC>"
    }
}

vim.u.keymap["vim-translator"] = {
    vim_api_set = {
        -- 翻译成中文
        {"n", "<leader>tsc", ":Translate --target_lang=zh --source_lang=auto<CR>", "ns_opt"},
        {"v", "<leader>tsc", ":TranslateW --target_lang=zh --source_lang=auto<CR>", "ns_opt"},
        -- 翻译成英文
        {"n", "<leader>tse", ":Translate --target_lang=en --source_lang=auto<CR>", "ns_opt"},
        {"v", "<leader>tse", ":TranslateW --target_lang=en --source_lang=auto<CR>", "ns_opt"},
        -- 替换成中文
        {"n", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<CR>", "ns_opt"},
        {"v", "<leader>trc", ":TranslateR --target_lang=zh --source_lang=auto<CR>", "ns_opt"},
        -- 替换成英文
        {"n", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<CR>", "ns_opt"},
        {"v", "<leader>tre", ":TranslateR --target_lang=en --source_lang=auto<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap["vista"] = {
    vim_api_set = {
        {"n", "<leader>2", "<cmd>Vista!!<CR>", "ns_opt"}
    },
    plugin_set = {}
}

vim.u.keymap.register_key("basic")
