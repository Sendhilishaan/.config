require("config.lazy")
require("config.keymaps")

-- lsp settigns
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
vim.lsp.buf.hover()
vim.lsp.enable('lua_ls')

-- global settings and such
vim.opt.winborder = "rounded"
vim.opt.clipboard:append("unnamedplus")

-- errors and such
vim.diagnostic.config({
	signs = false,
	virtual_text = true
})

-- background colors (after theme)
local color = '#15191e'
vim.cmd.colorscheme "catppuccin"

vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "DarkGrey"})
vim.api.nvim_set_hl(0, "LineNrAbove", {fg = "DarkGrey"})
vim.api.nvim_set_hl(0, "LineNrbelow", {fg = "DarkGrey"})
vim.api.nvim_set_hl(0, "StatusLine", {fg = "#15171e"})

-- line nums
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- misc opts
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4
