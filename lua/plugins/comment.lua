return {
	"numToStr/Comment.nvim",
	event = {"BufReadPre", "BufNewFile"},
	config = function ()
		local comment = require("Comment")
		comment.setup({})
	end
}
