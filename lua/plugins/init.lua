return {
  -- Theme
  { 'folke/tokyonight.nvim', lazy = false, priority = 1000, config = function() require('plugins.theme') end },

  -- Homepage
  { 'goolord/alpha-nvim', config = function() require('plugins.alpha') end },

  -- File Explorer
  { 'nvim-tree/nvim-tree.lua', config = function() require('plugins.nvim-tree') end },

  -- Status line
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, config = function() require('plugins.lualine') end },

  -- Fuzzy Finder
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, config = function() require('plugins.telescope') end },

  -- Syntax Highlighting
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', config = function() require('plugins.treesitter') end },

  -- Autopairs
  { 'windwp/nvim-autopairs', config = function() require('plugins.autopairs') end },

  -- Comments
  { 'numToStr/Comment.nvim', config = function() require('plugins.comment') end },

  -- Git
  { 'lewis6991/gitsigns.nvim', config = function() require('plugins.gitsigns') end },

  -- Keymap helper
  { 'folke/which-key.nvim', config = function() require('plugins.which-key') end },

  -- =======================================================================
  -- LSP AND AUTOCOMPLETION SECTION (UPDATED)
  -- =======================================================================

  -- Mason: To install LSPs, Linters, and Formatters
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },

  -- lsp-zero: To simplify LSP configuration
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason-lspconfig.nvim' }, -- Bridge between mason and lspconfig

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function()
      -- This is the same lsp.lua file as before
      require('plugins.lsp')
    end,
  },
}
