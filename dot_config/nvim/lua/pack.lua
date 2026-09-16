vim.api.nvim_create_autocmd('PackChanged', {
  group = vim.api.nvim_create_augroup('user-pack-changed', {
    clear = true,
  }),

  callback = function(args)
    local data = args.data

    if not data then
      return
    end

    if data.kind ~= 'install' and data.kind ~= 'update' then
      return
    end

    if data.spec.name ~= 'nvim-treesitter' then
      return
    end

    if not data.active then
      vim.cmd.packadd('nvim-treesitter')
    end

    vim.cmd 'TSUpdate'
  end,
})
