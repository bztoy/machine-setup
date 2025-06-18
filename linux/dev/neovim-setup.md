# Neovim setup

## nvim config's home dir
.config/nvim

## The entry point
init.lua
## put all lua config files in lua dir
lua
- config
- plugins

## current configuration tree
.config
|----nvim
     |----init.lua
     |----lua
          |----config
               |----keybinds.lua
               |----lazy.lua
               |----options.lua
          |----plugins
               |----colors.lua
               |----harpoon.lua
               |----init.lua
               |----lsp.lua
               |----lualine.lua
               |----one-liners.lua
               |----telescope.lua
               |----treesitter.lua
     |----plugin
          |----flterm.lua



source the file to apply changes by :so command

### options
lua/options.lua
### key biding
lua/keybinds.lua

## Plugin - manager
### lazy (link)[https://github.com/folke/lazy.nvim]
lua/lazy.lua

## Plugins
### colorscheme
- Tokyo Night
https://github.com/folke/tokyonight.nvim

- Catppuccin
https://github.com/catppuccin/nvim

- lau line
https://github.com/nvim-lualine/lualine.nvim

note: 
after install lazy.lua there will be an error message of there is no plugin found in the specify dir
this is okay

### File operation

- Telescope
!! prerequisite
- repgrep
- fd

https://github.com/nvim-telescope/telescope.nvim

- Neovim Treesitter
https://github.com/nvim-treesitter/nvim-treesitter

#### Commands
InspectTree
TSUpdate


# TODO
- LSP config
nvim-lspconfig https://github.com/neovim/nvim-lspconfig

- harpoon
require('harpoon'):list():remove()
require("harpoon"):list():remove_at(n)


- one-liners
* nvim-highlight-colors https://github.com/brenoprata10/nvim-highlight-colors
* undotree https://github.com/mbbill/undotree
* vim-oscyank https://github.com/ojroques/vim-oscyank
* vim-doge https://github.com/kkoomen/vim-doge
* fugitive.vim https://github.com/tpope/vim-fugitive

## references
(tonybanters)[https://github.com/tonybanters/nvim]
