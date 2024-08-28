# Neovim config 
This is my current personal neovim config.

## Plugins 
I do not use a plugin manager so here I have the plugins

### Plugins list ####
- #### [Fugitive](https://github.com/tpope/vim-fugitive) 
    To use git commands from Neovim.

- #### [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    Find files. 
    ##### Dependencies: 
    - [Planneary](#planneary)
    - _Rip grep installed._

- #### [Oil](https://github.com/stevearc/oil.nvim) 
    Edit a directory as a buffer. 
    ##### Dependencies: 
    - [Nvim web devicons](#nvim-web-devicons)

- #### [MarkdownPreview](https://github.com/iamcco/markdown-preview.nvim)
    Get an explorer window to preview markdown files. Live update and scroll.

- #### [Vim dadbod ui](https://github.com/kristijanhusak/vim-dadbod-ui)
    UI to use databases from vim.
    ##### Dependencies: 
    - [Vim Dadbod](#vim-dadbod)

### Dependency list.
_This is what you need to make the other plugins work._
- #### [Planneary](https://github.com/nvim-lua/plenary.nvim)

- #### [Nvim web devicons](https://github.com/nvim-tree/nvim-web-devicons)
    _Needs a NerdFont to work._

- #### [Vim Dadbod](https://github.com/tpope/vim-dadbod)

### Install plugins
#### Windows 
To install the plugins in windows without
using a plugin manager you need to install plugins in the
directory:
``` %USERPROFILE%\AppData\Local\nvim-data\site\pack\<vendor>\start\<plugin> ```

Example: 
``` %USERPROFILE%\AppData\Local\nvim-data\site\pack\tpope\start\vim-fugitive ```

#### Linux 
To install the plugins in linux without using a plugin
manager you need to install plugins in the directory:
``` ~/.config/nvim/pack/<vendor>/start/<plugin> ```

Example: 
``` ~/.config/nvim/pack/tpope/start/vim-fugitive ```


## Language servers 
[This guide](https://vonheikemen.github.io/devlog/tools/neovim-lsp-client-guide/) from VonHeikemen is really helpful to set up your LSPs _"by hand"_.

_When configuring language servers that work with npm (node) on a Windows OS you might need to call the .cmd/ps1 version that you will find in the global path for npm ```%AppData%/npm/```._ 

#### [Lua](https://github.com/LuaLS/lua-language-server)
#### [Python](https://github.com/python-lsp/python-lsp-server)
#### [Typescript/Javascript](https://github.com/typescript-language-server/typescript-language-server)
