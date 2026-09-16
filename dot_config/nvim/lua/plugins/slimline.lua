require('slimline').setup {
  style = 'fg',
  hl = {
    primary = 'StatusLine',
    secondary = 'StatusLineNC',
    base = 'StatusLine',
    base_inactive = 'StatusLineNC',
  },
  spaces = {
    components = '',
    left = '',
    right = '',
  },
  configs = {
    mode = {
      verbose = true,
    },

    progress = {
      follow = false,
    },
  },
}
