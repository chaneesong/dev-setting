-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- my custom keymaps
keymap.set("i", "jk", "<ESC>l") --
keymap.set("i", "kj", "<ESC>l") -- jk or kj to exit insert mode

keymap.set("n", "<leader>[", "^") -- move to forward in a current line
keymap.set("n", "<leader>]", "$") -- move to backword in a current line
keymap.set("n", "<leader>a", "gg^vG$") -- select all
