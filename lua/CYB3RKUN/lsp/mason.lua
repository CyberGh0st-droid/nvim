return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()

		-- Import Mason
		local mason = require("mason")

		-- Import Mason LSPCONFIG

		local mason_lspconfig = require("mason-lspconfig")
		-- Setup Mason

		mason.setup({
			ensure_installed = {
				"lua_ls",
				"clang_d",
				"gdscript",
			}
		})
		-- Setup mason LSPCONFIG
	end,
}
