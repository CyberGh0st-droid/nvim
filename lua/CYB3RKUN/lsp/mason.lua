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

		mason.setup({})
		-- Setup mason LSPCONFIG
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				""
			},
			automatic_installation = true
		})
	end,
}
