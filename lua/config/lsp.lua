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
			"<leader>gT",
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
		vim.keymap.set("n", "<leader>k", function()
			vim.lsp.buf.hover({ border = "single" })
		end, { buffer = ev.buf, silent = true, desc = "LSP: Hover documentation" })
		vim.keymap.set(
			"n",
			"<leader>rs",
			":LspRestart<CR>",
			{ buffer = ev.buf, silent = true, desc = "LSP: Restart server" }
		)
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	float = {
		border = "single",
		source = "if_many",
		header = "",
		prefix = "",
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "󱐋",
			[vim.diagnostic.severity.INFO] = "󰙎",
		},
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
