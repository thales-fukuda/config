-- Telescope

local builtin = require('telescope.builtin') -- https://github.com/nvim-telescope/telescope.nvim
local telescope = require('telescope')

-- KEYMAPS --
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- find in directory
vim.keymap.set('n', '<C-p>', builtin.git_files, {})       -- find in git
vim.keymap.set('n', '<leader>ps', function()              -- find search term
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

telescope.setup {
	defaults = {
		layout_config = {
			prompt_position = "top",
		},
		preview = false,
	},
	pickers = {
		find_files = {
			theme = "dropdown",
		}
	},
}
