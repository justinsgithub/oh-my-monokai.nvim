local colors = require("oh-my-monokai.colorscheme").colors

local oh_my_monokai = {}

oh_my_monokai.normal = {
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

oh_my_monokai.insert = {
  left = {
    { colors.base.black, colors.base.green },
    { colors.base.green, colors.editorSuggestWidget.background },
  },
}

oh_my_monokai.visual = {
  left = {
    { colors.base.black, colors.base.magenta },
    { colors.base.magenta, colors.editorSuggestWidget.background },
  },
}

oh_my_monokai.replace = {
  left = {
    { colors.base.black, colors.base.red },
    { colors.base.red, colors.editorSuggestWidget.background },
  },
}

oh_my_monokai.inactive = {
  left = {
    { colors.base.yellow, colors.base.black },
    { colors.base.black, colors.base.black },
  },
  middle = {
    { colors.base.black, colors.base.black },
  },
}

package.loaded["colors"] = nil

return oh_my_monokai
