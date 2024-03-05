---@type MappingsTable
local M = {}

M.tabufline = {

  n = {
    -- cycle through buffers
    ["<A-.>"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },
    ["<A-,>"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- close buffer
    ["<A-w>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = {
      function()
        require("lazygit").lazygit()
      end,
      "LazyGit",
    },
  },
}

M.spectre = {
  n = {
    ["<leader>sr"] = {
      function()
        require("spectre").open()
      end,
      "Replace in files (Spectre)",
    },
  },
}

M.ccc = {
  n = {
    ["<leader>pc"] = {
      "<cmd> CccPick <CR>",
      "Pick color",
    },
  },
}

return M
