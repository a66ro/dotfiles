require('fidget').setup {
  progress = {
    poll_rate = 0,

    suppress_on_insert = false,

    ignore_done_already = false,

    ignore_empty_message = false,

    clear_on_detach = function(client_id)
      local client = vim.lsp.get_client_by_id(client_id)
      return client and client.name or nil
    end,

    notification_group = function(msg)
      return msg.lsp_client.name
    end,

    ignore = {},

    display = {
      render_limit = 8,

      done_ttl = 2,

      done_icon = '✔',

      done_style = 'Constant',

      progress_ttl = math.huge,

      progress_icon = {
        'dots',
      },

      progress_style = 'WarningMsg',

      group_style = 'Title',

      icon_style = 'Question',

      priority = 30,

      skip_history = true,
    },

    lsp = {
      progress_ringbuf_size = 0,
      log_handler = false,
    },
  },

  notification = {
    poll_rate = 10,

    filter = vim.log.levels.INFO,

    history_size = 64,

    -- Keep Neovim's native notification system.
    override_vim_notify = false,

    window = {
      normal_hl = 'Comment',

      winblend = 100,

      border = 'none',

      zindex = 45,

      max_width = 0,

      max_height = 0,

      x_padding = 1,

      y_padding = 0,

      align = 'bottom',

      h_align = 'right',

      relative = 'editor',

      tabstop = 8,

      avoid = {},
    },
  },

  logger = {
    enable = false,
  },
}
