---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim

local install_plugins = {
    {
        -- 包管理器
        "wbthomason/packer.nvim"
    },
    {
        -- 中文文档
        "yianwillis/vimcdoc"
    },
    {
        -- 图标支持
        "kyazdani42/nvim-web-devicons"
    },
    {
        -- Lua 依赖
        "nvim-lua/plenary.nvim"
    },
    {
        -- 文字查找
        "BurntSushi/ripgrep"
    },
    {
        -- 文件查找
        "sharkdp/fd"
    },
    {
        -- 显示滚动条
        "petertriho/nvim-scrollbar",
        config = function()
            require("conf.nvim-scrollbar")
        end
    },
    {
        -- 内置终端
        "akinsho/toggleterm.nvim",
        config = function()
            require("conf.toggleterm")
        end
    },
    {
        -- 多光标模式
        "terryma/vim-multiple-cursors",
        config = function()
            require("conf.vim-multiple-cursors")
        end
    },
    {
        -- 自动保存
        "Pocco81/AutoSave.nvim",
        config = function()
            require("conf.AutoSave")
        end
    },
    {
        -- 自动会话管理
        "rmagatti/auto-session",
        config = function()
            require("conf.auto-session")
        end
    },
    {
        -- 自动恢复光标位置
        "ethanholz/nvim-lastplace",
        config = function()
            require("conf.nvim-lastplace")
        end
    },
    {
        -- 为不支持 LSP 高亮的主题提供默认高亮方案
        "folke/lsp-colors.nvim",
        config = function()
            require("conf.lsp-colors")
        end
    },
    {
        -- LSP 基础服务
        "neovim/nvim-lspconfig",
        config = function()
            require("conf.nvim-lspconfig")
        end
    },
    {
        -- 自动安装 LSP
        "williamboman/nvim-lsp-installer",
        config = function()
            require("conf.nvim-lsp-installer")
        end
    },
    {
        -- LSP 进度提示
        "j-hui/fidget.nvim",
        config = function()
            require("conf.fidget")
        end
    },
    {
        -- LSP UI 美化
        "tami5/lspsaga.nvim",
        config = function()
            require("conf.lspsaga")
        end
    },
    {
        -- 扩展 LSP 诊断
        "mfussenegger/nvim-lint",
        config = function()
            require("conf.nvim-lint")
        end
    },
    {
        -- 灯泡提示代码行为
        "kosayoda/nvim-lightbulb",
        config = function()
            require("conf.nvim-lightbulb")
        end
    },
    {
        -- 插入模式获得函数签名
        "ray-x/lsp_signature.nvim",
        config = function()
            require("conf.lsp_signature")
        end
    },
    {
        -- 代码补全
        "hrsh7th/nvim-cmp",
        config = function()
            require("conf.nvim-cmp")
        end
    },
    {
        -- 为补全添加类似 vscode 的图标
        "onsails/lspkind-nvim"
    },
    {
        -- vsnip 引擎，用于获得代码片段支持
        "hrsh7th/vim-vsnip"
    },
    {
        -- 适用于 vsnip 的代码片段源
        "hrsh7th/cmp-vsnip"
    },
    {
        -- 替换内置 omnifunc，获得更多补全
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        -- 路径补全
        "hrsh7th/cmp-path"
    },
    {
        -- 缓冲区补全
        "hrsh7th/cmp-buffer"
    },
    {
        -- 命令补全
        "hrsh7th/cmp-cmdline"
    },
    {
        -- 拼写建议
        "f3fora/cmp-spell"
    },
    {
        -- 提供多种语言的代码片段
        "rafamadriz/friendly-snippets"
    },
    {
        -- 让补全结果的排序更加智能
        "lukas-reineke/cmp-under-comparator"
    },
    {
        -- tabnine 源,提供基于 AI 的智能补全
        "tzachar/cmp-tabnine",
        run = "./install.sh"
    },
    {
        -- git copilot 自动补全
        "github/copilot.vim",
        config = function()
            require("conf.copilot")
        end
    },
    {
        -- 代码调试基础插件
        "mfussenegger/nvim-dap",
        config = function()
            require("conf.nvim-dap")
        end
    },
    {
        -- 为代码调试提供内联文本
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require("conf.nvim-dap-virtual-text")
        end
    },
    {
        -- 为代码调试提供 UI 界面
        "rcarriga/nvim-dap-ui",
        config = function()
            require("conf.nvim-dap-ui")
        end
    },
    {
        -- 优秀的暗色主题
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("conf.catppuccin")
        end
    },
    {
        -- 删除 buffer 时不影响现有布局
        "famiu/bufdelete.nvim"
    },
    {
        -- 支持 LSP 状态的 buffer 栏
        "akinsho/bufferline.nvim",
        config = function()
            require("conf.bufferline")
        end
    },
    {
        -- 为状态栏提供上下文信息
        "SmiteshP/nvim-gps"
    },
    {
        -- 轻量级的状态栏插件
        "feline-nvim/feline.nvim",
        config = function()
            require("conf.feline")
        end
    },
    {
        -- git 插件
        "lewis6991/gitsigns.nvim",
        config = function()
            require("conf.gitsigns")
        end
    },
    {
        -- 精美弹窗
        "rcarriga/nvim-notify",
        config = function()
            require("conf.nvim-notify")
        end
    },
    {
        -- 文件树
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("conf.nvim-tree")
        end
    },
    {
        -- todo tree
        "folke/todo-comments.nvim",
        config = function()
            require("conf.todo-comments")
        end
    },
    {
        -- undo tree
        "mbbill/undotree",
        config = function()
            require("conf.undotree")
        end
    },
    {
        -- view tree
        "liuchengxu/vista.vim",
        config = function()
            require("conf.vista")
        end
    },
    {
        -- 模糊查找
        "nvim-telescope/telescope.nvim",
        config = function()
            require("conf.telescope")
        end
    },
    {
        -- 全局替换
        "nvim-pack/nvim-spectre",
        config = function()
            require("conf.nvim-spectre")
        end
    },
    ---- 代码编辑
    -- 语法高亮
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSupdate",
        config = function()
            require("conf.nvim-treesitter")
        end
    },
    {
        -- 彩虹括号
        "p00f/nvim-ts-rainbow"
    },
    {
        -- 代码注释插件
        "JoosepAlviste/nvim-ts-context-commentstring"
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("conf.Comment")
        end
    },
    {
        -- 代码格式化
        "sbdchd/neoformat",
        config = function()
            require("conf.neoformat")
        end
    },
    {
        -- 自动匹配括号
        "windwp/nvim-autopairs",
        config = function()
            require("conf.nvim-autopairs")
        end
    },
    {
        -- 包裹修改
        "ur4ltz/surround.nvim",
        config = function()
            require("conf.surround")
        end
    },
    {
        -- 快速更改单词
        "AndrewRadev/switch.vim",
        config = function()
            require("conf.switch")
        end
    },
    --- 语言工具
    {
        -- markdown 预览
        "davidgranstrom/nvim-markdown-preview",
        config = function()
            require("conf.nvim-markdown-preview")
        end
    },
    {
        -- Python 缩进
        "Vimjas/vim-python-pep8-indent"
    },
    {
        -- emmet 缩写
        "mattn/emmet-vim"
    },
    ------------- 编辑体验 -------------
    {
        -- 显示网页色
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("conf.nvim-colorizer")
        end
    },
    {
        -- 显示缩进线
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("conf.indent-blankline")
        end
    },
    {
        -- 显示光标下相同词汇
        "RRethy/vim-illuminate",
        config = function()
            require("conf.vim-illuminate")
        end
    },
    {
        -- 搜索时显示条目
        "kevinhwang91/nvim-hlslens",
        config = function()
            require("conf.nvim-hlslens")
        end
    },
    {
        -- 快速跳转
        "phaazon/hop.nvim",
        config = function()
            require("conf.hop")
        end
    },
    {
        -- 拼写检查器
        "lewis6991/spellsitter.nvim",
        config = function()
            require("conf.spellsitter")
        end
    },
    {
        -- 键位绑定器
        "folke/which-key.nvim",
        config = function()
            require("conf.which-key")
        end
    },
    {
        -- 翻译插件
        "voldikss/vim-translator",
        config = function()
            require("conf.vim-translator")
        end
    },
    {
        -- 代码长截图
        "kristijanhusak/vim-carbon-now-sh",
        config = function()
            require("conf.vim-carbon-now-sh")
        end
    },
    {
        -- 优化启动速度
        "lewis6991/impatient.nvim",
        config = function()
            require("conf.impatient")
        end
    },
    {
        -- 查询启动时间
        "dstein64/vim-startuptime"
    }
}

require("packer").startup(
    {
        function()
            for _, plugin in ipairs(install_plugins) do
                if not plugin.disable then
                    use(plugin)
                end
            end
        end,
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
