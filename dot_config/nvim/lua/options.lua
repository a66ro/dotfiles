vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local opt = vim.opt

-- Input / interaction
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'

-- Editing
opt.breakindent = true
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.shiftround = true

-- Files
opt.undofile = true
opt.swapfile = false

-- UI
opt.showmode = false
opt.signcolumn = 'yes:1'
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.guicursor = "i:block"

opt.list = true

opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}

-- Windows
opt.splitright = true
opt.splitbelow = true

-- Scrolling
opt.scrolloff = 10

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.inccommand = 'split'

-- Timing
opt.updatetime = 250
opt.timeoutlen = 300

-- Completion
opt.completeopt = {
  'menuone',
  'popup',
  'noinsert',
}

-- Misc
opt.confirm = true
opt.wrap = true
opt.winborder = 'rounded'
