return {
	"goolord/alpha-nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim"
	},
	-- MAKE SURE TO USE JetBrains Mono FONT OR THIS WON'T DISPLAY AS INTENDED
	config = function()
		local alpha = require("alpha")
		local config = require("alpha.themes.theta").config
		local dashboard = require("alpha.themes.startify")
		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[       ██████████████              ████████         ]],
			[[      ██████████████              █    ██         ]],
			[[      ████  ███  ████████████       █████████ ]],
			[[     ████     ██ █  ██  █████████ ██  █ ]],
			[[    ████       ████ ████████      ██████████  ]],
			[[  █████████████ ██  ██  ██   ██ ██   ██   ]],
			[[ ██████████████ █ ████████ ███████████  ██   ]],
			[[ 󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞███󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞󰹞 ]],
			[[                                                        ]],
			[[               ██   ██ ██                            ]],
			[[                ██  ███                               ]],
			[[                 ██ ███ ██ ███████               ]],
			[[                  █████ ███ █████████               ]],
			[[                   █████ ███ ███ ███ ███               ]],
			[[                    ████ ███ ███ ███ ███              ]],
		}
--		config.section.header.val = {
--			[[                                                                       ]],
--			[[                                                                       ]],
--			[[                                                                       ]],
--			[[                                                                       ]],
--			[[                                                                     ]],
--			[[       ████ ██████           █████      ██                     ]],
--			[[      ███████████             █████                             ]],
--			[[      █████████ ███████████████████ ███   ███████████   ]],
--			[[     █████████  ███    █████████████ █████ ██████████████   ]],
--			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
--			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
--			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
--			[[                                                                       ]],
--			[[                                                                       ]],
--			[[                                                                       ]],
--		}

		alpha.setup(dashboard.opts)
	end,
}
