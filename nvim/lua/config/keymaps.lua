-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.g.mapleader = " "

-- Neotree keymaps
vim.keymap.set("n", "<leader>a", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":Neotree focus", { noremap = true, silent = true })

-- Telescope keymaps
vim.keymap.set("n", "<leader>f", require("telescope.builtin").find_files, { noremap = true, silent = true })
