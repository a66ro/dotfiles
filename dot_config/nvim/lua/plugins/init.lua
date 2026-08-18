local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'plugins')
for file_name, type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (type == 'file' or type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    local module = file_name:gsub('%.lua$', '')
    require('plugins.' .. module)
  end
end

-- require 'plugins.colorscheme'
-- require 'plugins.treesitter'
-- require 'plugins.blink-cmp'
-- require 'plugins.conform'
-- require 'plugins.telescope'
-- require 'plugins.gitsigns'
-- require 'plugins.mini'
-- require 'plugins.slimline'
-- require 'plugins.small-plugins'
-- require 'plugins.which-key'
-- require 'plugins.harpoon'
-- require 'plugins.zen-mode'
