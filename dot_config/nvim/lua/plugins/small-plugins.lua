vim.pack.add {
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/brianhuster/live-preview.nvim',
  'https://github.com/m4xshen/smartcolumn.nvim',
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/cosmicbuffalo/eyeliner.nvim',
  'https://github.com/stevearc/oil.nvim',
}

local smartcolumnConfig = {
  colorcolumn = '80',
  disabled_filetypes = {
    'help',
    'text',
    'markdown',
    'mason',
    'lspinfo',
    'checkhealth',
    'minifiles',
    'qf',
  },
  custom_colorcolumn = {},
  scope = 'file',
  editorconfig = true,
}

require('smartcolumn').setup(smartcolumnConfig)
require('todo-comments').setup {}
require('nvim-autopairs').setup {
  check_ts = true,
}
require('eyeliner').setup {
  dim = true,
}
local oil = require 'oil'
oil.setup {
    float = {
        max_width = 0.75,
        min_width = 0.75,
        max_height = 0.75,
        min_height = 0.75,
    }
}
-- vim.keymap.set('n', '<leader>e', function() oil.toggle_float() end, { desc = 'Open ' })
vim.keymap.set('n', '-', function() oil.toggle_float() end, { desc = 'Open Oil' })
