require("Cyb3rVim")
package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"
require("lazy_init")
