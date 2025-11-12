return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		--		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.keymap.set(
					"n",
					"gR",
					"<cmd>Telescope lsp_references<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Show references" }
				)
				vim.keymap.set(
					"n",
					"gD",
					vim.lsp.buf.declaration,
					{ buffer = ev.buf, silent = true, desc = "LSP: Go to declaration" }
				)
				vim.keymap.set(
					"n",
					"gd",
					"<cmd>Telescope lsp_definitions<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Go to definition" }
				)
				vim.keymap.set(
					"n",
					"gi",
					"<cmd>Telescope lsp_implementations<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Go to implementation" }
				)
				vim.keymap.set(
					"n",
					"gT",
					"<cmd>Telescope lsp_type_definitions<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Go to type definition" }
				)
				vim.keymap.set(
					{ "n", "v" },
					"<leader>ca",
					vim.lsp.buf.code_action,
					{ buffer = ev.buf, silent = true, desc = "LSP: Code action" }
				)
				vim.keymap.set(
					"n",
					"<leader>rn",
					vim.lsp.buf.rename,
					{ buffer = ev.buf, silent = true, desc = "LSP: Rename symbol" }
				)
				vim.keymap.set(
					"n",
					"<leader>D",
					"<cmd>Telescope diagnostics bufnr=0<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Show buffer diagnostics" }
				)
				vim.keymap.set(
					"n",
					"<leader>d",
					vim.diagnostic.open_float,
					{ buffer = ev.buf, silent = true, desc = "LSP: Show line diagnostics" }
				)
				vim.keymap.set(
					"n",
					"<leader>k",
					vim.lsp.buf.hover,
					{ buffer = ev.buf, silent = true, desc = "LSP: Hover documentation" }
				)
				vim.keymap.set(
					"n",
					"<leader>rs",
					":LspRestart<CR>",
					{ buffer = ev.buf, silent = true, desc = "LSP: Restart server" }
				)
			end,
		})

		vim.o.winborder = "rounded"
		vim.diagnostic.config({
			virtual_text = false,
			float = {
				border = "rounded",
				source = "if_many",
				header = "",
				prefix = "",
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.HINT] = "󰠠 ",
					[vim.diagnostic.severity.INFO] = " ",
				},
			},
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		--vim.lsp.enable("ruff")
		vim.lsp.enable("pyright")
		vim.lsp.enable("clangd")
		vim.lsp.enable("tinymist")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("texlab")
		vim.lsp.enable("jsonls")
	end,
}
