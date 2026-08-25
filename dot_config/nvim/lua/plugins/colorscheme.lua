vim.pack.add {
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  -- "https://github.com/neanias/everforest-nvim"
  {
    src = 'https://github.com/rose-pine/neovim',
    name = 'rose-pine',
  },
}
require('rose-pine').setup {
  variant = 'main',
  styles = {
    bold = true,
    italic = false,
    transparency = false,
  },
}
-- require('catppuccin').setup {
--   flavour = 'mocha',
--   no_italic = true,
--   no_bold = false,
--   auto_integrations = true,
-- transparent_background = true,
--   integrations = {
--     telescope = true,
--   },
-- }
-- require("everforest").setup({
--   -- Your config here
--     background = 'hard',
-- })

-- vim.cmd.colorscheme 'catppuccin-nvim'
vim.cmd 'colorscheme rose-pine'
-- vim.cmd.colorscheme 'everforest'
