local colors = require("oh-my-monokai.colorscheme").colors

local omm = {}

omm.normal = {
  left = {
    { colors.base.black, colors.base.yellow },
    { colors.base.yellow, colors.editorSuggestWidget.background },
  },
  middle = { { colors.base.black, colors.base.black } },
  right = {
    { colors.base.black, colors.base.yellow },
    { colors.base.yellow, colors.editorSuggestWidget.background },
  },
  error = { { colors.base.black, colors.base.red } },
  warning = { { colors.base.black, colors.base.blue } },
}

omm.insert = {
  left = {
    { colors.base.black, colors.base.green },
    { colors.base.green, colors.editorSuggestWidget.background },
  },
}

omm.visual = {
  left = {
    { colors.base.black, colors.base.magenta },
    { colors.base.magenta, colors.editorSuggestWidget.background },
  },
}

omm.replace = {
  left = {
    { colors.base.black, colors.base.red },
    { colors.base.red, colors.editorSuggestWidget.background },
  },
}

omm.inactive = {
  left = {
    { colors.base.yellow, colors.base.black },
    { colors.base.black, colors.base.black },
  },
  middle = {
    { colors.base.black, colors.base.black },
  },
}

package.loaded["colors"] = nil

return omm
