local overrides = require("configs.overrides")

return {
	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		opts = overrides.blankline,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"NvChad/nvim-colorizer.lua",
		opts = overrides.colorizer,
	},

	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = { { "nvim-treesitter/nvim-treesitter" } },
	},

	-- formating
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},

	--linting
	{
		"mfussenegger/nvim-lint",
		event = "InsertEnter",
		config = function()
			require("configs.lint")
		end,
		enabled = false,
	},

	-- github copilot
	-- {
	--   "zbirenbaum/copilot.lua",
	--   enabled = false,
	--   event = "InsertEnter",
	--   opts = overrides.copilot,
	-- },

	-- copilot integration for nvim-cmp and copilot-cmp
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			-- {
			--   "zbirenbaum/copilot-cmp",
			--   config = function()
			--     require("copilot_cmp").setup()
			--   end,
			-- },
		},
		opts = overrides.nvimcmp,
	},

	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		lazy = true,
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	-- project wide search and replace
	{
		"nvim-pack/nvim-spectre",
		cmd = "Spectre",
		opts = { open_cmd = "noswapfile vnew" },
	},

	-- colors
	{
		"uga-rosa/ccc.nvim",
		cmd = "CccPick",
		opts = overrides.ccc,
	},

	-- Lazy Git
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
	},

	-- Scrollbar
	{
		"dstein64/nvim-scrollview",
		event = "BufEnter",
		lazy = true,
	},

	{ "hrsh7th/cmp-nvim-lsp-signature-help" },

	{
		"numToStr/Comment.nvim",
		config = function()
			require("configs.comment")
		end,
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{
		"mattn/emmet-vim",
		ft = {
			"html",
			"css",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		},
		cmd = "Emmet",
	},

	{
		"Fymyte/rasi.vim",
		ft = { "rasi" },
	},

	{
		"elkowar/yuck.vim",
		ft = { "yuck" },
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = overrides.noice,
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
		},
	},

	{
		"barrett-ruth/live-server.nvim",
		build = "npm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = true,
	},
	-- Greeting Screen
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("configs.dashboard")
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
