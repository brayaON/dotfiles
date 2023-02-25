-- Neovim configuration - B.O.F
-- @brayaon20

-- Common options
vim.o.autoindent = true
vim.o.number = true
vim.opt.clipboard:append("unnamedplus")
vim.o.shiftwidth = 4

-- Common mappings
vim.keymap.set('n', '+l', 'i{<Esc>ea}<Esc>')
vim.keymap.set('n', '+p', 'i(<Esc>ea)<Esc>')
vim.keymap.set('n', '+c', 'i"<Esc>ea"<Esc>')

-- Autocommands
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.cpp",
    command = "0read $HOME/dotfiles/nvim/templates/cp.cpp"
})
