local symbols = require("symbols-outline")

local noshow = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>sy", ":SymbolsOutline<CR>", noshow)

symbols.setup({})
