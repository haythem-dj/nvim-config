-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Display
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.scrolloff = 8

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Update time
vim.opt.updatetime = 50

-- Other options
vim.o.whichwrap = "b,s,<,>,[,],h,l"
vim.o.clipboard = "unnamedplus"
vim.opt.guicursor = "n-v-c-i:block"
