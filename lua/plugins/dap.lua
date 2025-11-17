return {
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local ui = require("dapui")
		local dap_virtual_text = require("nvim-dap-virtual-text")

		-- Dap Virtual Text
		dap_virtual_text.setup({
			only_first_definition = false,
			all_references = true,
			virt_text_pos = "eol",
			virt_text_win_col = 80,
		})

		-- Dap UI
		ui.setup()
		dap.listeners.before.attach.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			ui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			ui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			ui.close()
		end

		-- Keybindings for DAP
		vim.keymap.set("n", "<F5>", ':lua require"dap".continue()<CR>', { silent = true, desc = "DAP continue" })
		vim.keymap.set("n", "<F10>", ':lua require"dap".step_over()<CR>', { silent = true, desc = "DAP step over" })
		vim.keymap.set("n", "<F11>", ':lua require"dap".step_into()<CR>', { silent = true, desc = "DAP step into" })
		vim.keymap.set("n", "<F12>", ':lua require"dap".step_out()<CR>', { silent = true, desc = "DAP step out" })
		vim.keymap.set(
			"n",
			"<leader>b",
			':lua require"dap".toggle_breakpoint()<CR>',
			{ silent = true, desc = "DAP toggle breakpoint" }
		)
	end,
}
