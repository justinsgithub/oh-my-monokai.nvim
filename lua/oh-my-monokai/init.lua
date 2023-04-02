local config = require("oh-my-monokai.config")
local util = require("oh-my-monokai.util")
local theme = require("oh-my-monokai.theme")
local command = require("oh-my-monokai.command")

local M = {}

M.load = function()
  util.load(theme.setup())
end

M.setup = function(options)
  config.setup(options)
  command.create_palette_command()
end

M.get_base_color = function()
  local base_color = require("oh-my-monokai.colorscheme").colors.base
  return base_color
end

return M
