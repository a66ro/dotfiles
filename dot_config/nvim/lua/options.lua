vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.o.mouse = 'a'

-- Sync with system clipboard
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Enable break indent
vim.o.breakindent = true

-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.scrolloff = 10

vim.o.confirm = true

-- vim.opt.guicursor = "i:block" -- Use block cursor in insert mode
vim.opt.signcolumn = 'yes:1' -- Always show sign column
vim.opt.termguicolors = true -- Enable true colors
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.swapfile = false -- Disable swap files
vim.opt.autoindent = true -- Enable auto indentation
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces for a tab
vim.opt.softtabstop = 4 -- Number of spaces for a tab when editing
vim.opt.shiftwidth = 4 -- Number of spaces for autoindent
vim.opt.shiftround = true -- Round indent to multiple of shiftwidth
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.list = true -- Show whitespace characters
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
-- vim.opt.numberwidth = 2 -- Width of the line number column
vim.opt.wrap = true -- Enable line wrapping
vim.opt.cursorline = true -- Highlight the current line
vim.opt.inccommand = 'split' -- Shows the effects of a command incrementally in the buffer
vim.opt.undofile = true -- Enable persistent undo
vim.opt.completeopt = { 'menuone', 'popup', 'noinsert' } -- Options for completion menu
vim.opt.winborder = 'rounded' -- Use rounded borders for windows
vim.opt.hlsearch = true -- Disable highlighting of search results


-------------------------------------------------------------------------------
--- UI2
require('vim._core.ui2').enable()

-- vim.cmd.filetype 'plugin indent on' -- Enable filetype detection, plugins, and indentation
