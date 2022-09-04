local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Defaults
vim.opt.termguicolors = true
o.compatible = false
o.syntax = "on"
o.errorbells = false
o.smartcase = true
o.showmode = false
o.hlsearch = false
o.cursorline = true
bo.swapfile = false
o.backup = false
o.writebackup = false
o.updatetime = 300
o.undodir = vim.fn.stdpath("config") .. "/.undo"
o.undofile = true
o.incsearch = true
o.hidden = true
o.completeopt = "menuone,noinsert,noselect"
bo.autoindent = true
bo.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.cc = "120"
o.shiftwidth = 2
o.expandtab = true
wo.number = true
wo.relativenumber = true
wo.signcolumn = "yes"
wo.wrap = true

vim.g.mapleader = " "

local opts = {
	noremap = true,
	silent = true,
}

vim.keymap.set("n", "<C-j>", "<C-w>W", opts)
vim.keymap.set("n", "<C-k>", "<C-w>w", opts)
vim.keymap.set("n", "<C-l>", "<C-w>>", opts)
vim.keymap.set("n", "<C-h>", "<C-w><", opts)
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("c", "jj", "<Esc>", opts)
