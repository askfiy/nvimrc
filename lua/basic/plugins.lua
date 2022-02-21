---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim

local packer = require("packer")
packer.startup(
    {
        function()
            use {
                -- 包管理器
                "wbthomason/packer.nvim"
            }

            ------------- LSP & DAP -------------

            -- LSP 基础服务
            use {
                "neovim/nvim-lspconfig",
                config = function()
                    require("conf.nvim-lspconfig")
                end
            }

            -- 自动安装 LSP
            use {
                "williamboman/nvim-lsp-installer",
                config = function()
                    require("conf.nvim-lsp-installer")
                end
            }

            -- LSP 进度提示
            use {
                "j-hui/fidget.nvim",
                config = function()
                    require("conf.fidget")
                end
            }

            -- LSP UI 美化
            use {
                "tami5/lspsaga.nvim",
                config = function()
                    require("conf.lspsaga")
                end
            }

            -- 扩展 LSP 诊断
            use {
                "mfussenegger/nvim-lint",
                config = function()
                    require("conf.nvim-lint")
                end
            }

            -- 灯泡提示代码行为
            use {
                "kosayoda/nvim-lightbulb",
                config = function()
                    require("conf.nvim-lightbulb")
                end
            }

            -- 插入模式获得函数签名
            use {
                "ray-x/lsp_signature.nvim",
                config = function()
                    require("conf.lsp_signature")
                end
            }

            -- 自动代码补全系列插件
            use {
                "hrsh7th/nvim-cmp",
                requires = {
                    {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
                    {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
                    {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
                    {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
                    {"hrsh7th/cmp-path"}, -- 路径补全
                    {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
                    {"hrsh7th/cmp-cmdline"}, -- 命令补全
                    {"f3fora/cmp-spell"}, -- 拼写建议
                    {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
                    {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
                    {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
                },
                config = function()
                    require("conf.nvim-cmp")
                end
            }

            -- git copilot 自动补全
            use {
                "github/copilot.vim",
                config = function()
                    require("conf.copilot")
                end
            }

            -- 代码调试基础插件
            use {
                "mfussenegger/nvim-dap",
                config = function()
                    require("conf.nvim-dap")
                end
            }

            -- 为代码调试提供内联文本
            use {
                "theHamsta/nvim-dap-virtual-text",
                requires = {
                    "mfussenegger/nvim-dap"
                },
                config = function()
                    require("conf.nvim-dap-virtual-text")
                end
            }

            -- 为代码调试提供 UI 界面
            use {
                "rcarriga/nvim-dap-ui",
                requires = {
                    "mfussenegger/nvim-dap"
                },
                config = function()
                    require("conf.nvim-dap-ui")
                end
            }

            ------------- 个性化 -------------

            -- 优秀的暗色主题
            use {
                "catppuccin/nvim",
                as = "catppuccin",
                config = function()
                    require("conf.catppuccin")
                end
            }

            -- 支持 LSP 状态的 buffer 栏
            use {
                "akinsho/bufferline.nvim",
                requires = {
                    "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
                },
                config = function()
                    require("conf.bufferline")
                end
            }

            -- 轻量级的状态栏插件
            use {
                "feline-nvim/feline.nvim",
                requires = {
                    "SmiteshP/nvim-gps", -- 为状态栏提供上下文信息
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    require("conf.feline")
                end
            }

            -- git 插件
            use {
                "lewis6991/gitsigns.nvim",
                requires = {
                    "nvim-lua/plenary.nvim"
                },
                config = function()
                    require("conf.gitsigns")
                end
            }

            -- 精美弹窗
            use {
                "rcarriga/nvim-notify",
                config = function()
                    require("conf.nvim-notify")
                end
            }

            ------------- 常见工具 -------------

            -- 文件树
            use {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    "kyazdani42/nvim-web-devicons"
                },
                config = function()
                    require("conf.nvim-tree")
                end
            }

            -- todo tree
            use {
                "folke/todo-comments.nvim",
                config = function()
                    require("conf.todo-comments")
                end
            }

            -- undo tree
            use {
                "mbbill/undotree",
                config = function()
                    require("conf.undotree")
                end
            }

            -- view tree
            use {
                "liuchengxu/vista.vim",
                config = function()
                    require("conf.vista")
                end
            }

            -- 模糊查找
            use {
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim", -- Lua 开发模块
                    "BurntSushi/ripgrep", -- 文字查找
                    "sharkdp/fd" -- 文件查找
                },
                config = function()
                    require("conf.telescope")
                end
            }

            -- 全局替换
            use {
                "nvim-pack/nvim-spectre",
                requires = {
                    "nvim-lua/plenary.nvim", -- Lua 开发模块
                    "BurntSushi/ripgrep" -- 文字查找
                },
                config = function()
                    require("conf.nvim-spectre")
                end
            }

            ------------- 代码编辑 -------------

            -- 语法高亮
            use {
                "nvim-treesitter/nvim-treesitter",
                run = {":TSupdate"},
                requires = {
                    "p00f/nvim-ts-rainbow" -- 彩虹括号
                },
                config = function()
                    require("conf.nvim-treesitter")
                end
            }

            -- 代码格式化
            use {
                "sbdchd/neoformat",
                config = function()
                    require("conf.neoformat")
                end
            }

            -- 自动匹配括号
            use {
                "windwp/nvim-autopairs",
                config = function()
                    require("conf.nvim-autopairs")
                end
            }

            -- 包裹修改
            use {
                "ur4ltz/surround.nvim",
                config = function()
                    require("conf.surround")
                end
            }

            -- 代码注释
            use {
                "numToStr/Comment.nvim",
                requires = {
                    "JoosepAlviste/nvim-ts-context-commentstring"
                },
                config = function()
                    require("conf.Comment")
                end
            }

            -- 快速更改单词
            use {
                "AndrewRadev/switch.vim",
                config = function()
                    require("conf.switch")
                end
            }

            ------------- 语言工具 -------------

            -- markdown 预览
            use {
                "davidgranstrom/nvim-markdown-preview",
                config = function()
                    require("conf.nvim-markdown-preview")
                end
            }

            -- Python 缩进
            use {
                "Vimjas/vim-python-pep8-indent"
            }

            -- emmet 缩写
            use {
                "mattn/emmet-vim"
            }

            ------------- 编辑体验 -------------

            -- 显示网页色
            use {
                "norcalli/nvim-colorizer.lua",
                config = function()
                    require("conf.nvim-colorizer")
                end
            }

            -- 显示缩进线
            use {
                "lukas-reineke/indent-blankline.nvim",
                config = function()
                    require("conf.indent-blankline")
                end
            }

            -- 显示光标下相同词汇
            use {
                "RRethy/vim-illuminate",
                config = function()
                    require("conf.vim-illuminate")
                end
            }

            -- 搜索时显示条目
            use {
                "kevinhwang91/nvim-hlslens",
                config = function()
                    require("conf.nvim-hlslens")
                end
            }

            -- 快速跳转
            use {
                "phaazon/hop.nvim",
                config = function()
                    require("conf.hop")
                end
            }

            -- 拼写检查器
            use {
                "lewis6991/spellsitter.nvim",
                config = function()
                    require("conf.spellsitter")
                end
            }

            -- 键位绑定器
            use {
                "folke/which-key.nvim",
                config = function()
                    require("conf.which-key")
                end
            }

            -- 翻译插件
            use {
                "voldikss/vim-translator",
                config = function()
                    require("conf.vim-translator")
                end
            }

            ------------- 功能增强 -------------

            use {
                -- 中文文档
                "yianwillis/vimcdoc"
            }

            -- 显示滚动条
            use {
                "petertriho/nvim-scrollbar",
                config = function()
                    require("conf.nvim-scrollbar")
                end
            }

            -- 内置终端
            use {
                "akinsho/toggleterm.nvim",
                config = function()
                    require("conf.toggleterm")
                end
            }

            -- 多光标模式
            use {
                "terryma/vim-multiple-cursors",
                config = function()
                    require("conf.nvim-multiple-cursors")
                end
            }

            -- 自动保存
            use {
                "Pocco81/AutoSave.nvim",
                config = function()
                    require("conf.AutoSave")
                end
            }

            -- 自动会话管理
            use {
                "rmagatti/auto-session",
                config = function()
                    require("conf.auto-session")
                end
            }

            -- 自动恢复到光标位置
            use {
                "ethanholz/nvim-lastplace",
                config = function()
                    require("conf.nvim-lastplace")
                end
            }

            -- 为不支持 LSP 高亮的主题提供默认高亮方案
            use {
                "folke/lsp-colors.nvim",
                config = function()
                    require("conf.lsp-colors")
                end
            }
        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)

-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
