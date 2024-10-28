-- Set leader to <space>
vim.g.mapleader = " "

-- Line numbering to display line of current row and relative for other rows
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false -- don't show mode, as there is plugin for it
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.syntax = "on" -- Show LUA syntax
vim.opt.termguicolors = true -- Needed by colorizer

-- file encoding
local enc = "utf-8"
vim.opt.encoding = enc
vim.opt.fileencoding = enc
vim.opt.fileencodings = enc

vim.opt.backspace = { "indent", "eol", "start" } -- enable normal behavior of backspace
vim.opt.history = 1000 -- keep history of changes

vim.opt.tabstop = 2 -- change tab to 4 spaces
vim.opt.shiftwidth = 2 -- change indentation-related setting

vim.opt.ruler = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

-- searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.showcmd = true
vim.opt.wrap = true
vim.opt.cc = "80"

-- list charracters
vim.opt.list = true
vim.opt.listchars = { tab = "►-", space = "·", nbsp = "⎵" }

vim.opt.inccommand = "split"

vim.opt.autowriteall = false
vim.opt.modifiable = true
