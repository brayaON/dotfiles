-- Common vim.options configuration - B.O.F
-- @brayaon20
vim.g.mapleader = [[ ]] -- Space key is my leader

vim.opt.background = 'dark'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a' -- Enable mouse in all modes

-- Sync OS and Neovim clipboards
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Case-insensitive searching, unless the search contains a capital letter.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Swap file is written to the disk after 250ms, instead of 4s.
vim.opt.updatetime = 250

-- By default vsplit opens the tab on left and split opens the tab above.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions as you type.
vim.opt.inccommand = 'split'

vim.opt.cursorline = true
vim.opt.scrolloff = 10
