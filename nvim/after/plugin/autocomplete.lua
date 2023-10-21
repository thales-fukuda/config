-- Autocomplete
-- Autcomplete engine using the LSP capabilities.
-- Snippets using luasnip

local cmp = require('cmp') -- https://github.com/hrsh7th/nvim-cmp
local cmp_autopairs = require('nvim-autopairs.completion.cmp') -- https://github.com/windwp/nvim-autopairs
local luasnip = require("luasnip") -- https://github.com/L3MON4D3/LuaSnip

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	completion = { completeopt = 'menu,menuone,noinsert' },
	view = {
		entries = {name = 'custom', selection_order = 'near_cursor' }
	},
	snippet = {
		enabled = function()
			local context = require 'cmp.config.context'
			if vim.api.nvim_get_mode().mode == 'c' then
				return true
			else
				return not context.in_treesitter_capture("comment")
				and not context.in_syntax_group("Comment")
			end
		end,
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		-- Previous/Up
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),

		-- Next/Down
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),

		-- Confirm
		['<CR>'] = cmp.mapping.confirm({ select = true }),

		-- Configura TAB according to what is active
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
			local strings = vim.split(kind.kind, "%s", { trimempty = true })
			kind.kind = " " .. (strings[1] or "") .. " "
			kind.menu = "    [" .. (strings[2] or "") .. "]"

			return kind
		end,
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
	})
})


-- Automcomplete after selecting a function or method
cmp.event:on(
'confirm_done',
cmp_autopairs.on_confirm_done()
)

-- Load snipmate
require("luasnip.loaders.from_snipmate").lazy_load()
