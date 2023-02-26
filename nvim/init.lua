-- Neovim configuration - B.O.F
-- @brayaon20

-- Imports
require("plugins")

-- Common options
vim.g.mapleader = [[ ]]

local opt = vim.opt
opt.autoindent = true
opt.background = "dark"
opt.clipboard:append("unnamedplus")
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.smartindent = true

-- Common mappings
local keymap = vim.keymap
keymap.set('n', '+c', 'i"<Esc>ea"<Esc>')
keymap.set('n', '+l', 'i{<Esc>ea}<Esc>')
keymap.set('n', '+p', 'i(<Esc>ea)<Esc>')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')

keymap.set('n', '<leader>h', '<c-w>h')
keymap.set('n', '<leader>j', '<c-w>j')
keymap.set('n', '<leader>k', '<c-w>k')
keymap.set('n', '<leader>l', '<c-w>l')

-- Autocommands
local api = vim.api
api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.cpp",
    command = "0read $HOME/dotfiles/nvim/templates/cp.cpp"
})

api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.lua",
    command = [[0read !printf "-- Description - B.O.F\n-- @brayaon20"]]
})
