return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	config = function()
		local autopairs = require("nvim-autopairs")
		local Rule = require("nvim-autopairs.rule")

		-- configure autopairs with treesitter
		autopairs.setup({ check_ts = true })

		-- math mode in typst
		autopairs.add_rule(Rule("$", "$", "typst"):with_move(function(opts)
			local prev_char = opts.line:sub(opts.col - 1, opts.col - 1)
			return prev_char ~= "\\"
		end):with_pair(function(opts)
			local prev_char = opts.line:sub(opts.col - 1, opts.col - 1)
			local next_char = opts.line:sub(opts.col, opts.col)
			return prev_char ~= "\\" and next_char ~= "$"
		end))
	end,
}
