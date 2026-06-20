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

			vim.system({ "touch", pdf_path })

			-- Force an update so the pdf is comiled
			local line_count = vim.api.nvim_buf_line_count(0)
			vim.api.nvim_buf_set_lines(0, line_count, line_count, false, { "" })
			vim.api.nvim_buf_set_lines(0, line_count, line_count + 1, false, {})

			vim.system({ "zathura", pdf_path })
		end
	end, {}),

	vim.keymap.set("n", "<leader>TT", ":TypstPreview<cr>", { desc = "Typst Preview" }),
}
