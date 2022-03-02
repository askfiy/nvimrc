---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim

local install_plugins = {
    {
        -- 包管理器
        "wbthomason/packer.nvim"
    },
    {
        -- 优化启动速度
        "lewis6991/impatient.nvim",
        load_file = true
    },
    {
        -- 图标支持
        "kyazdani42/nvim-web-devicons"
    },
    {
        -- 中文文档
        "yianwillis/vimcdoc"
    },
    {
        -- Lua 依赖
        "nvim-lua/plenary.nvim"
    },
    {
        -- 字符查找
        "BurntSushi/ripgrep"
    },
    {
        -- 文件查找
        "sharkdp/fd"
    },
    {
        -- LSP 基础插件
        "neovim/nvim-lspconfig",
        load_file = true
    },
    {
        -- 替换内置 omnifunc，获得更多补全
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        -- 自动下载 LSP 服务
        "williamboman/nvim-lsp-installer",
        load_file = true
    },
    {
        -- LSP 进度提示
        "j-hui/fidget.nvim",
        load_file = true
    },
    {
        -- LSP UI 美化
        "tami5/lspsaga.nvim",
        load_file = true
    },
    {
        -- 扩展 LSP 诊断
        "mfussenegger/nvim-lint",
        load_file = true
    },
    {
        -- 灯泡提示代码行为
        "kosayoda/nvim-lightbulb",
        load_file = true
    },
    {
        -- 插入模式获得函数签名
        "ray-x/lsp_signature.nvim",
        load_file = true
    },
    {
        -- git copilot 自动补全
        "github/copilot.vim",
        load_file = true
    },
    {
        -- 为补全添加类似 vscode 的图标
        "onsails/lspkind-nvim"
    },
    {
        -- 代码补全
        "hrsh7th/nvim-cmp",
        load_file = true
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
        -- tabnine 源,提供基于 AI 的智能补全
        "tzachar/cmp-tabnine",
        run = "./install.sh"
    },
    {
        -- 代码调试基础插件
        "mfussenegger/nvim-dap",
        load_file = true
    },
    {
        -- 为代码调试提供内联文本
        "theHamsta/nvim-dap-virtual-text",
        load_file = true
    },
    {
        -- 为代码调试提供 UI 界面
        "rcarriga/nvim-dap-ui",
        load_file = true
    },
    {
        -- 优秀的暗色主题
        "catppuccin/nvim",
        as = "catppuccin",
        load_file = true,
    },
    {
        -- 删除 buffer 时不影响现有布局
        "famiu/bufdelete.nvim"
    },
    {
        -- 支持 LSP 状态的 buffer 栏
        "akinsho/bufferline.nvim",
        load_file = true
    },
    {
        -- 为状态栏提供上下文信息
        "SmiteshP/nvim-gps"
    },
    {
        -- git 插件
        "lewis6991/gitsigns.nvim",
        load_file = true
    },
    {
        -- 轻量级的状态栏插件
        "feline-nvim/feline.nvim",
        load_file = true
    },
    {
        -- 精美弹窗
        "rcarriga/nvim-notify",
        load_file = true
    },
    {
        -- 文件树
        "kyazdani42/nvim-tree.lua",
        load_file = true
    },
    {
        -- todo tree
        "folke/todo-comments.nvim",
        load_file = true
    },
    {
        -- undo tree
        "mbbill/undotree",
        load_file = true
    },
    {
        -- view tree
        "liuchengxu/vista.vim",
        load_file = true
    },
    {
        -- 模糊查找
        "nvim-telescope/telescope.nvim",
        load_file = true
    },
    {
        -- 全局替换
        "nvim-pack/nvim-spectre",
        load_file = true
    },
    {
        -- 语法高亮
        "nvim-treesitter/nvim-treesitter",
        run = ":TSupdate",
        load_file = true
    },
    {
        -- 彩虹括号
        "p00f/nvim-ts-rainbow"
    },
    {
        -- 注释依赖
        "JoosepAlviste/nvim-ts-context-commentstring"
    },
    {
        -- 代码注释
        "numToStr/Comment.nvim",
        load_file = true
    },
    {
        -- 代码格式化
        "sbdchd/neoformat",
        load_file = true
    },
    {
        -- 自动匹配括号
        "windwp/nvim-autopairs",
        load_file = true
    },
    {
        -- 包裹修改
        "ur4ltz/surround.nvim",
        load_file = true
    },
    {
        -- 快速更改单词
        "AndrewRadev/switch.vim",
        load_file = true
    },
    {
        -- markdown 预览
        "davidgranstrom/nvim-markdown-preview",
        load_file = true,
        ft = "markdown"
    },
    {
        -- Python 缩进
        "Vimjas/vim-python-pep8-indent",
        ft = "python"
    },
    {
        -- emmet 缩写
        "mattn/emmet-vim",
        ft = {
            "html",
            "javascript",
            "typescript",
            "vue",
            "xml"
        }
    },
    {
        -- 显示滚动条
        "petertriho/nvim-scrollbar",
        load_file = true
    },
    {
        -- 内置终端
        "akinsho/toggleterm.nvim",
        load_file = true
    },
    {
        -- 多光标模式
        "terryma/vim-multiple-cursors",
        load_file = true
    },
    {
        -- 自动保存
        "Pocco81/AutoSave.nvim",
        load_file = true
    },
    {
        -- 自动会话管理
        "rmagatti/auto-session",
        load_file = true
    },
    {
        -- 自动恢复光标位置
        "ethanholz/nvim-lastplace",
        load_file = true
    },
    {
        -- 为不支持 LSP 高亮的主题提供默认高亮方案
        "folke/lsp-colors.nvim",
        load_file = true
    },
    {
        -- 搜索时显示条目
        "kevinhwang91/nvim-hlslens",
        load_file = true
    },
    {
        -- 显示网页色
        "norcalli/nvim-colorizer.lua",
        load_file = true
    },
    {
        -- 显示缩进线
        "lukas-reineke/indent-blankline.nvim",
        load_file = true
    },
    {
        -- 显示光标下相同词汇
        "RRethy/vim-illuminate",
        load_file = true
    },
    {
        -- 快速跳转
        "phaazon/hop.nvim",
        load_file = true
    },
    {
        -- 拼写检查器
        "lewis6991/spellsitter.nvim",
        load_file = true
    },
    {
        -- 键位绑定器
        "folke/which-key.nvim",
        load_file = true
    },
    {
        -- 翻译插件
        "voldikss/vim-translator",
        load_file = true
    },
    {
        -- 代码长截图
        "kristijanhusak/vim-carbon-now-sh",
        load_file = true
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
                if plugin.load_file then
                    local require_path
                    if plugin.as then
                        require_path = "conf" .. "/" .. plugin.as
                    else
                        require_path = "conf" .. string.match(plugin[1], "(/[%w-_]+).?")
                    end
                    plugin.config = "require('" .. require_path .. "')"
                end
                use(plugin)
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
