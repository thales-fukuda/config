-- EDIT --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line down on visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line up in visual mmode
vim.keymap.set("n", "J", "mzJ`z")

-- CENTER WHEN MOVING --
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- when using C-d mantain cursor at the middle row
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- when sugin C-u mantain cursor at the middle row
vim.keymap.set("n", "n", "nzzzv")       -- when searching mantain cursor in the middle
vim.keymap.set("n", "N", "Nzzzv")       -- when searchin mantain cursor in the middle

-- COPY/PASTE/DELETE --
vim.keymap.set("x", "<leader>p", [["_dP]])         -- when copy above selection send selection to void buffer and mantain copy in buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete into the void buffer
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- copy to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])          -- copy to clipboard

-- SEARCH --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- REMOVE KEYMAP --
vim.keymap.set("n", "Q", "<nop>") -- remove Q

-- OTHER --
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- format document
