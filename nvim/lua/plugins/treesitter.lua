-- Highlight, edit, and navigate code - B.O.F
-- @brayaon20
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        {
          ensure_installed = {
            'c',
            'lua',
            'python',
            'vim',
            'yaml',
            'bash',
            'markdown',
            'go',
            'html',
            'terraform',
            'cpp',
          },
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },
        },
      })
    end,
  },
}
