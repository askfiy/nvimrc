Vim�UnDo� � �D� ܐ�S"�OŠn)@�P���җ3
��y   )                                  bC�    _�                     )        ����                                                                                                                                                                                                                                                                                                                                                             bAX     �   )               �   )            5��    )                      >                     �    )                      >                     �    *                      ?                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             bAY     �   *              print5��    *                     D                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             bAZ     �   *              print()5��    *                     E                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             bAZ     �   *              	print("")5��    *                     F                     �    *                     L                     �    *                     K                     �    *                     J                     �    *   
                  I                     �    *   	                  H                     �    *                     G                     �    *                    F                    �    *                     T                     �    *                     S                     �    *                     R                     �    *                     Q                     �    *                     P                     �    *                     O                     �    *                     N                     �    *                     M                     �    *                     L                     �    *                     K                     �    *                     J                     �    *   
                  I                     �    *   	                  H                     �    *                     G                     �    *                    F                    5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             bA]    �   *              print("nvim-treesitter")5��    *                    F                    �    *                    F                    5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             bC�    �   *   +          print("nvim-treesitter")5��    *                      ?                     5�_�                     )        ����                                                                                                                                                                                                                                                                                                                                                             bC�    �   (            �   '   )              }�   &   (          	        }�   %   '                      enable = true�   $   &          !        context_commentstring = {�   #   %          c        -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供�   "   $          
        },�   !   #          >            -- termcolors = {} -- table of colour name strings�       "          3            -- colors = {}, -- table of hex strings�      !                       extended_mode = true�                             enable = true,�                        rainbow = {�                :        -- 彩虹括号，由 nvim-ts-rainbow 插件提供�                
        },�                            enable = false�                        indent = {�                        -- 缩进�                
        },�                >            keymaps = plugin_key.incremental_selection_keymaps�                            enable = true,�                !        incremental_selection = {�                        -- 范围选择�                
        },�                5            additional_vim_regex_highlighting = false�                G            -- 使用 treesitter 高亮而不是 neovim 内置的高亮�                            enable = true,�                !            -- 启用高亮支持�                        highlight = {�                        -- 高亮相关�                        sync_install = false,�   
             #        -- 同步下载高亮支持�   	             (        ensure_installed = "maintained",�      
          &        -- 安装的高亮支持来源�      	              {�                )require("nvim-treesitter.configs").setup(�                 �                =local plugin_key = vim.u.keymap["nvim-treesitter"].plugin_set�                 �                A-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring�                *-- https://github.com/p00f/nvim-ts-rainbow�                 5-- https://github.com/nvim-treesitter/nvim-treesitter�   (   )          )    5��    (                      <                     �                5       5           5       5       �               *       *   6       *       *       �               A       A   a       A       A       �                           �                       �               =       =   �       =       =       �                           �                       �               )       )   �       )       )       �                                             �               &       &         &       &       �    	           (       (   :      (       (       �    
           #       #   c      #       #       �                         �                    �                         �                    �                         �                    �               !       !   �      !       !       �                         �                    �               G       G         G       G       �               5       5   X      5       5       �               
       
   �      
       
       �                         �                    �               !       !   �      !       !       �                         �                    �               >       >   �      >       >       �               
       
   -      
       
       �                         8                    �                         J                    �                         ]                    �               
       
   x      
       
       �               :       :   �      :       :       �                         �                    �                         �                    �                           �                      �                3       3         3       3       �    !           >       >   B      >       >       �    "           
       
   �      
       
       �    #           c       c   �      c       c       �    $           !       !   �      !       !       �    %                                         �    &           	       	   ,      	       	       �    '                     6                    �    (                      <                     5��