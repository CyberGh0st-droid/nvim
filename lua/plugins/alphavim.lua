return {
	"goolord/alpha-nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	-- WARN: MAKE SURE TO USE JetBrains Mono FONT OR THIS WON'T DISPLAY AS INTENDED
	-- AND ALSO MAKE SURE TO USE CORRECT FONT SIZE OR IT WILL GET RIPPED APART
	config = function()
		-- NOTE: Import Alpha
		local alpha = require("alpha")

		-- NOTE: setup
		local dashboard = require("alpha.themes.dashboard")

		local time = os.date("%H:%M")
		local date = os.date("%a %d %b")
		local v = vim.version()
		local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

		-- CREDIT:
		-- GITHUB: @cyb3rkun
		-- REDDIT: @Cyb3r-Kun
		-- YT: @Cyb3r-Kun
		--
		-- yes I created this header but it's based of one I saw in @typecraft_dev s playlist called neovim for newbs
		-- YT: @typecraft_dev
		-- YT_VID: https://www.youtube.com/watch?v=iXIwm4mCpuc&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&index=5
		dashboard.section.header.val = {
			[[                                                        ]],
			[[                                                        ]],
			[[                                                        ]],
			[[                                                        ]],
			[[       █████████████                ███████         ]],
			[[      █████████████                █   ██         ]],
			[[      ████  ███  ████████████       █████████ ]],
			[[     ████     ██ █  ██  █████████ ██  █ ]],
			[[    ████       ████ ████████      ██████████  ]],
			[[  █████████████ ██  ██  ██   ██ ██   ██   ]],
			[[ ██████████████ █ ████████ ███████████  ██   ]],
			[[ 󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞███󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞 ]],
			[[                                                        ]],
			[[                ██████                              ]],
			[[                 ███  █  █                          ]],
			[[                 ███ █                                ]],
			[[                 ████ ██ ████                 ]],
			[[                 ████  █  ████                 ]],
			[[                 ███  ██ █████                 ]],
		}
		-- CREDIT:
		-- GITHUB: @RchrdAriza/NvimOnMy_way
		-- R/u/: @Deathgasm_69
		dashboard.section.buttons.val = {
			dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰮗   Find file", ":Telescope find_files<CR>"),
			dashboard.button("e", "   File Explorer", ":Neotree<CR>"),
			dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("c", "   Configuration", ":e ~/.config/nvim/lua/CYB3RKUN/init.lua<CR>"),
			dashboard.button("R", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
			dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
		}
		-- NOTE: function to calculate the position of the text so that it can be centered
		local function centerText(text, width)
			local totalPadding = width - #text
			local leftPadding = math.floor(totalPadding / 2)
			local rightPadding = totalPadding - leftPadding
			return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
		end

		dashboard.section.footer.val = {
			centerText("Welcom to Cyb3rVim", 50),
			" ",
			centerText("NvimOnMy_Way", 50),
			centerText(date, 50),
			centerText(time, 50),
			centerText(version, 50),
		}

		-- NOTE: Send the config to alpha
		alpha.setup(dashboard.opts)

		-- NOTE: Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
