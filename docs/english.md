# README

## Preface

A self-use neovim configuration:

![](https://images-1302522496.cos.ap-nanjing.myqcloud.com/img/202203041747390.png)

Start Time:

![](https://images-1302522496.cos.ap-nanjing.myqcloud.com/img/202203041749894.png)

## Dependent projects

Basic dependencies:

- [neovim > 0.5](https://link.zhihu.com/?target=https%3A//github.com/neovim/neovim/releases/latest)
- [gcc](https://gcc.gnu.org/)
- [nerd font](https://link.zhihu.com/?target=https%3A//www.nerdfonts.com/)
- [fd](https://link.zhihu.com/?target=https%3A//github.com/sharkdp/fd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

other dependencies

- tar curl git gzip wget
- node npm
- python3 pip3 pySocks

## Supported languages

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

## Directory introduction

Directory Structure:

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

Directory Description:

- ftplugin:Indentation rules for storing different file types
- lint :Stores various code inspection configuration files for languages
- basic:Store basic configuration item files
- conf :Store plugin related configuration files
- dap :Store DAP related configuration files
- lsp :Store LSP related configuration files
- snippet :Store code snippet related files

file description

- init.lua : Configuration entry file
- config.lua : The file that stores the user-defined configuration
- keybinds.lua: The file that stores the key bindings
- plugins.lua : Store files that depend on plugins
- settings.lua: The file that stores the basic configuration items of neovim
