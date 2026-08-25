vim.pack.add { 'https://github.com/stevearc/oil.nvim' }

local oil = require 'oil'
oil.setup {
  float = {
    max_width = 0.75,
    min_width = 0.75,
    max_height = 0.75,
    min_height = 0.75,
  },
}
-- vim.keymap.set('n', '<leader>e', function() oil.toggle_float() end, { desc = 'Open ' })
vim.keymap.set('n', '-', function() oil.toggle_float() end, { desc = 'Open Oil' })
