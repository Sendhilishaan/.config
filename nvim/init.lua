-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.keymaps")

vim.api.nvim_set_hl(0, "Normal", { bg = "#15191e" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#15191e" })
