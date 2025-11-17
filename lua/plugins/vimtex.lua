return {
	"lervag/vimtex",
	lazy = false, -- not recommended to lazy load it
	init = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.tex_flavor = "latex"
		vim.g.tex_conceal = ""
		vim.g.vimtex_fold_manual = 1
		vim.g.vimtex_compiler_progname = "nvr"
		vim.g.vimtex_compiler_latexmk = {
			build_dir = "",
			callback = 1,
			continuous = 1,
			executable = "latexmk",
			hooks = {},
			options = {
				"-verbose",
				"-file-line-error",
				"-synctex=1",
				"-interaction=nonstopmode",
				"-shell-escape",
			},
		}
	end,
	-- default keymap: <Space>ll toggle vimtex preview
}
