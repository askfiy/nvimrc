Vim�UnDo� ?XG�l��68"�So�Z�pG|0V�׮m��  z   A                        require_path = "conf" .. "/" .. plugin.as  a   .                       b}   	 _�                     �        ����                                                                                                                                                                                                                                                                                                                                                             b    �   �   �                  disable = false5��    �                      :                     5�_�                   z        ����                                                                                                                                                                                                                                                                                                                                                             bo    �  y            �  x  z          ]]�  w  y            augroup end�  v  x          C    autocmd BufWritePost plugins.lua source <afile> | PackerCompile�  u  w              autocmd!�  t  v            augroup packer_user_config�  s  u              [[�  r  t          vim.cmd(�  q  s          -- 实时生效配置�  p  r           �  o  q          )�  n  p              }�  m  o          	        }�  l  n                      }�  k  m          6                open_fn = require("packer.util").float�  j  l                      display = {�  i  k                  config = {�  h  j                  end,�  g  i                      end�  f  h                          use(plugin)�  e  g                          end�  d  f          G                    plugin.config = "require('" .. require_path .. "')"�  c  e                              end�  b  d          X                        require_path = "conf" .. string.match(plugin[1], "(/[%w-_]+).?")�  a  c                              else�  `  b          A                        require_path = "conf" .. "/" .. plugin.as�  _  a          %                    if plugin.as then�  ^  `          &                    local require_path�  ]  _          (                if plugin.load_file then�  \  ^          7            for _, plugin in ipairs(install_plugins) do�  [  ]                  function()�  Z  \              {�  Y  [          require("packer").startup(�  X  Z           �  W  Y          }�  V  X              }�  U  W          "        "dstein64/vim-startuptime"�  T  V                  -- 查询启动时间�  S  U              {�  R  T              },�  Q  S                  load_file = true�  P  R          +        "kristijanhusak/vim-carbon-now-sh",�  O  Q                  -- 代码长截图�  N  P              {�  M  O              },�  L  N                  load_file = true�  K  M          "        "voldikss/vim-translator",�  J  L                  -- 翻译插件�  I  K              {�  H  J              },�  G  I                  load_file = true�  F  H                  "folke/which-key.nvim",�  E  G                  -- 键位绑定器�  D  F              {�  C  E              },�  B  D                  load_file = true�  A  C          %        "lewis6991/spellsitter.nvim",�  @  B                  -- 拼写检查器�  ?  A              {�  >  @              },�  =  ?                  load_file = true�  <  >                  "phaazon/hop.nvim",�  ;  =                  -- 快速跳转�  :  <              {�  9  ;              },�  8  :                  load_file = true�  7  9                   "RRethy/vim-illuminate",�  6  8          &        -- 显示光标下相同词汇�  5  7              {�  4  6              },�  3  5                  load_file = true�  2  4          .        "lukas-reineke/indent-blankline.nvim",�  1  3                  -- 显示缩进线�  0  2              {�  /  1              },�  .  0                  load_file = true�  -  /          &        "norcalli/nvim-colorizer.lua",�  ,  .                  -- 显示网页色�  +  -              {�  *  ,              },�  )  +                  load_file = true�  (  *          $        "kevinhwang91/nvim-hlslens",�  '  )                   -- 搜索时显示条目�  &  (              {�  %  '              },�  $  &                  load_file = true�  #  %                   "folke/lsp-colors.nvim",�  "  $          C        -- 为不支持 LSP 高亮的主题提供默认高亮方案�  !  #              {�     "              },�    !                  load_file = true�               #        "ethanholz/nvim-lastplace",�              #        -- 自动恢复光标位置�                  {�                  },�                      load_file = true�                       "rmagatti/auto-session",�                      -- 自动会话管理�                  {�                  },�                      load_file = true�                       "Pocco81/AutoSave.nvim",�                      -- 自动保存�                  {�                  },�                      load_file = true�              '        "terryma/vim-multiple-cursors",�                      -- 多光标模式�                  {�                  },�                      load_file = true�  
            "        "akinsho/toggleterm.nvim",�  	                    -- 内置终端�    
              {�    	              },�                      load_file = true�              $        "petertriho/nvim-scrollbar",�                      -- 显示滚动条�                  {�                  },�              	        }�                           "xml"�   �                        "vue",�   �                         "typescript",�   �   �                      "javascript",�   �   �                      "html",�   �   �                  ft = {�   �   �                  "mattn/emmet-vim",�   �   �                  -- emmet 缩写�   �   �              {�   �   �              },�   �   �                  ft = "python"�   �   �          (        "Vimjas/vim-python-pep8-indent",�   �   �                  -- Python 缩进�   �   �              {�   �   �              },�   �   �                  ft = "markdown"�   �   �                  load_file = true,�   �   �          /        "davidgranstrom/nvim-markdown-preview",�   �   �                  -- markdown 预览�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          !        "AndrewRadev/switch.vim",�   �   �                  -- 快速更改单词�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "ur4ltz/surround.nvim",�   �   �                  -- 包裹修改�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                   "windwp/nvim-autopairs",�   �   �                  -- 自动匹配括号�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "sbdchd/neoformat",�   �   �                  -- 代码格式化�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                   "numToStr/Comment.nvim",�   �   �                  -- 代码注释�   �   �              {�   �   �              },�   �   �          5        "JoosepAlviste/nvim-ts-context-commentstring"�   �   �                  -- 注释依赖�   �   �              {�   �   �              },�   �   �                  "p00f/nvim-ts-rainbow"�   �   �                  -- 彩虹括号�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  run = ":TSupdate",�   �   �          *        "nvim-treesitter/nvim-treesitter",�   �   �                  -- 语法高亮�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          !        "nvim-pack/nvim-spectre",�   �   �                  -- 全局替换�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          (        "nvim-telescope/telescope.nvim",�   �   �                  -- 模糊查找�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "liuchengxu/vista.vim",�   �   �                  -- view tree�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "mbbill/undotree",�   �   �                  -- undo tree�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          #        "folke/todo-comments.nvim",�   �   �                  -- todo tree�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          #        "kyazdani42/nvim-tree.lua",�   �   �                  -- 文件树�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "rcarriga/nvim-notify",�   �   �                  -- 精美弹窗�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          "        "feline-nvim/feline.nvim",�   �   �          &        -- 轻量级的状态栏插件�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          "        "lewis6991/gitsigns.nvim",�   �   �                  -- git 插件�   �   �              {�   �   �              },�   �   �                  "SmiteshP/nvim-gps"�   �   �          ,        -- 为状态栏提供上下文信息�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �          "        "akinsho/bufferline.nvim",�   �   �          *        -- 支持 LSP 状态的 buffer 栏�   �   �              {�   �   �              },�   �   �                  "famiu/bufdelete.nvim"�   �   �          1        -- 删除 buffer 时不影响现有布局�   �   �              {�   �   �              },�   �   �                  load_file = true,�   �   �                  as = "catppuccin",�   �   �                  "catppuccin/nvim",�   �   �                   -- 优秀的暗色主题�   �   �              {�   �   �              },�   �   �                  load_file = true�   �   �                  "rcarriga/nvim-dap-ui",�   �   �          *        -- 为代码调试提供 UI 界面�   �   �              {�   �   �              },�      �                  load_file = true�   ~   �          *        "theHamsta/nvim-dap-virtual-text",�   }             ,        -- 为代码调试提供内联文本�   |   ~              {�   {   }              },�   z   |                  load_file = true�   y   {                   "mfussenegger/nvim-dap",�   x   z          #        -- 代码调试基础插件�   w   y              {�   v   x              },�   u   w                  run = "./install.sh"�   t   v                  "tzachar/cmp-tabnine",�   s   u          6        -- tabnine 源,提供基于 AI 的智能补全�   r   t              {�   q   s              },�   p   r          &        "rafamadriz/friendly-snippets"�   o   q          ,        -- 提供多种语言的代码片段�   n   p              {�   m   o              },�   l   n                  "f3fora/cmp-spell"�   k   m                  -- 拼写建议�   j   l              {�   i   k              },�   h   j                  "hrsh7th/cmp-cmdline"�   g   i                  -- 命令补全�   f   h              {�   e   g              },�   d   f                  "hrsh7th/cmp-buffer"�   c   e                  -- 缓冲区补全�   b   d              {�   a   c              },�   `   b                  "hrsh7th/cmp-path"�   _   a                  -- 路径补全�   ^   `              {�   ]   _              },�   \   ^                  "hrsh7th/cmp-vsnip"�   [   ]          -        -- 适用于 vsnip 的代码片段源�   Z   \              {�   Y   [              },�   X   Z                  "hrsh7th/vim-vsnip"�   W   Y          8        -- vsnip 引擎，用于获得代码片段支持�   V   X              {�   U   W              },�   T   V                  load_file = true�   S   U                  "hrsh7th/nvim-cmp",�   R   T                  -- 代码补全�   Q   S              {�   P   R              },�   O   Q                  "onsails/lspkind-nvim"�   N   P          1        -- 为补全添加类似 vscode 的图标�   M   O              {�   L   N              },�   K   M                  load_file = true�   J   L                  "github/copilot.vim",�   I   K          #        -- git copilot 自动补全�   H   J              {�   G   I              },�   F   H                  load_file = true�   E   G          #        "ray-x/lsp_signature.nvim",�   D   F          )        -- 插入模式获得函数签名�   C   E              {�   B   D              },�   A   C                  load_file = true�   @   B          "        "kosayoda/nvim-lightbulb",�   ?   A          #        -- 灯泡提示代码行为�   >   @              {�   =   ?              },�   <   >                  load_file = true�   ;   =          !        "mfussenegger/nvim-lint",�   :   <                  -- 扩展 LSP 诊断�   9   ;              {�   8   :              },�   7   9                  load_file = true�   6   8                  "tami5/lspsaga.nvim",�   5   7                  -- LSP UI 美化�   4   6              {�   3   5              },�   2   4                  load_file = true�   1   3                  "j-hui/fidget.nvim",�   0   2                  -- LSP 进度提示�   /   1              {�   .   0              },�   -   /                  load_file = true�   ,   .          *        "williamboman/nvim-lsp-installer",�   +   -          "        -- 自动下载 LSP 服务�   *   ,              {�   )   +              },�   (   *                  "hrsh7th/cmp-nvim-lsp"�   '   )          5        -- 替换内置 omnifunc，获得更多补全�   &   (              {�   %   '              },�   $   &                  load_file = true�   #   %                   "neovim/nvim-lspconfig",�   "   $                  -- LSP 基础插件�   !   #              {�       "              },�      !                  "sharkdp/fd"�                         -- 文件查找�                    {�                    },�                        "BurntSushi/ripgrep"�                        -- 字符查找�                    {�                    },�                        "nvim-lua/plenary.nvim"�                        -- Lua 依赖�                    {�                    },�                        "yianwillis/vimcdoc"�                        -- 中文文档�                    {�                    },�                &        "kyazdani42/nvim-web-devicons"�                        -- 图标支持�                    {�                    },�                        load_file = true�   
             #        "lewis6991/impatient.nvim",�   	                     -- 优化启动速度�      
              {�      	              },�                         "wbthomason/packer.nvim"�                        -- 包管理器�                    {�                local install_plugins = {�                 �                ,-- https://github.com/wbthomason/packer.nvim�                 (---@diagnostic disable: undefined-global�  y  z          )5��    y                     �                     �                (       (           (       (       �               ,       ,   )       ,       ,       �                           V                       �                         W                     �                         q                     �                         w                     �                           �                       �                         �                     �                         �                     �    	                     �                     �    
           #       #   �       #       #       �                         �                     �                                             �                                             �                         %                    �               &       &   =      &       &       �                         d                    �                         k                    �                         q                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                                             �                         +                    �                         2                    �                         8                    �                         P                    �                          e                    �    !                     l                    �    "                     r                    �    #                       �                      �    $                     �                    �    %                     �                    �    &                     �                    �    '           5       5   �      5       5       �    (                                         �    )                     *                    �    *                     1                    �    +           "       "   7      "       "       �    ,           *       *   Z      *       *       �    -                     �                    �    .                     �                    �    /                     �                    �    0                     �                    �    1                     �                    �    2                     �                    �    3                     �                    �    4                                         �    5                     
                    �    6                     #                    �    7                     A                    �    8                     Z                    �    9                     a                    �    :                     g                    �    ;           !       !   �      !       !       �    <                     �                    �    =                     �                    �    >                     �                    �    ?           #       #   �      #       #       �    @           "       "   �      "       "       �    A                                         �    B                     ,                    �    C                     3                    �    D           )       )   9      )       )       �    E           #       #   c      #       #       �    F                     �                    �    G                     �                    �    H                     �                    �    I           #       #   �      #       #       �    J                     �                    �    K                     �                    �    L                                         �    M                                         �    N           1       1         1       1       �    O                     G                    �    P                     f                    �    Q                     m                    �    R                     s                    �    S                     �                    �    T                     �                    �    U                     �                    �    V                     �                    �    W           8       8   �      8       8       �    X                                         �    Y                     "                    �    Z                     )                    �    [           -       -   /      -       -       �    \                     ]                    �    ]                     y                    �    ^                     �                    �    _                     �                    �    `                     �                    �    a                     �                    �    b                     �                    �    c                     �                    �    d                     �                    �    e                     �                    �    f                                         �    g                                         �    h                     #                    �    i                     A                    �    j                     H                    �    k                     N                    �    l                     f                    �    m                     �                    �    n                     �                    �    o           ,       ,   �      ,       ,       �    p           &       &   �      &       &       �    q                     �                    �    r                     �                    �    s           6       6   �      6       6       �    t                     &	                    �    u                     E	                    �    v                     b	                    �    w                     i	                    �    x           #       #   o	      #       #       �    y                       �	                      �    z                     �	                    �    {                     �	                    �    |                     �	                    �    }           ,       ,   �	      ,       ,       �    ~           *       *   
      *       *       �                         2
                    �    �                     K
                    �    �                     R
                    �    �           *       *   X
      *       *       �    �                     �
                    �    �                     �
                    �    �                     �
                    �    �                     �
                    �    �                       �
                      �    �                     �
                    �    �                                         �    �                                          �    �                     9                    �    �                     @                    �    �           1       1   F      1       1       �    �                     x                    �    �                     �                    �    �                     �                    �    �           *       *   �      *       *       �    �           "       "   �      "       "       �    �                     �                    �    �                                         �    �                                         �    �           ,       ,         ,       ,       �    �                     E                    �    �                     a                    �    �                     h                    �    �                     n                    �    �           "       "   �      "       "       �    �                     �                    �    �                     �                    �    �                     �                    �    �           &       &   �      &       &       �    �           "       "   �      "       "       �    �                                         �    �                     0                    �    �                     7                    �    �                     =                    �    �                     U                    �    �                     u                    �    �                     �                    �    �                     �                    �    �                     �                    �    �           #       #   �      #       #       �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �           #       #         #       #       �    �                     3                    �    �                     L                    �    �                     S                    �    �                     Y                    �    �                     n                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                                         �    �                     
                    �    �           (       (   "      (       (       �    �                     K                    �    �                     d                    �    �                     k                    �    �                     q                    �    �           !       !   �      !       !       �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �           *       *   �      *       *       �    �                                         �    �                     /                    �    �                     H                    �    �                     O                    �    �                     U                    �    �                     m                    �    �                     �                    �    �                     �                    �    �                     �                    �    �           5       5   �      5       5       �    �                     �                    �    �                     �                    �    �                     �                    �    �                                             �    �                     -                    �    �                     F                    �    �                     M                    �    �                     S                    �    �                     n                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                       �                      �    �                     �                    �    �                                         �    �                                         �    �                                         �    �                     -                    �    �                     M                    �    �                     f                    �    �                     m                    �    �                     s                    �    �           !       !   �      !       !       �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �           /       /   �      /       /       �    �                     $                    �    �                     >                    �    �                     V                    �    �                     ]                    �    �                     c                    �    �           (       (   |      (       (       �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     
                    �    �                                         �    �                     8                    �    �                     R                    �                         e                    �              	       	   w      	       	       �                        �                    �                        �                    �                        �                    �              $       $   �      $       $       �                        �                    �                        �                    �                        �                    �    	                    �                    �    
          "       "         "       "       �                        /                    �                        H                    �                        O                    �                        U                    �              '       '   p      '       '       �                        �                    �                        �                    �                        �                    �                        �                    �                          �                      �                        �                    �                                            �                                            �                                            �                          ;                      �                        \                    �                        u                    �                        |                    �              #       #   �      #       #       �              #       #   �      #       #       �                        �                    �                         �                    �    !                    �                    �    "          C       C   �      C       C       �    #                      4                      �    $                    U                    �    %                    n                    �    &                    u                    �    '                      {                      �    (          $       $   �      $       $       �    )                    �                    �    *                    �                    �    +                    �                    �    ,                    �                    �    -          &       &         &       &       �    .                    )                    �    /                    B                    �    0                    I                    �    1                    O                    �    2          .       .   j      .       .       �    3                    �                    �    4                    �                    �    5                    �                    �    6          &       &   �      &       &       �    7                      �                      �    8                                        �    9                                         �    :                    '                    �    ;                    -                    �    <                    E                    �    =                    a                    �    >                    z                    �    ?                    �                    �    @                    �                    �    A          %       %   �      %       %       �    B                    �                    �    C                    �                    �    D                    �                    �    E                    �                    �    F                    	                    �    G                    )                    �    H                    B                    �    I                    I                    �    J                    O                    �    K          "       "   g      "       "       �    L                    �                    �    M                    �                    �    N                    �                    �    O                    �                    �    P          +       +   �      +       +       �    Q                    �                    �    R                                        �    S                                        �    T                                        �    U          "       "   ;      "       "       �    V                    ^                    �    W                    d                    �    X                      f                      �    Y                    g                    �    Z                    �                    �    [                    �                    �    \          7       7   �      7       7       �    ]          (       (   �      (       (       �    ^          &       &   �      &       &       �    _          %       %   #      %       %       �    `          A       A   I      A       A       �    a                    �                    �    b          X       X   �      X       X       �    c                    �                    �    d          G       G         G       G       �    e                    ]                    �    f                    q                    �    g                    �                    �    h                    �                    �    i                    �                    �    j                    �                    �    k          6       6   �      6       6       �    l                                        �    m          	       	         	       	       �    n                    $                    �    o                    *                    �    p                      ,                      �    q                    -                    �    r                    C                    �    s                    L                    �    t                    S                    �    u                    p                    �    v          C       C   }      C       C       �    w                    �                    �    x                    �                    �    y                     �                     5�_�                   a   .    ����                                                                                                                                                                                                                                                                                                                                                             bz    �  `  b  z      A                        require_path = "conf" .. "/" .. plugin.as5��    `  .                  w                     5�_�                   a   .    ����                                                                                                                                                                                                                                                                                                                                                             bz    �  `  b  z      @                        require_path = "conf" . "/" .. plugin.as5��    `  .                  w                     5�_�                   a   .    ����                                                                                                                                                                                                                                                                                                                                                             bz    �  `  b  z      ?                        require_path = "conf"  "/" .. plugin.as5��    `  .                  w                     5�_�                   a   .    ����                                                                                                                                                                                                                                                                                                                                                             bz    �  `  b  z      >                        require_path = "conf" "/" .. plugin.as5��    `  .                  w                     5�_�                   a   ,    ����                                                                                                                                                                                                                                                                                                                                                             b{    �  `  b  z      =                        require_path = "conf" /" .. plugin.as5��    `  ,                  u                     5�_�                    a   ,    ����                                                                                                                                                                                                                                                                                                                                                             b|   	 �  `  b  z      <                        require_path = "conf /" .. plugin.as5��    `  ,                  u                     5��