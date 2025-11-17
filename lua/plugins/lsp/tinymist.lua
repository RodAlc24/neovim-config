return {
	vim.lsp.config("tinymist", {
		settings = {
			exportPdf = "onType",
		},
	}),

	vim.api.nvim_create_user_command("TypstPreview", function()
		local filepath = vim.api.nvim_buf_get_name(0)

		if filepath:match("%.typ$") then
			local pdf_path = filepath:gsub("%.typ$", ".pdf")

			vim.system({ "zathura", pdf_path })
		end
	end, {}),

	vim.keymap.set("n", "<leader>tt", ":TypstPreview<cr>", { desc = "Typst Preview" }),
}
