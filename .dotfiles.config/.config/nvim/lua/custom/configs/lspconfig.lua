local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = {
	-- web stuff
	"tsserver",
	"biome",
	"eslint",

	"html",

	"cssls",
	"tailwindcss",

	-- c/cpp stuff
	"clangd",

	-- shell stuff
	"bashls",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Typescript language server
local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
	}
	vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports",
		},
	},
})

-- Vue language options (volar)
lspconfig.volar.setup({
	filetypes = { "vue" },
	init_options = {
		typescript = {
			tsdk = "/home/tanx/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib",
			-- Alternative location if installed as root:
			-- tsdk = '/usr/local/lib/node_modules/typescript/lib'
		},
	},
})
