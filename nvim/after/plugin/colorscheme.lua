-- Colorscheme

-- local nightfox = require("nightfox") -- https://github.com/EdenEast/nightfox.nvim
--
local Color, colors, Group, groups, styles = require('colorbuddy').setup {
	styles = {
		bold = true,
		italic = true
	}
}

Group.new('TelescopeTitle', colors.primary)
Group.new('@comment', colors.noir_7, nil, styles.italic)



-- Nightfox setup
-- noirbudy.setup({
-- 	-- options = {
-- 	-- 	styles = {
-- 	-- 		comments = "italic",
-- 	-- 		keywords = "bold",
-- 	-- 		types = "italic,bold",
-- 	-- 	}
-- 	-- }
-- 	--
-- 	preset = "minimal"
-- })

-- Setup colorscheme
-- vim.opt.background = "dark"
-- vim.cmd("colorscheme duskfox")

-- Set colors
-- local bg = "#121212"
-- local selection = "#282828"
--
-- -- Normal
-- vim.api.nvim_set_hl(0, "Normal", { bg = bg })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
--
-- -- Telescope
-- vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "" })
-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = bg })
-- vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = bg })
-- vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = bg })
-- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = bg })
-- vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { bg = bg, fg = bg })
-- vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = selection })
-- vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = selection, fg = selection})
-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = bg, fg = bg })
-- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = bg, fg = bg })
-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#3B4252" })
--
-- -- nvim-tree
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg, fg = "#ffffff" })
--
-- Line number column bg
vim.cmd("hi LineNr guibg=NONE")
--
-- Sign column bg
vim.cmd("hi SignColumn guibg=NONE")

--
Group.new('CursorLineNr', colors.primary, colors.noir_9)

