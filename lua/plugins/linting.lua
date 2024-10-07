-- YT: @joseanmartinez
-- YT_VID: https://www.youtube.com/watch?v=6pAG3BHurdM

return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- NOTE: Linting Languages
		local lint = require("lint")
		lint.linters_by_ft = {
			-- NOTE: Specify Languages here
			clang = { "cpplint" },
		}

		-- NOTE: Setup linting autocmd group
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- NOTE: create AutoCMD for linting when opening a buffer, new file or when leaving insert mode
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- NOTE: create keymap to manually start linting
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
