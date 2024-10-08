-- NOTE: this makes it easier and more concise to define autocmds
local autocmd = vim.api.nvim_create_autocmd

-- NOTE: Create a highlight group to use for yanking.
-- guifg defines the foreground color wich will be used for the text color
-- guibg defines the background color which will be used for the text highlight
-- NOTE: this is the same as running highlight in cmd
vim.cmd("highlight YankHighlight guifg=#000000 guibg=#00FFFF")

-- NOTE: we define an autocmd that runs on the event [TextYankPost]
autocmd("TextYankPost", {
	-- NOTE: we give it a description
	desc = "Highlight when yanking text",

	-- NOTE: we add it to a group. this prevents overwriting other autocmd
	-- commands
	group = vim.api.nvim_create_augroup("Cyb3rVim-highlight-yank", { clear = true }),

	-- NOTE: we define the function we want to run when the event is triggered
	callback = function()
		-- NOTE: we call the highlight.on_yank() function and pass it the
		-- highlight group we want to use
		-- we defined the highlight group and the desired colors above
		vim.highlight.on_yank({ higroup = "YankHighlight" })
	end,
})
