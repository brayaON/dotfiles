-- Packer plugins - B.O.F
-- @brayaon20

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer
  use "wbthomason/packer.nvim"

  -- Closes brackets after press Enter key
  use "rstacruz/vim-closer"

  -- Adds indentation guides to all lines
  use "lukas-reineke/indent-blankline.nvim"

  -- FuzzyFinder
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Autocompletion
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},
      {"hrsh7th/cmp-path"},
      {"hrsh7th/nvim-cmp"},
      {"saadparwaiz1/cmp_luasnip"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }

  -- Syntax highlight
  use {
    "nvim-treesitter/nvim-treesitter",
    requires = {
      "nvim-treesitter/nvim-treesitter-refactor",
      "RRethy/nvim-treesitter-textsubjects",
    },
  }

  -- Colorschemes
  use 'marko-cerovac/material.nvim'
  use 'jacoborus/tender.vim'
  use "rebelot/kanagawa.nvim"
  use "EdenEast/nightfox.nvim"
  use "sainnhe/everforest"

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Buffer line
  use { 'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons' }

  -- Comenter
  use 'numToStr/Comment.nvim'
end)
