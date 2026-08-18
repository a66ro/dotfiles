vim.pack.add({ "https://github.com/folke/zen-mode.nvim" })

vim.keymap.set({ "n" }, "<leader>tz", require("zen-mode").toggle, { desc = "[T]oggle [Z]en mode" })
