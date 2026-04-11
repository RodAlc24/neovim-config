return {
	"brenoprata10/nvim-highlight-colors",
	config = function()
		require("nvim-highlight-colors").setup({
			render = "background", -- 'background'|'foreground'|'virtual'
			virtual_symbol = "■",
			virtual_symbol_prefix = "",
			virtual_symbol_suffix = " ",
			virtual_symbol_position = "inline", -- 'inline'|'eol'|'eow'

			enable_hex = true, -- #af235d
			enable_short_hex = true, -- #ffa
			enable_rgb = true, -- 'rgb(0 0 0)'
			enable_hsl = true, -- 'hsl(150deg 30% 40%)'
			enable_ansi = true, -- '\033[0;34m'
			enable_xterm256 = true, -- '\033[38;5;118m'
			enable_xtermTrueColor = true, -- '\033[38;2;118;64;90m'
			enable_hsl_without_function = true, -- 'foreground: 0 69% 69%;'
			enable_var_usage = true,
			enable_named_colors = true, -- green
			enable_tailwind = false, -- 'bg-blue-500'

			exclude_filetypes = {},
			exclude_buftypes = {},
		})
	end,
}
