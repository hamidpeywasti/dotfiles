require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Tmux Navigator mappings
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate Left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate Down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate Up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate Right" })
