-- DESCRIPTION: set custom keymaps that are unrelated to plugins in this file
-- NOTE: set the mapleader and local mapleader to <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE: access vim.keymap.set through keymap variable
local keymap = vim.keymap.set

-- NOTE: open netrw
keymap("n", "<leader>pv", vim.cmd.Rex)

-- NOTE: yanking to clipboard
-- WARN: I might remove this at some point
-- NOTE: so this is actually not necessary and I think it's in reality a
-- hinderance to learning neovim. if you want to yank something to the system
-- clipboard use this command: "+y or
-- "+ is the name of the system clipboard register in linux
-- using this you can also yank text into specific registers so that you can
-- manage copying and pasting multiple texts to different places.
-- also use :reg to see register names, types and their contents
--
-- keymap("n", "<leader>y", '"+y')
-- keymap("v", "<leader>y", '"+y')
-- keymap("n", "<leader>yap", '"+yap')
-- keymap("v", "<leader>yap", '"+yap')

-- NOTE: leave normal mode or visual mode with ctrl+o
keymap("i", "<C-o>", "<Esc>")
keymap("v", "<C-o>", "<Esc>")

-- NOTE: clear search highlights
keymap("n", "<leader>nh", "<CMD>nohl<CR>")
