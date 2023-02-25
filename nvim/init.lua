-- Neovim configuration - B.O.F

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
