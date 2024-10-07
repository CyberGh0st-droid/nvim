return {
	-- CREDIT:
	-- GITHUB: @folke
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },

	opts = {
		signs = true,
		sign_priority = 8,

		keywords = {
			FIX = {
				icon = " ",
				color = "error",
				alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
			},

			-- WARN: @ symbol cannot be used in todo-comment tag
			TODO = { icon = " ", color = "info" },
			HACK = { icon = " ", color = "warning" },
			WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
			PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
			TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
			CREDIT = {
				icon = " ",
				color = "#00FFFF",
				alt = {
					"COMMEND", --COMMEND:
					"ATTRIBUTE",
					"ACKNOWLADGEMENT",
					"HAT_TIP",
					"RECOGNITION",
					"KUDOS",
					"CREDENCE_TO",
					"SPECIAL_THANKS_TO",
				},
			},
			YT = { icon = "󰗃 ", color = "#FF0000", alt = { "YT_VID", "YT_CHANNEL" } },
			REDDIT = { icon = " ", color = "#FF4500", alt = { "REDDITOR", "R/u/", "REDDIT" } },
			INSTAGRAM = { icon = "󰋾 ", color = "#5B51D8", alt = { "INSTA" } },
			X = { icon = " ", color = "#FFFFFF", alt = { "TWITTER", "TWEET" } },
			GITHUB = { icon = " ", color = "#FFFFFF", alt = { "GIT" } },
		},
		highlight = {
			multiline = true,
			multiline_pattern = "^.",
			multiline_context = 10,
			before = "",
			keyword = "wide",
			after = "fg",
			pattern = [[.*<(KEYWORDS)\s*:]],
			comments_only = true,
			max_line_len = 400,
			exclude = {}, --NOTE: List of filetypes to exclude
			throttle = 200, -- NOTE: no documentation on what this does though I would assume it's for optimization reasons
		},
	},
	-- NOTE: it seems using config function will not allow you to pass custom options in opts = {} table --
	--
	-- 	config = function()
	-- 		local todo_comments = require("todo-comments")
	--
	-- 		-- NOTE: Customize TODO comments
	-- 		local keymap = vim.keymap.set
	-- 		keymap("n", "]t", function()
	-- 			todo_comments.jump_next()
	-- 		end, { desc = "Next todo comment" })
	-- 		keymap("n", "[t]", function()
	-- 			todo_comments.jump_prev()
	-- 		end, { desc = "Previous todo Comment" })
	-- 		todo_comments.setup({ opts })
	-- 	end,
}
-- TODO:
-- HACK:
-- BUG:
-- FIXME:
-- NOTE:
-- PERF:
-- CREDIT:
-- ATTRIBUTE:
-- COMMEND:
-- ACKNOWLADGEMENT:
-- KUDOS:
-- HAT_TIP:
-- RECOGNITION:
-- CREDENCE_TO:
-- SPECIAL_THANKS_TO:
--
-- YT:
-- YT_VID:
-- YT_CHANNEL:
--
-- REDDIT:
-- REDDITOR:
-- R/u/: put reddit username herek
--
-- INSTA:
-- INSTAGRAM:
--
-- X:
-- TWITTER:
-- TWEET:
--
-- GITHUB:
-- GIT:
