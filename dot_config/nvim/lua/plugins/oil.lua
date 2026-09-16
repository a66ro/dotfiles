local oil = require 'oil'

-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

oil.setup {
  float = {
    max_width = 0.80,
    max_height = 0.80,
  },
  win_options = {
    winbar = "%!v:lua.get_oil_winbar()",
  },
  skip_confirm_for_simple_edits = true,
}
-- vim.keymap.set('n', '<leader>e', function() oil.toggle_float() end, { desc = 'Open ' })
-- vim.keymap.set('n', '-', function() oil.toggle_float() end, { desc = 'Open Oil' })
vim.keymap.set('n', '-', "<CMD>Oil<CR>", { desc = 'Open Oil' })
