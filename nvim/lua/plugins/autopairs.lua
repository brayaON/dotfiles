-- Will try to match (), '', "", [], and {} - B.O.F
-- @brayaon20

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup({})
  end,
}
