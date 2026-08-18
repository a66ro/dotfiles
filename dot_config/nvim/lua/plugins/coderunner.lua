vim.pack.add { 'https://github.com/CRAG666/code_runner.nvim' }

local code_runner = require 'code_runner'

code_runner.setup {
  filetype = {
    python = 'python3 -u',
  },
}

vim.keymap.set('n', '<leader>rr', code_runner.run_code, { desc = '[R]un', noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', function()
  local cmd = vim.fn.input 'Cmd: '
  code_runner.run_from_fn(cmd)
end, { desc = 'Run [F]ile', noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', code_runner.run_project, { desc = 'Run [P]roject', noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', code_runner.run_close, { desc = '[C]lose', noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
