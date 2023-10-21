-- Diagnostics

local trouble = require("trouble") -- https://github.com/folke/trouble.nvim

-- KEYMAPS --

-- Toggle trouble
vim.keymap.set("n", "<leader>xx", function() trouble.toggle() end)

-- Open diagnostics for workspace
vim.keymap.set("n", "<leader>xw", function() trouble.toggle("workspace_diagnostics") end)

-- Open diagnostics for document
vim.keymap.set("n", "<leader>xd", function() trouble.toggle("document_diagnostics") end)

-- Toggle quickfix options
vim.keymap.set("n", "<leader>xq", function() trouble.toggle("quickfix") end)

-- Toggle locationlist
vim.keymap.set("n", "<leader>xl", function() trouble.toggle("loclist") end)

-- References
vim.keymap.set("n", "gR", function() trouble.toggle("lsp_references") end)
