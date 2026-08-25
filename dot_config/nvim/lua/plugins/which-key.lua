-- Useful plugin to show you pending keybinds.
vim.pack.add { 'https://github.com/folke/which-key.nvim' }
require('which-key').setup {
  -- Delay between pressing a key and opening which-key (milliseconds)
  delay = 200,
  preset = "helix",
  icons = { mappings = vim.g.have_nerd_font },
  -- Document existing key chains
  spec = {
    { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
    { '<leader>m', group = '[M]arks', mode = { 'n' } },
    { 'gr', group = 'LSP Actions', mode = { 'n' } },
    { '<leader>r', group = 'CodeRunner', mode = { 'n' } },
  },
}

-- vim: ts=2 sts=2 sw=2 et
