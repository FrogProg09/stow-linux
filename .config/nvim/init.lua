-- MAIN NVIM CONFIG
--          by Frogprog (https://github.com/FrogProg09/)
--          year 2026

vim.deprecate = function() end -- disable the useless warning

require('options') -- basic things

vim.keymap.set('n', '<Leader>t', ':vsplit term://$SHELL<CR>') -- open vertical term

-- lazy.nvim bootstrap 

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
