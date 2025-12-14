return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	keys = {
		{
			"<leader>mm",
			"<cmd>MarkdownPreviewToggle<cr>",
			desc = "Markdown Preview",
			ft = "markdown",
		},
	},
	config = function()
		vim.api.nvim_exec_autocmds("FileType", {})
	end,
}
