---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'catppuccin',
  tabufline = { enabled = false }
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

local o = vim.opt
o.nu = true
o.relativenumber = true
o.scrolloff = 8


return M
