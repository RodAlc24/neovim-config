return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"c",
				"cpp",
				"python",
				"java",
				"kotlin",
				"latex",
				"typst",
				"vimdoc",
				"vim",
				"json",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"dockerfile",
				"gitignore",
				"query",
			},
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

		-- use bash parser for zsh files
		vim.treesitter.language.register("bash", "zsh")
	end,
}
