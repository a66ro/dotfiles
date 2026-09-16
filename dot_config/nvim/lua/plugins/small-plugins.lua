require('smartcolumn').setup {
  colorcolumn = '80',
  disabled_filetypes = {
    'help',
    'text',
    'markdown',
    'mason',
    'lspinfo',
    'checkhealth',
    'qf',
    'oil',
  },
  custom_colorcolumn = {},
  scope = 'file',
  editorconfig = true,
}
require('todo-comments').setup { signs = false }

-- require('nvim-autopairs').setup { check_ts = true }

require('eyeliner').setup { dim = true }

-- require('ibl').setup {
--   indent = { char = '╎' },
--   scope = { enabled = false },
-- }
