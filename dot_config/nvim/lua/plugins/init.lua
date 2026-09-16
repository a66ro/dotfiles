local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  -- Completion
  gh 'saghen/blink.lib',
  gh 'saghen/blink.cmp',
  gh 'rafamadriz/friendly-snippets',

  -- LSP
  gh 'neovim/nvim-lspconfig',
  gh 'mason-org/mason.nvim',
  gh 'mason-org/mason-lspconfig.nvim',
  gh 'WhoIsSethDaniel/mason-tool-installer.nvim',
  gh 'j-hui/fidget.nvim',

  -- Colorscheme
  {
    src = gh 'rose-pine/neovim',
    name = 'rose-pine',
  },

  -- Formatting
  gh 'stevearc/conform.nvim',

  -- Git
  gh 'lewis6991/gitsigns.nvim',

  -- Navigation / marks
  {
    src = gh 'vieitesss/miniharp.nvim',
    version = vim.version.range 'v*',
  },

  -- Mini
  gh 'nvim-mini/mini.nvim',

  -- Statusline
  -- gh 'sschleemilch/slimline.nvim',
  -- gh 'nvim-lualine/lualine.nvim',

  -- UI / editing
  gh 'm4xshen/smartcolumn.nvim',
  -- gh 'windwp/nvim-autopairs',
  gh 'cosmicbuffalo/eyeliner.nvim',
  gh 'folke/todo-comments.nvim',

  -- File manager
  gh 'stevearc/oil.nvim',

  -- Search
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
  gh 'nvim-telescope/telescope-ui-select.nvim',

  -- Treesitter
  {
    src = gh 'nvim-treesitter/nvim-treesitter',
    version = 'main',
  },

  -- Other UI
  gh 'folke/which-key.nvim',

  -- Run code / preview / tmux
  gh 'CRAG666/code_runner.nvim',
  gh 'brianhuster/live-preview.nvim',
  gh 'aserowy/tmux.nvim',

  -- Native Telescope sorter
  {
    src = gh 'nvim-telescope/telescope-fzf-native.nvim',
  },
}

-- Configure plugins only after every package has been registered.
require 'plugins.treesitter'
require 'plugins.blink-cmp'
require 'plugins.coderunner'
require 'plugins.colorscheme'
require 'plugins.conform'
require 'plugins.fidget'
require 'plugins.gitsigns'
require 'plugins.harpoon'
require 'plugins.mini'
require 'plugins.oil'
-- require 'plugins.slimline'
require 'plugins.lualine'
require 'plugins.small-plugins'
require 'plugins.telescope'
require 'plugins.tmux'
require 'plugins.which-key'
