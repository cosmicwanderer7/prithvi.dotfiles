local lint = require("lint")

lint.linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	typescriptreact = { "eslint_d" },
	javascriptreact = { "eslint_d" },
	lua = { "luacheck" },
	sh = { "shellcheck" },
	bash = { "shellcheck" },
	zsh = { "shellcheck" },
	yaml = { "yamllint" },
	scss = { "stylelint" },
	css = { "stylelint" },
	html = { "htmlhint" },
	vue = { "vls" },
	python = { "flake8" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		lint.try_lint()
	end,
})
