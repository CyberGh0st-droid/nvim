vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set
keymap('n', '<leader>pv', vim.cmd.Rex)

--yanking to clipboard
keymap('n', '<leader>y', '\"+y')
keymap('v', '<leader>y', '\"+y')
keymap('n', '<leader>yap', '\"+yap')
keymap('v', '<leader>yap', '\"+yap')

keymap('i', '<C-o>', '<Esc>')
keymap('v', '<C-o>', '<Esc>')

-- clear search highlights
keymap("n", "<leadernh>nh", "<CMD>nohl<CR>", {desc = "clear Search Highlights "})
