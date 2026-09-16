local api = vim.api

api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',

  group = api.nvim_create_augroup('highlight-yank', {
    clear = true,
  }),

  callback = function()
    vim.hl.hl_op()
  end,
})

api.nvim_create_autocmd('LspAttach', {
  group = api.nvim_create_augroup('lsp-attach', {
    clear = true,
  }),

  callback = function(event)
    local function map(keys, func, desc, mode)
      mode = mode or 'n'

      vim.keymap.set(mode, keys, func, {
        buffer = event.buf,
        desc = 'LSP: ' .. desc,
      })
    end

    map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

    map(
      'gra',
      vim.lsp.buf.code_action,
      '[G]oto Code [A]ction',
      { 'n', 'x' }
    )

    map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

    local client = vim.lsp.get_client_by_id(event.data.client_id)

    if not client then
      return
    end

    if client:supports_method(
      'textDocument/documentHighlight',
      event.buf
    ) then
      local highlight_group = api.nvim_create_augroup(
        'lsp-document-highlight',
        { clear = false }
      )

      api.nvim_create_autocmd(
        { 'CursorHold', 'CursorHoldI' },
        {
          buffer = event.buf,
          group = highlight_group,
          callback = vim.lsp.buf.document_highlight,
        }
      )

      api.nvim_create_autocmd(
        { 'CursorMoved', 'CursorMovedI' },
        {
          buffer = event.buf,
          group = highlight_group,
          callback = vim.lsp.buf.clear_references,
        }
      )

      api.nvim_create_autocmd('LspDetach', {
        buffer = event.buf,

        group = api.nvim_create_augroup(
          'lsp-document-highlight-detach',
          { clear = false }
        ),

        callback = function()
          vim.lsp.buf.clear_references()

          api.nvim_clear_autocmds {
            group = highlight_group,
            buffer = event.buf,
          }
        end,
      })
    end

    if client:supports_method(
      'textDocument/inlayHint',
      event.buf
    ) then
      map(
        '<leader>th',
        function()
          local enabled = vim.lsp.inlay_hint.is_enabled {
            bufnr = event.buf,
          }

          vim.lsp.inlay_hint.enable(
            not enabled,
            { bufnr = event.buf }
          )
        end,
        '[T]oggle Inlay [H]ints'
      )
    end
  end,
})
