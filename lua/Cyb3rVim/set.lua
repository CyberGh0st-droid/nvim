-- DESCRIPTION:
-- set vim options in this file

vim.opt.guicursor = ""
vim.opt.mouse = "a" --Mouse Support

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true

-- NOTE: show the maximum line length that you don't want to exceed
vim.opt.colorcolumn = "80"

-- NOTE: Show the real line number %=%{v:lnum}
-- NOTE: then the relative line number
-- %=%{v:relnum? before? v:relnum after? v:lnum currentline = realnum}
-- WARN: vim.opt.relativenumber has to be set to true or
-- relative line numbers won't update"
vim.opt.statuscolumn = " %s %=%{v:lnum} %=%{v:relnum?v:relnum:v:lnum} "

-- NOTE: set tab and indentation options tab width = 6
vim.opt.tabstop = 6
vim.opt.softtabstop = 6
vim.opt.shiftwidth = 6

-- NOTE: set expand tab to true to use space indentation
vim.opt.expandtab = false

vim.opt.breakindent = true
vim.opt.smartindent = false
-- NOTE: do not wrap lines if they pass the column width
vim.opt.wrap = false

vim.opt.termguicolors = true

-- NOTE: enables the below list chars
vim.opt.list = true
vim.opt.listchars = { tab = "➤ ", trail = "~", nbsp = "␣" }

-- NOTE: prevents the cursor from going closer than 30 lines to the top or bottom.
-- WARN: does not work near end or beginning of file
vim.opt.scrolloff = 30

-- NOTE: Highlight the current line
vim.opt.cursorline = true

-- NOTE: Makes possible to yank to clipboard
vim.opt.clipboard = "unnamedplus"
