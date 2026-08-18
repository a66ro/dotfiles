vim.pack.add { 'https://github.com/sschleemilch/slimline.nvim' }
require('slimline').setup {
  style = 'fg',
  spaces = {
    components = '',
    left = '',
    right = '',
  },
  hl = {
    primary = 'StatusLine',
    secondary = 'StatusLineNC',
    base = 'StatusLine',
    base_inactive = 'StatusLineNC',
  },
  configs = {
    progress = {
      follow = false,
    },
  },
}
