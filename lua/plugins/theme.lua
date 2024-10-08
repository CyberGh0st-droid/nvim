-- YT_CHANNEL: @VoylinsGamedevJourney
-- YT_VID: https://www.youtube.com/watch?v=9xTiuiomIy0&t=2001s

-- NOTE: this is the theme that I'm currently using though I'm looking for something with more light blue / cyan
return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({})
		vim.o.termguicolors = true
		vim.cmd("colorscheme kanagawa")
	end,
}
