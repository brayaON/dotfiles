-- Neovim configuration - B.O.F
-- @brayaon20

require('options')

require('keymaps')

require('autocommands')

-- Check if Lazy is installed, otherwise install it
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Set Up Lazy Plugins
require('lazy').setup('plugins')

-- vim.cmd([[ colorscheme everforest ]])
vim.cmd([[ colorscheme kanagawa ]])
