Vim�UnDo� �"j��uZ�"q}��wʗ�#��#m�/"���   �                                  b@    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b��    �         �       �         �    5��                          P                     �                          P                     �       
                  Z                     �       	                  Y                     �                         X                     �                         W                     �                        V                    �       
                  Z                     �       	                  Y                     �                         X                     �                         W                     �                        V                    �                        V                    �                        V                    �                        V                    �                        V                    �                        V                    �                         [                     �       
                  Z                     �       	                  Y                     �                         X                     �                         W                     �                     %   V             %       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b̐    �          �      +vim.g.vsnip_snippet_dir = vim.u.snippet_dir5��                         p                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b̈́    �          �      8local plugin_key = vim.u.keybinds["nvim-cmp"].plugin_set5��                        0                    5�_�                    =        ����                                                                                                                                                                                                                                                                                                                            =           J           V        b6�    �   <   =                  sorting = {               comparators = {   *                cmp.config.compare.offset,   )                cmp.config.compare.exact,   )                cmp.config.compare.score,   1                cmp.config.compare.recently_used,   6                require("cmp-under-comparator").under,   /                require("cmp_tabnine.compare"),   (                cmp.config.compare.kind,   -                cmp.config.compare.sort_text,   *                cmp.config.compare.length,   (                cmp.config.compare.order               }   
        },5��    <                      �                    5�_�                    <        ����                                                                                                                                                                                                                                                                                                                            =           =           V        b6�   	 �   ;   <                   -- 对补全建议排序5��    ;                      �      !               5�_�      	             i   	    ����                                                                                                                                                                                                                                                                                                                                                             b?�     �   h   k   �      	        }5��    h   	                  \                     �    h   
                 ]              	       �    i                     f                     �    i   	                  g                     �    i                 
   f             
       5�_�      
           	   j       ����                                                                                                                                                                                                                                                                                                                                                             b?�     �   i   k   �              sorting = 5��    i                     p                     5�_�   	              
   j       ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   j   l   �    �   i   l   �              sorting = {}5��    i                    q              	       �    j                      r              	       �    j                     r                    �    j                     }                     �    j   
                  |                     �    j   	                  {                     �    j                     z                     �    j                     y                     �    j                     x                     �    j                     w                     �    j                     v                     �    j                     u                     �    j                     t                     �    j                     s                     �    j                      r                     5�_�   
                 i   	    ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   i   k   �              �   i   k   �    5��    i                      ^              	       �    i                  	   f              	       �    i                     l                     �    i                    i                    5�_�                    l        ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   k   t   �       �   l   m   �    5��    k                     �              �       5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   �            �   �   �              }�   �   �          	        )�   �   �                      }�   �   �          "                {name = "cmdline"}�   �   �                      {�   �   �                      },�   �   �                          {name = "path"}�   �   �                      {�   �   �          %        sources = cmp.config.sources(�   �   �              {�   �   �              ":",�   �   �          cmp.setup.cmdline(�   �   �          -- 命令行 : 模式提示�   �   �           �      �          )�   ~   �              }�   }             	        }�   |   ~                      {name = "buffer"}�   {   }                  sources = {�   z   |              {�   y   {              "/",�   x   z          cmp.setup.cmdline(�   w   y          -- 命令行 / 模式提示�   v   x           �   u   w          )�   t   v              }�   s   u          	        }�   r   t                compare.order,�   q   s                compare.length,�   p   r                compare.sort_text,�   o   q                compare.kind,�   n   p                compare.recently_used,�   m   o                compare.score,�   l   n                compare.exact,�   k   m                compare.offset,�   j   l                  sorting = {�   i   k                  -- 建议排序�   h   j          
        },�   g   i                      )�   f   h                          {"i", "s", "c"}�   e   g                          end,�   d   f                              end�   c   e          "                        fallback()�   b   d                              else�   a   c          %                        cmp.confirm()�   `   b                                  end�   _   a          X                            cmp.select_next_item({behavior = cmp.SelectBehavior.Select})�   ^   `          )                        if not entry then�   ]   _          >                        local entry = cmp.get_selected_entry()�   \   ^          )                    if cmp.visible() then�   [   ]          "                function(fallback)�   Z   \          7            [plugin_key.current_or_next] = cmp.mapping(�   Y   [          X            -- 会选择下一个，如果进入了选择框，tab 会确认当前选择�   X   Z          H            -- 类似于 IDEA 的功能，如果没进入选择框，tab�   W   Y                      ),�   V   X                          }�   U   W                              end�   T   V                                  end�   S   U          *                            cmp.complete()�   R   T                                  else�   Q   S          '                            cmp.close()�   P   R          -                        if cmp.visible() then�   O   Q          "                    c = function()�   N   P                              end,�   M   O                                  end�   L   N          *                            cmp.complete()�   K   M                                  else�   J   L          '                            cmp.abort()�   I   K          -                        if cmp.visible() then�   H   J          "                    i = function()�   G   I                          {�   F   H          7            [plugin_key.toggle_complete] = cmp.mapping(�   E   G          %            --  出现或关闭补全�   D   F          A            [plugin_key.confirm_current] = cmp.mapping.confirm(),�   C   E                      -- 选择补全�   B   D          K            [plugin_key.select_next_item] = cmp.mapping.select_next_item(),�   A   C          Y            -- ["<C-n>"] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior}),�   @   B          ?            -- 下一个（只有在确认时才选择补全）�   ?   A          K            [plugin_key.select_prev_item] = cmp.mapping.select_prev_item(),�   >   @          Y            -- ["<C-p>"] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior}),�   =   ?          ?            -- 上一个（只有在确认时才选择补全）�   <   >                  mapping = {�   ;   =          &        -- 绑定补全相关的按键�   :   <          
        },�   9   ;                      )�   8   :                          }�   7   9                              end�   6   8          '                        return vim_item�   5   7          U                        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"�   4   6          6                    before = function(entry, vim_item)�   3   5          "                    maxwidth = 50,�   2   4          %                    with_text = true,�   1   3                          {�   0   2          (            format = lspkind.cmp_format(�   /   1                  formatting = {�   .   0                   -- 格式化补全菜单�   -   /          
        ),�   ,   .                      }�   +   -          &                {name = "cmp_tabnine"}�   *   ,          !                {name = "spell"},�   )   +          #                {name = "cmdline"},�   (   *          "                {name = "buffer"},�   '   )                           {name = "path"},�   &   (          $                {name = "nvim_lsp"},�   %   '          !                {name = "vsnip"},�   $   &                      {�   #   %          %        sources = cmp.config.sources(�   "   $                  -- 指定补全源�   !   #          
        },�       "                      end�      !          4                vim.fn["vsnip#anonymous"](args.body)�                 &                -- 使用 vsnip 引擎�                #            expand = function(args)�                        snippet = {�                        -- 指定补全引擎�                    {�                9    ---@diagnostic disable-next-line: redundant-parameter�                
