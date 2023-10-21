-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({ -- https://github.com/nvim-tree/nvim-tree.lua
	actions = {
		open_file = {
			quit_on_open = true
		}
	},
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFileToggle!<cr> <C-w>o")
