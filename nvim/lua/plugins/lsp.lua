-- no need to add specific language servers, mason does that for all installed
-- just add to blink
return {
	'neovim/nvim-lspconfig',
	dependencies = {
	{
		"folke/lazydev.nvim",
	    	ft = "lua",
	    	opts = {
	      		library = {
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
	      		},
			},
		},
		{ 'saghen/blink.cmp' },
	},
	opts = {
		servers = {
			-- add servers here to add to blink
			lua_ls = {},
			pyright = {},
			clangd = {},
			rust_analyzer = {}
		}
	},
	config = function()
		local capabilities = require('blink.cmp').get_lsp_capabilities()
		vim.lsp.config('lua_ls', {capabilities = capabilities})
		vim.lsp.config('pyright', {capabilities = capabilities})
		vim.lsp.config('clangd', {capabilities = capabilities})
		vim.lsp.config('rust_analyzer', {capabilities = capabilities})
	end,
}
