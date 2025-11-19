return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.1.9",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-file-browser.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-project.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
			extensions = {
				project = {
					base_dirs = {
						vim.fn.stdpath("config"),
					},
					hidden_files = true,
					theme = "dropdown",
					order_by = "recent",
					search_by = "title",
					sync_with_nvim_tree = true,
				},
			},
			pickers = {
				spell_suggest = {
					initial_mode = "normal",
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("project")
		telescope.load_extension("file_browser")
		telescope.load_extension("ui-select")

		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files in cwd" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fp", "<cmd>Telescope project<cr>", { desc = "Find projects" })
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { desc = "Telescope file browser" })
		vim.keymap.set("n", "z=", "<cmd>Telescope spell_suggest<cr>", { desc = "Spell suggest" })
	end,
}
