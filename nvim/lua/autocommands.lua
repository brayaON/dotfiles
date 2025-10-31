-- Autocommands - B.O.F
-- @brayaon20

vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = '*.lua',
  command = [[0read !printf "-- Description - B.O.F\n-- @brayaon20"]],
})

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Lua function
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = { '*.c', '*.h' },
  callback = function()
    print('Entering a C or C++ file')
  end,
})

-- VIM Command
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
  pattern = { '*.c', '*.h' },
  command = "echo 'Entering a C or C++ file'",
})
