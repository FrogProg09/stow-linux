-- Basic functions
--          by Frogprog (https://github.com/FrogProg09/)
--          year 2026

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus' -- copy to the system clipboard
vim.opt.mouse = 'a' -- enable mouse
vim.opt.fillchars:append({ eob = ' ' }) -- get rid of the ~ and the end of the file
vim.opt.undofile = true  -- remember changes of files
vim.g.mapleader = ' ' -- set leader key

-- tabs

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
