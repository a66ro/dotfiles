require('mason').setup {}

require('mason-lspconfig').setup {
  automatic_enable = false,
}

require('fidget').setup {}

---@type table<string, vim.lsp.Config>
local mason_servers = {
  -- vtsls = {},
  -- standardjs = {},
  -- superhtml = {},
  tsc = {},
  stylua = {},
  lua_ls = {},
  basedpyright = {},
  -- clangd = {},
  -- gopls = {},
  -- goimports = {},
  tombi = {},
  prettier = {},
  shfmt = {},
}

local ensure_installed = vim.tbl_keys(mason_servers)

require('mason-tool-installer').setup {
  ensure_installed = ensure_installed,

  integrations = {
    ['mason-lspconfig'] = true,
  },

  auto_update = false,
  run_on_start = true,
}

for name, server in pairs(mason_servers) do
  vim.lsp.config(name, server)
  vim.lsp.enable(name)
end
