-- Neovim configuration - B.O.F
-- @brayaon20

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
opt.termguicolors = true

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

keymap.set('n', '<leader>1', '<cmd>b1<cr>')
keymap.set('n', '<leader>2', '<cmd>b2<cr>')
keymap.set('n', '<leader>3', '<cmd>b3<cr>')
keymap.set('n', '<leader>4', '<cmd>b4<cr>')
keymap.set('n', '<leader>e','<cmd>bd<cr>')

-- Autocommands
local api = vim.api

api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.lua",
    command = [[0read !printf "-- Description - B.O.F\n-- @brayaon20"]]
})

-- api.nvim_create_autocmd("VimEnter", {
--     pattern = "*",
--     command = [[silent !tmux set status off]]
-- })
--
-- api.nvim_create_autocmd("VimLeave", {
--     pattern = "*",
--     command = [[silent !tmux set status on]]
-- })

-- Plugin setups
require("plugins")

-- Indent Blankline
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#1F1F1F gui=nocombine]]
require("ibl").setup()

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Treesitter
local treesitter = require('nvim-treesitter.configs')
treesitter.setup {
    ensure_installed = { "cpp", "lua", "python", "vim", "yaml", "go", "terraform", "bash" },
    highlight = {
	enable = true
    }
}

-- lsp-config
local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    "clangd",
    "lua_ls"
})

lsp.setup()

-- Colorscheme
-- vim.g.material_style = "darker"
vim.g.everforest_background = 'medium'
vim.cmd [[ colorscheme everforest ]]

-- Lualine
require("lualine").setup()

-- Bufferline
require("bufferline").setup()

-- Commenter
require("Comment").setup()
