return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = "markdown",
	build = function()
		require("lazy").load({ plugins = { "markdown-preview.nvim" } })
		vim.fn["mkdp#util#install"]()
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
