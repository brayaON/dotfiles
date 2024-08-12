-- Description - B.O.F
-- @brayaon20

return {
  {
    'rebelot/kanagawa.nvim',
    opts = {
      background = { -- Available options: dragon, wave, and lotus
        dark = 'dragon',
        light = 'lotus',
      },
    },
  },
  {
    'sainnhe/everforest',
    init = function()
      vim.g.everforest_background = 'hard'
    end,
  },
}
