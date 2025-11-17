return {
	"monaqa/dial.nvim",

	config = function()
		local dial = require("dial.augend")
		require("dial.config").augends:register_group({
			-- default augends used when no group name is specified
			default = {
				dial.integer.alias.binary, -- Binary numbers (positive) (0b101011)
				dial.integer.alias.decimal_int, -- Decimal numbers (positive or negative)
				dial.integer.alias.hex, -- Hexadecimal numbers (positive) (0x12ab23)
				dial.integer.alias.octal, -- Octal numbers (positive) (0o123)
				dial.constant.alias.bool, -- Boolean values (true <-> false)
				dial.date.alias["%d/%m/%Y"], -- Date (dd/mm/yyyy)
				dial.semver.alias.semver, -- Version code (0.2.3)
				dial.constant.new({ -- and <-> or
					elements = { "and", "or" },
					word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc.
					cyclic = true, -- "or" is incremented into "and".
				}),
				dial.constant.new({ -- || <-> &&
					elements = { "&&", "||" },
					word = false,
					cyclic = true,
				}),
				dial.constant.new({ -- True <-> False
					elements = { "True", "False" },
					word = true,
					cyclic = true,
				}),
				dial.constant.new({ -- TRUE <-> FALSE
					elements = { "TRUE", "FALSE" },
					word = true,
					cyclic = true,
				}),
			},

			-- Other groups example
			-- augends used when group with name `mygroup` is specified
			mygroup = {
				dial.integer.alias.decimal, -- Decimal numbers (positive)
				dial.date.alias["%m/%d/%Y"], -- Date (02/19/2022, etc.)
			},
		})

		local map = require("dial.map")

		vim.keymap.set("n", "<C-a>", function()
			map.manipulate("increment", "normal")
		end, { desc = "Increment (with dial plugin)" })

		vim.keymap.set("n", "<C-x>", function()
			map.manipulate("decrement", "normal")
		end, { desc = "Decrement (with dial plugin)" })

		vim.keymap.set("v", "<C-a>", function()
			map.manipulate("increment", "visual")
		end, { desc = "Increment (with dial plugin)" })

		vim.keymap.set("v", "<C-x>", function()
			map.manipulate("decrement", "visual")
		end, { desc = "Decrement (with dial plugin)" })
	end,
}
