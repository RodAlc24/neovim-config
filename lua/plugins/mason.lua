return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
			},
		},
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
		},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			local mason_dap = require("mason-nvim-dap")

			mason_dap.setup({
				ensure_installed = {},
				automatic_installation = false,
				handlers = {
					function(config)
						mason_dap.default_setup(config)
					end,
				},
			})
		end,
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
	},
}
