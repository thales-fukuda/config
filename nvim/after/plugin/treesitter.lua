-- Treesitter

require 'nvim-treesitter.configs'.setup { -- https://github.com/nvim-treesitter/nvim-treesitter
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "rust" },
	sync_install = false,
	highlight = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			-- Add textobjects keymaps
			keymaps = {
				['af'] = '@function.outer',
				['if'] = '@function.inner',
				['ac'] = '@class.outer',
				['ic'] = '@class.inner',
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				[']'] = '@function.outer',
			},
			goto_prevevious_start = {
				['['] = '@function.outer',
			}
		}
	},
}
