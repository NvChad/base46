local colors = require("base46").get_theme_tb "base_30"

local telescope_style = require("nvconfig").ui.telescope.style

local hlgroups = {
  SnacksPicker = { bg = colors.darker_black },
  SnacksTitle = { fg = colors.black, bg = colors.red },
  SnacksPickerTitle = { fg = colors.black, bg = colors.red },
  SnacksPickerPreviewTitle = { fg = colors.black, bg = colors.green },
  SnacksPickerPrompt = { fg = colors.red },
  SnacksPickerListCursorLine = { bg = colors.black2 },
  SnacksPickerPreviewCursorLine = { bg = colors.black2 },
  SnacksPickerMatch = { fg = colors.blue, bg = colors.one_bg },
  SnacksPickerSelected = { fg = colors.green },
  SnacksPickerDir = { fg = colors.light_grey },
  SnacksPickerTotals = { fg = colors.grey_fg },
}

local styles = {
  borderless = {
    SnacksPickerBorder = { fg = colors.darker_black, bg = colors.darker_black },
    SnacksPickerInput = { fg = colors.white, bg = colors.black2 },
    SnacksPickerInputBorder = { fg = colors.black2, bg = colors.black2 },
    SnacksPickerPrompt = { fg = colors.red, bg = colors.black2 },
    SnacksPickerTotals = { fg = colors.grey_fg, bg = colors.black2 },
  },

  bordered = {
    SnacksPicker = { bg = "none" },
    SnacksPickerBorder = { fg = colors.one_bg3 },
    SnacksPickerInputBorder = { fg = colors.one_bg3 },
    SnacksPickerPreviewTitle = { fg = colors.black, bg = colors.blue },
  },
}

return vim.tbl_deep_extend("force", hlgroups, styles[telescope_style])
