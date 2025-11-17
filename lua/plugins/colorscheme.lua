return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd.colorscheme("gruvbox")

			-- delete the signcolumn highligh
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

			vim.api.nvim_set_hl(0, "CmpNormal", { link = "Normal" })
			vim.api.nvim_set_hl(0, "CmpBorder", { link = "Normal" })
			vim.api.nvim_set_hl(0, "CmpSelection", { link = "CursorLine" })
			vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
			vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
			vim.api.nvim_set_hl(0, "DiagnosticSignError", { link = "GruvboxRed" })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { link = "GruvboxOrange" })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { link = "GruvboxBlue" })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", { link = "GruvboxGreen" })
		end,
	},
}
