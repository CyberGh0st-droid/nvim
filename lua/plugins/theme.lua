-- YT_CHANNEL: @VoylinsGamedevJourney
-- YT_VID: https://www.youtube.com/watch?v=9xTiuiomIy0&t=2001s

return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({})
		vim.o.termguicolors = true
		vim.cmd("colorscheme kanagawa")
	end,
}
