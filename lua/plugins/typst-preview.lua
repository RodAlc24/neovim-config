return {
	vim.lsp.config("tinymist", {
		settings = {
			exportPdf = "onType",
			outputPath = "/tmp/$name",
		},
	}),

	vim.api.nvim_create_user_command("TypstPreview", function()
		local filepath = vim.api.nvim_buf_get_name(0)

		if filepath:match("%.typ$") then
			local basename = vim.fn.fnamemodify(filepath, ":t:r")
			local pdf_path = "/tmp/" .. basename .. ".pdf"

			vim.system({ "zathura", pdf_path })
		end
	end, {}),

	vim.keymap.set("n", "<leader>TT", ":TypstPreview<cr>", { desc = "Typst Preview" }),
}
