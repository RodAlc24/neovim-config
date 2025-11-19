return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			modules = {},
			sync_install = false,
			ignore_install = {},
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {},
			auto_install = true,
			additional_vim_regex_highlighting = false,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = "<C-CR>",
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
