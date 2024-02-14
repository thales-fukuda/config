-- Surround

require('nvim-surround').setup({ -- https://github.com/kylechui/nvim-surround
	keymaps = {
		-- Change add keymap from ys to s
		normal = "s"
	},
	surrounds = {
		-- Add alias for doublequotes
		["q"] = {
			add = function()
				return { { '"' }, { '"' } }
			end
		},
		-- Add alias for backticks
		["Q"] = {
			add = function()
				return { { "`" }, { "`" } }
			end
		},
		-- Add alias for backticks + curlybracets
		["c"] = {
			add = function()
				return { { "{`" }, { "`}" } }
			end
		}
	},
})