cmp.setup(�                 �                4vim.g.vsnip_snippet_dir = vim.u.platform_snippet_dir�                6local plugin_key = vim.u.keymap["nvim-cmp"].plugin_set�                local cmp = require("cmp")�                "local lspkind = require("lspkind")�                 �                8--    ~/.local/share/nvim/plugged/cmp-tabnine/install.sh�                9--    rm ~/.local/share/nvim/plugged/cmp-tabnine/binaries�                '-- 等字样时，需要手动执行：�                --    TabNine is not executable�                -- 当出现：�                2-- FIX: tabline 在某些计算机上有 1 个 BUG�                 �   
             )-- https://github.com/tzachar/cmp-tabnine�   	             8-- https://github.com/lukas-reineke/cmp-under-comparator�      
          2-- https://github.com/rafamadriz/friendly-snippets�      	          &-- https://github.com/f3fora/cmp-spell�                )-- https://github.com/hrsh7th/cmp-cmdline�                (-- https://github.com/hrsh7th/cmp-buffer�                &-- https://github.com/hrsh7th/cmp-path�                *-- https://github.com/hrsh7th/cmp-nvim-lsp�                '-- https://github.com/hrsh7th/cmp-vsnip�                '-- https://github.com/hrsh7th/vim-vsnip�                 &-- https://github.com/hrsh7th/nvim-cmp�   �   �          )5��    �                      �                     �                &       &           &       &       �               '       '   '       '       '       �               '       '   O       '       '       �               *       *   w       *       *       �               &       &   �       &       &       �               (       (   �       (       (       �               )       )   �       )       )       �               &       &         &       &       �               2       2   C      2       2       �    	           8       8   v      8       8       �    
           )       )   �      )       )       �                           �                      �               2       2   �      2       2       �                                             �                                             �               '       '   =      '       '       �               9       9   e      9       9       �               8       8   �      8       8       �                           �                      �               "       "   �      "       "       �                         �                    �               6       6         6       6       �               4       4   N      4       4       �                           �                      �               
       
   �      
       
       �               9       9   �      9       9       �                         �                    �                         �                    �                         �                    �               #       #         #       #       �               &       &   %      &       &       �               4       4   L      4       4       �                          �                    �    !           
       
   �      
       
       �    "                     �                    �    #           %       %   �      %       %       �    $                     �                    �    %           !       !   �      !       !       �    &           $       $         $       $       �    '                       2                      �    (           "       "   S      "       "       �    )           #       #   v      #       #       �    *           !       !   �      !       !       �    +           &       &   �      &       &       �    ,                     �                    �    -           
       
   �      
       
       �    .                       �                      �    /                                         �    0           (       (   4      (       (       �    1                     ]                    �    2           %       %   o      %       %       �    3           "       "   �      "       "       �    4           6       6   �      6       6       �    5           U       U   �      U       U       �    6           '       '   E      '       '       �    7                     m                    �    8                     �                    �    9                     �                    �    :           
       
   �      
       
       �    ;           &       &   �      &       &       �    <                     �                    �    =           ?       ?   �      ?       ?       �    >           Y       Y   +      Y       Y       �    ?           K       K   �      K       K       �    @           ?       ?   �      ?       ?       �    A           Y       Y   	      Y       Y       �    B           K       K   k	      K       K       �    C                     �	                    �    D           A       A   �	      A       A       �    E           %       %   
      %       %       �    F           7       7   ;
      7       7       �    G                     s
                    �    H           "       "   �
      "       "       �    I           -       -   �
      -       -       �    J           '       '   �
      '       '       �    K                     �
                    �    L           *       *         *       *       �    M                     F                    �    N                     b                    �    O           "       "   {      "       "       �    P           -       -   �      -       -       �    Q           '       '   �      '       '       �    R                     �                    �    S           *       *         *       *       �    T                     <                    �    U                     X                    �    V                     p                    �    W                     �                    �    X           H       H   �      H       H       �    Y           X       X   �      X       X       �    Z           7       7   3      7       7       �    [           "       "   k      "       "       �    \           )       )   �      )       )       �    ]           >       >   �      >       >       �    ^           )       )   �      )       )       �    _           X       X   !      X       X       �    `                     z                    �    a           %       %   �      %       %       �    b                     �                    �    c           "       "   �      "       "       �    d                     �                    �    e                                         �    f                     %                    �    g                     E                    �    h           
       
   S      
       
       �    i                     ^                    �    j                     v                    �    k                     �                    �    l                     �                    �    m                     �                    �    n                  "   �             "       �    o                     �                    �    p                                         �    q                     8                    �    r                     T                    �    s           	       	   n      	       	       �    t                     x                    �    u                     ~                    �    v                       �                      �    w                     �                    �    x                     �                    �    y                     �                    �    z                     �                    �    {                     �                    �    |                     �                    �    }           	       	   �      	       	       �    ~                     �                    �                                             �    �                                             �    �                                         �    �                                          �    �                     3                    �    �                     <                    �    �           %       %   B      %       %       �    �                     h                    �    �                     v                    �    �                     �                    �    �                     �                    �    �           "       "   �      "       "       �    �                     �                    �    �           	       	   �      	       	       �    �                     �                    �    �                      �                     5�_�                   l       ����                                                                                                                                                                                                                                                                                                                                                             b@    �   k   m   �                  compare.offset,5��    k                 	   �             	       �    k                     �                     5�_�                     l        ����                                                                                                                                                                                                                                                                                                                            l          s          V       b@    �   k   l                      cmp.conf.offset,               compare.exact,               compare.score,   "            compare.recently_used,               compare.kind,               compare.sort_text,               compare.length,               compare.order5��    k                      �      �               5�_�                   l       ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   k   m   �      #            --[[ compare.offset, ]]5��    k                     �             $       5�_�                    l       ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   k   m   �                  co.offset,5��    k                     �                     5�_�                   >   !    ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   =   ?   �      @            -- 上一个（只有c在确认时才选择补全）5��    =   !                                       5�_�                    >       ����                                                                                                                                                                                                                                                                                                                                                             b?�    �   =   ?   �      @            -- 上一个（只c有在确认时才选择补全）5��    =                     	                     5��