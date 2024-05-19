local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"bash",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",
		"python",
	},
	indent = {
		enable = true,
		-- disable = {
		-- 	"python",
		-- },
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettierd",
		"eslint-lsp",

		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- shell stuff
		"bash-language-server",
		"shellcheck",
		"shfmt",

		"hyprlang",

		-- python stuff
		"pyright",
		"flake8",
		"black",
	},
}

-- colorize indent lines
M.blankline = {
	indent = {
		highlight = {
			"IndentBlanklineIndent1",
			"IndentBlanklineIndent2",
			"IndentBlanklineIndent3",
			"IndentBlanklineIndent4",
			"IndentBlanklineIndent5",
			"IndentBlanklineIndent6",
		},
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

-- github copilot setup
M.copilot = {
	suggestion = {
		enable = false,
	},
	panel = {
		enable = false,
	},
}
-- copilot integration in nvim-cmp
M.nvimcmp = {
	sources = {
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "luasnip", group_index = 2 },
		{ name = "buffer", group_index = 2 },
		{ name = "nvim_lua", group_index = 2 },
		{ name = "path", group_index = 2 },
		{ name = "copilot", group_index = 2 },
	},
}

M.colorizer = {
	filetypes = {
		"*",
	},
	user_default_options = {
		RGB = true, -- #RGB hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		names = true, -- "Name" codes like Blue
		RRGGBBAA = true, -- #RRGGBBAA hex codes
		rgb_fn = true, -- CSS rgb() and rgba() functions
		hsl_fn = true, -- CSS hsl() and hsla() functions
		css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
		tailwind = true,
		mode = "background", -- Set the display mode.
	},
}

M.ccc = {
	highlighter = {
		auto_enable = false,
		lsp = false,
	},
}
M.noice = {
	lsp = {
		hover = {
			enable = false,
		},
		signature = {
			enable = false,
		},
	},
}
return M
