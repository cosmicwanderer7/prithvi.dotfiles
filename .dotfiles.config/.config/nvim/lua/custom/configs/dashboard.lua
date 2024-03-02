local header = {
	"",
	"█▀█ █▀█ █ ▀█▀ █░█ █░█ █  ░  █▄░█ █░█ █ █▀▄▀█",
	"█▀▀ █▀▄ █ ░█░ █▀█ ▀▄▀ █  ▄  █░▀█ ▀▄▀ █ █░▀░█",
	"",
	"",
}
require("dashboard").setup({
	theme = "hyper",
	config = {
		header = header,
		week_header = { enable = false },
		packages = { enable = false },
		footer = {},
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				desc = " LazyGit",
				group = "DiagnosticHint",
				action = "LazyGit",
				key = "gg",
			},
			{
				desc = " dotfiles",
				group = "Number",
				action = "cd ~/.config",
				key = "d",
			},
		},
	},
})
