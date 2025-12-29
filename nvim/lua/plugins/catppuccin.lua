local color = '#15191e';
return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup {
			flavour = "auto",
			custom_highlights = function()
				return {
					StatusLine = { bg = color },
					Normal = { bg = color },
					NormalFloat = { bg = color },
					NormalNC = { bg = color },
					SignColumn = { bg = color },
					MsgArea = { bg = "#15171e" }
				}
			end
		}
	end,
}
