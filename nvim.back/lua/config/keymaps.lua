-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- my custom keymaps
keymap("i", "jk", "<ESC>l") --
keymap("i", "kj", "<ESC>l") -- jk or kj to exit insert mode

keymap("n", "<leader>[", "^") -- move to forward in a current line
keymap("v", "<leader>[", "^")

keymap("n", "<leader>]", "$") -- move to backword in a current line
keymap("v", "<leader>]", "$")

keymap("n", "<leader>a", "gg^vG$") -- select all
keymap("v", "<leader>a", "gg^vG$") -- select all

-- move to window
keymap("n", "<C-h>", "<CMD>TmuxNavigateLeft<CR>")
keymap("n", "<C-j>", "<CMD>TmuxNavigateDown<CR>")
keymap("n", "<C-k>", "<CMD>TmuxNavigateUp<CR>")
keymap("n", "<C-l>", "<CMD>TmuxNavigateRight<CR>")

-- Neotree
keymap("n", "<leader>te", "<cmd>Neotree toggle<cr>")
keymap("n", "<leader>tf", "<cmd>Neotree focus<cr>")
keymap("n", "<leader>tq", "<cmd>Neotree close<cr>")
