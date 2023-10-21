-- Telescope

local builtin = require('telescope.builtin') -- https://github.com/nvim-telescope/telescope.nvim

-- KEYMAPS --
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- find in directory
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- find in git
vim.keymap.set('n', '<leader>ps', function() -- find search term
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

