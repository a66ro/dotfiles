require('conform').setup {
  notify_on_error = false,

  format_on_save = function(bufnr)
    local enabled_filetypes = {}

    if enabled_filetypes[vim.bo[bufnr].filetype] then return {
      timeout_ms = 500,
    } end

    return nil
  end,

  default_format_opts = {
    lsp_format = 'fallback',
  },

  formatters_by_ft = {
    go = { 'goimports' },
    rust = { 'rustfmt' },
    javascript = { 'prettierd', 'prettier', stop_after_first = true },
    json = { 'jq' },
    jsonc = { 'jq' },
    zsh = { 'shfmt' },
    sh = { 'shfmt' },
  },
}

vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
  require('conform').format {
    async = true,
  }
end, {
  desc = '[F]ormat buffer',
})
