-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local opt = vim.opt
local g = vim.g
local o = vim.o

opt.shell = "/bin/zsh"

-- Enable code folding
opt.foldmethod = "indent"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- JoosepAlviste/nvim-ts-context-commentstring
-- to skip backwards compatibility routines and speed up loading
g.skip_ts_context_commentstring_module = true
