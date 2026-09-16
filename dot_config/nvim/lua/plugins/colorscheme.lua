require('rose-pine').setup {
  variant = 'main',
  styles = {
    bold = true,
    italic = false,
    transparency = false,
  },
  palette = {
    main = {
      pine = '#3e8fb0',
    },
  },
  highlight_groups = {
    --   TelescopeBorder = { fg = 'overlay', bg = 'overlay' },
    --   TelescopeNormal = { fg = 'subtle', bg = 'overlay' },
    --   TelescopeSelection = { fg = 'text', bg = 'highlight_med' },
    --   TelescopeSelectionCaret = { fg = 'love', bg = 'highlight_med' },
    --   TelescopeMultiSelection = { fg = 'text', bg = 'highlight_high' },
    --
    --   TelescopeTitle = { fg = 'base', bg = 'love' },
    --   TelescopePromptTitle = { fg = 'base', bg = 'pine' },
    --   TelescopePreviewTitle = { fg = 'base', bg = 'iris' },
    --
    --   TelescopePromptNormal = { fg = 'text', bg = 'surface' },
    --   TelescopePromptBorder = { fg = 'surface', bg = 'surface' },
    ['@keyword.operator'] = { fg = 'pine' },
  },
}

vim.cmd.colorscheme 'rose-pine'
