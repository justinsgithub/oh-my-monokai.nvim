local util = require('oh-my-monokai.util')
local config = require('oh-my-monokai.config')
local palettes = require('oh-my-monokai.colorscheme.palettes')

local M = {}

M.create_palette_command = function()
  local cmd = vim.api.nvim_create_user_command

  cmd('OMMPalette', function()
    local menu = util.create_menu('Change Palette', palettes, function(item)
      local palette = item.value
      config.extend({ palette = palette })
      vim.cmd([[colorscheme oh-my-monokai]])
    end)
    assert(menu, 'Error: Fail to create menu')
    menu:mount()
  end, { nargs = 0 })

  cmd('OMM', function(opts)
    local palette = opts.args
    config.extend({ palette = palette })
    vim.cmd([[colorscheme oh-my-monokai]])
  end, {
    nargs = 1,
    complete = function()
      return palettes
    end,
  })
end

return M
