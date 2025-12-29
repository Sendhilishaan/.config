local custom_cat = require'lualine.themes.catppuccin'
local color = '#15171e'
custom_cat.normal.c.bg = color

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
			theme = custom_cat

		}
	}
}
