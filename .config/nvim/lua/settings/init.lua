local set = vim.opt

--General
set.number = true
set.fileencoding = "utf-8"
set.hidden = true
set.spelllang = "en-gb"
set.mouse = "a"
set.cursorline = true

--Colours
set.termguicolors = false
vim.cmd("colorscheme wal")

--Indentation
set.expandtab = false
set.tabstop = 4
set.shiftwidth = 4

--Searching
set.incsearch = true
set.hlsearch = true
set.ignorecase = true
set.smartcase = true

--Screens
set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8
