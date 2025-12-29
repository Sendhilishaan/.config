-- telescope
local tele = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', tele.find_files, {desc = 'Telescope find files'})

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent" })
