return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button(
				"r",
				"  Recently used files",
				":Telescope frecency workspace=CWD path_display={'shorten'}<CR>"
			),
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("g", "󱎸  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("p", "  Find project", ":Telescope project <CR>"),
			dashboard.button("b", "  File explorer", ":Telescope file_browser<CR>"),
			dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "alpha",
			callback = function()
				vim.opt_local.foldenable = false
			end,
		})
	end,
}
