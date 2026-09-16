-- require('blink.cmp').build():pwait()
require('blink.cmp').setup {
  keymap = {
    preset = 'default',
  },

  appearance = {
    nerd_font_variant = 'normal',
  },

  completion = {
    documentation = {
      auto_show = false,
      auto_show_delay_ms = 500,
      window = {
        border = 'rounded',
      },
    },

    menu = {
      border = 'none',
    },
  },

  sources = {
    default = {
      'lsp',
      'path',
      'snippets',
    },
  },
  -- Use Neovim's native vim.snippet engine.
  snippets = {
    preset = 'default',
  },

  fuzzy = {
    implementation = 'rust',
  },

  signature = {
    enabled = true,

    window = {
      border = 'padded',
    },

    trigger = {
      show_on_trigger_character = false,
      show_on_insert_on_trigger_character = false,
    },
  },
}
