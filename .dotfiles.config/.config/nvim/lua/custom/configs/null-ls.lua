local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.code_actions.eslint_d,

  -- b.formatting.deno_fmt,
  b.formatting.prettierd,

  -- b.diagnostics.eslint,
  b.diagnostics.eslint_d,

  -- c/cpp
  b.diagnostics.clang_check,

  --python
  b.diagnostics.flake8,

  --java
  b.diagnostics.checkstyle.with({ extra_args = { "-c", "/google_checks.xml" } }),

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = on_attach,
})
