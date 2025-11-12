return {
	vim.lsp.config("pyright", {
		settings = {
			python = {
				venvPath = ".",
				pythonPath = "./.venv/bin/python",
				analysis = {
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					diagnosticMode = "openFilesOnly",
				},
			},
		},
	}),
}
