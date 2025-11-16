return {
	"eandrju/cellular-automaton.nvim",
	config = function()
		vim.keymap.set(
			"n",
			"<leader>pr",
			"<cmd>CellularAutomaton make_it_rain<CR>",
			{ desc = "CellularAutomaton make_it_rain" }
		)
		vim.keymap.set(
			"n",
			"<leader>ps",
			"<cmd>CellularAutomaton scramble<CR>",
			{ desc = "CellularAutomaton scramble" }
		)
		vim.keymap.set(
			"n",
			"<leader>pg",
			"<cmd>CellularAutomaton game_of_life<CR>",
			{ desc = "CellularAutomaton game_of_life" }
		)
	end,
}
