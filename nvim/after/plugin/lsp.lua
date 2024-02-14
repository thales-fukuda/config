-- LSP

local lspconfig = require('lspconfig') -- https://github.com/neovim/nvim-lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- https://github.com/hrsh7th/cmp-nvim-lsp

-- PYTHON
lspconfig.pyright.setup {
	capabilities = capabilities
}

-- Typescript
lspconfig.tsserver.setup {
	capabilities = capabilities
}

-- Prisma
lspconfig.prismals.setup {
	capabilities = capabilities
}

lspconfig.gdscript.setup{}

-- Lua
lspconfig.lua_ls.setup {
	capabilities = capabilities,
	on_init = function(client)
		local path = client.workspace_folders[1].name
		if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
			client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
				Lua = {
					runtime = {
						version = 'LuaJIT'
					},
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME
						}
					}
				}
			})

			client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
		end
		return true
	end
}

-- Rust
lspconfig.rust_analyzer.setup {
	capabilities = capabilities,
	settings = {
		['rust-analyzer'] = {},
	},
}

-- LSP config
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'go', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	end,
})

-- Add Language server package manager (Mason)
require("mason").setup()
-- Add fuzzy finder to lsp go to definition
require('lspfuzzy').setup{} -- https://github.com/ojroques/nvim-lspfuzzy
