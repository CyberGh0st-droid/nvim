-- YT: @joseanmartinez
-- YT_VID: https://www.youtube.com/watch?v=6pAG3BHurdM

return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local comment = require("Comment")
		comment.setup({})
	end,
}
