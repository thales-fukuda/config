-- Hop

require('hop').setup() -- https://github.com/smoka7/hop.nvim

local hop = require('hop')

vim.keymap.set('', 'f', function()
	hop.hint_char1()
end, { remap = true })
