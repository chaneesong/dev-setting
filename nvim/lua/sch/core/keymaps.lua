-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>l")
keymap.set("i", "kj", "<ESC>l")

-- clear search highlights
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- normal mode settings
keymap.set("n", "<leader>a", "gg^vG$") -- select all
keymap.set("n", "<leader>[", "^") -- move to the strting point to the sentence
keymap.set("n", "<leader>]", "$") -- move to the end point to the sentence

-- surround keymap

-- visual mode settings
keymap.set("v", "<leader>q", "^")
keymap.set("v", "<leader>w", "$")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>|", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>") -- toggle split window maximization

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<cmd>BufferLineCloseRight<CR>") -- close current tab
keymap.set("n", "<leader>tn", "<cmd>BufferLineCycleNext<CR>") --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>BufferLineCyclePrev<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>te", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>tq", "<cmd>NvimTreeClose<CR>") -- close file explorer
keymap.set("n", "<leader>tr", "<cmd>NvimTreeCollapse<CR>") -- collaosing file browser
keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fp", "<cmd>Telescope project<CR>")
keymap.set("n", "<leader>fx", "<cmd>Telescope repo list layout_strategy=vertical<cr>")

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- Lazygit commands
keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>")

-- restart lsp server
keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>") -- mapping to restart lsp if necessary
