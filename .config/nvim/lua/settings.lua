local set = vim.opt
local g = vim.g
g.mapleader = " "
set.updatetime = 40
set.scrolloff = 10
set.ignorecase = true --unless \C
set.wildoptions = 'fuzzy'
set.path:append {"**"} -- search into subfolders
set.wildignore:append {"*/node_modules/*"} -- ignore
-- ui
set.title = true
set.guicursor = ""
set.cursorline = true
set.termguicolors = true
set.pumblend = 5
set.wrap = false
set.breakindent = true -- wrapline indent
set.showmode = false
set.signcolumn = "yes"
-- relative numbers
set.nu = true
set.rnu = true
-- indentation
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
-- backups
set.swapfile = false
set.backup = false
set.undofile = true
-- highlights
set.hlsearch = false
set.incsearch = true
-- LaText
g.vimtex_view_method = 'zathura'
