return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			-- list of servers for mason to install
			ensure_installed = {
				"clangd",
				"lua_ls",
				"pyright",
				"texlab",
				"tinymist",
			},
		},
		dependencies = {
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
			"neovim/nvim-lspconfig",
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
}
