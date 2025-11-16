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
				"clangd",
				"lua_ls",
				"pyright",
				"texlab",
				"tinymist",
			},
		},
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"clang-format",
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"latexindent",
				"typstyle",
				"pgformatter",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			local mason_dap = require("mason-nvim-dap")

			mason_dap.setup({
				ensure_installed = {
					"cppdbg",
					"python",
				},
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
		},
	},
}
