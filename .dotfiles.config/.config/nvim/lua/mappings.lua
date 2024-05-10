require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<A-.>", function()
	require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<A-,>", function()
	require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<A-w>", function()
	require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- lazygit
map("n", "<leader>gg", function()
	require("lazygit").lazygit()
end, { desc = "LazyGit" })

-- spectre
map("n", "<leader>fr", function()
	require("spectre").open()
end, { desc = "Replace in files (Spectre)" })

--liveserver
map("n", "<leader>ls", ":LiveServerStart <cr>")
map("n", "<leader>lt", ":LiveServerStop <cr>")

-- ccc
map("n", "<leader>pc", "<cmd> CccPick <CR>", { desc = "Pick color" })
