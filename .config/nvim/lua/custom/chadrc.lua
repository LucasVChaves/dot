---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'gruvchad',
    transparency = false;
}

M.plugins = 'custom.plugins'

M.mappings = require 'custom.mappings'

return M
