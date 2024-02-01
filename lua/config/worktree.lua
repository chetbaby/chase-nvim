require("git-worktree").setup()
require("telescope").load_extension("git_worktree")

local keymap = vim.api.nvim_set_keymap
local noshow = { noremap = true, silent = true }

keymap("", "<leader>wo", ':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>', noshow)
