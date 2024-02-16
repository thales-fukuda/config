-- LINE NUMBERS --
vim.opt.nu = true -- print the line number in front of each line
vim.opt.relativenumber = true -- show relative line number in front of each line

-- INDENTATION --
vim.opt.tabstop = 4 -- number of spaces that <Tab> in file uses
vim.opt.softtabstop = 4 -- number of spaces that <Tab> uses while editing
vim.opt.shiftwidth = 4 -- number of spaces to use for (auto)indent step
vim.optexpandtab = true -- use spaces when <Tab> is inserted

vim.opt.smartindent = true -- smart autoindenting for C programs
vim.opt.wrap = true -- long lines wrap and continue on the next line

-- SEARCH --
vim.opt.hlsearch = false -- highlight matches with last search patte
vim.opt.incsearch = true -- highlight match while typing search pattern

-- SCROLL -- 
vim.opt.scrolloff = 16 -- minimum nr. of lines above and below cursor
vim.opt.signcolumn = "yes:2" -- when and how to display the sign column
-- vim.opt.foldcolumn = "yes:4"

-- CURSOR --
vim.opt.cursorline = true -- highlight the screen line of the cursor
vim.opt.cursorlineopt = "number" -- settings for 'cursorline'

-- OTHER --
vim.opt.isfname:append("@-@") -- characters included in file names and pathnames
vim.opt.updatetime = 50 -- after this many milliseconds flush swap file
vim.opt_local.cmdheight = 0 -- number of lines to use for the command-line



