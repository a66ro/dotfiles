vim.loader.enable(true)

-- Disable builtin plugins that are replaced or unused.
-- These must be set before plugin loading begins.
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tutor = 1
vim.g.loaded_rplugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchit = 1

require('options')
require('autocmds')
require('pack')
require('keymaps')
require('plugins')
require('lsp')
