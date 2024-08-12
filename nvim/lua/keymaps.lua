-- Common keymaps - B.O.F
-- @brayaon20

-- Clear highlights on search patterns
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Enclosing
vim.keymap.set('n', '+c', 'i"<Esc>ea"<Esc>') -- ""
vim.keymap.set('n', '+l', 'i{<Esc>ea}<Esc>') -- {}
vim.keymap.set('n', '+p', 'i(<Esc>ea)<Esc>') -- ()

-- Saving & quitting
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>')
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')

-- Tab movement
vim.keymap.set('n', '<leader>h', '<c-w>h')
vim.keymap.set('n', '<leader>j', '<c-w>j')
vim.keymap.set('n', '<leader>k', '<c-w>k')
vim.keymap.set('n', '<leader>l', '<c-w>l')
