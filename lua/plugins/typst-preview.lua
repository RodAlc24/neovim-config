return {
	"chomosuke/typst-preview.nvim",
	ft = "typst",
	version = "1.*",
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`

	vim.keymap.set("n", "<leader>TT", ":TypstPreview<cr>", { desc = "Typst Preview" }),
}
