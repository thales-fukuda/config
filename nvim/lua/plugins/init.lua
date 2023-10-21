return {
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {}
	},
	{ 'onsails/lspkind.nvim' },
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts) require 'lsp_signature'.setup(opts) end
	},
	{ 'junegunn/fzf' },
	{ 'junegunn/fzf.vim' },
	{ 'ojroques/nvim-lspfuzzy' },
	{ 'jose-elias-alvarez/null-ls.nvim' },
	{ 'MunifTanjim/prettier.nvim' },
	{ 'prisma/vim-prisma' },
	{ 'christoomey/vim-tmux-navigator' },
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			icon = true,
			group = true,
			multiline = true,
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
	},
	{
		'smoka7/hop.nvim',
		version = "*",
		opts = {},
	},
	{ 'nvim-tree/nvim-tree.lua' },
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{ "EdenEast/nightfox.nvim" },
	'nvim-treesitter/nvim-treesitter-textobjects',
	'numToStr/Comment.nvim',
}
