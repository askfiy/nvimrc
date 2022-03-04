# README

## 前言

一份自用的 neovim 配置：

![](https://images-1302522496.cos.ap-nanjing.myqcloud.com/img/202203041747390.png)

启动时间：

![](https://images-1302522496.cos.ap-nanjing.myqcloud.com/img/202203041749894.png)

## 依赖项目

基本的依赖：

- [neovim > 0.5](https://link.zhihu.com/?target=https%3A//github.com/neovim/neovim/releases/latest)
- [gcc](https://gcc.gnu.org/)
- [nerd font](https://link.zhihu.com/?target=https%3A//www.nerdfonts.com/)
- [fd](https://link.zhihu.com/?target=https%3A//github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

其它的依赖

- tar curl git gzip wget
- node npm
- python3 pip3 pySocks

## 支持的语言

- Python
- Golang
- Node
- HTML
- CSS
- JavaScript
- TypeScript
- Vue
- Json
- SQL
- Markdown

## 目录介绍

目录结构：

```
.
├── ftplugin
├── init.lua
├── lint
├── lua
│   ├── basic
│   │   ├── config.lua
│   │   ├── keybinds.lua
│   │   ├── plugins.lua
│   │   └── settings.lua
│   ├── conf
│   ├── dap
│   └── lsp
└── snippet
```

目录说明：

- ftplugin：存放不同文件类型的缩进规则
- lint ：存放各种语言的代码检查配置文件
- basic ：存放基本配置项文件
- conf ：存放插件相关配置文件
- dap ：存放 DAP 相关配置文件
- lsp ：存放 LSP 相关配置文件
- snippet ：存放代码片段相关文件

文件说明：

- init.lua ：配置入口文件
- config.lua ：存放用户自定义配置的文件
- keybinds.lua：存放键位绑定的文件
- plugins.lua ：存放依赖插件的文件
- settings.lua：存放 neovim 基本配置项的文件
