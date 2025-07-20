local colors = require("base46").get_theme_tb "base_30"

return {
  BufferLineTruncMarker = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  BufferLineBackground = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  BufferLineIndicatorVisible = {
    fg = colors.black2,
    bg = colors.black2,
  },

  -- buffers
  BufferLineBufferSelected = {
    fg = colors.white,
    bg = colors.black,
  },

  BufferLineBufferVisible = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  -- for diagnostics = "nvim_lsp"
  BufferLineError = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineErrorDiagnostic = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineErrorDiagnosticSelected = {
    fg = colors.red,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.red,
  },
  BufferLineErrorSelected = {
    fg = colors.red,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.red,
  },

  BufferLineInfo = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineInfoDiagnostic = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineInfoDiagnosticSelected = {
    fg = colors.blue,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.red,
  },
  BufferLineInfoSelected = {
    fg = colors.blue,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.red,
  },

  BufferLineWarning = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineWarningDiagnostic = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineWarningDiagnosticSelected = {
    fg = colors.yellow,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.yellow,
  },
  BufferLineWarningSelected = {
    fg = colors.yellow,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.yellow,
  },

  BufferLineHint = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineHintDiagnostic = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineHintDiagnosticSelected = {
    fg = colors.purple,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.purple,
  },
  BufferLineHintSelected = {
    fg = colors.purple,
    bg = colors.black,
    bold = true,
    italic = true,
    sp = colors.purple,
  },
  -- close buttons
  BufferLineCloseButton = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineCloseButtonVisible = {
    fg = colors.light_grey,
    bg = colors.black2,
  },
  BufferLineCloseButtonSelected = {
    fg = colors.red,
    bg = colors.black,
  },
  BufferLineFill = {
    fg = colors.grey_fg,
    bg = colors.black2,
  },
  BufferLineIndicatorSelected = {
    fg = colors.black,
    bg = colors.black,
  },

  -- modified
  BufferLineModified = {
    fg = colors.red,
    bg = colors.black2,
  },
  BufferLineModifiedVisible = {
    fg = colors.red,
    bg = colors.black2,
  },
  BufferLineModifiedSelected = {
    fg = colors.green,
    bg = colors.black,
  },

  -- separators
  BufferLineSeparator = {
    fg = colors.black2,
    bg = colors.black2,
  },
  BufferLineSeparatorVisible = {
    fg = colors.black2,
    bg = colors.black2,
  },
  BufferLineSeparatorSelected = {
    fg = colors.black2,
    bg = colors.black2,
  },

  -- tabs
  BufferLineTab = {
    fg = colors.light_grey,
    bg = colors.one_bg3,
  },
  BufferLineTabSelected = {
    fg = colors.black2,
    bg = colors.nord_blue,
  },
  BufferLineTabClose = {
    fg = colors.red,
    bg = colors.black,
  },

  BufferLineDevIconDefaultSelected = {
    bg = "none",
  },

  BufferLineDevIconDefaultInactive = {
    bg = "none",
  },

  BufferLineDuplicate = {
    fg = "NONE",
    bg = colors.black2,
  },
  BufferLineDuplicateSelected = {
    fg = colors.red,
    bg = colors.black,
  },
  BufferLineDuplicateVisible = {
    fg = colors.blue,
    bg = colors.black2,
  },

  -- custom area
  BufferLineRightCustomAreaText1 = {
    fg = colors.white,
  },

  BufferLineRightCustomAreaText2 = {
    fg = colors.red,
  },

  -- MiniIcons integration
  BufferLineMiniIconsYellow = { fg = colors.yellow, bg = colors.black2 },
  BufferLineMiniIconsYellowSelected = { fg = colors.yellow, bg = colors.black },
  BufferLineMiniIconsOrange = { fg = colors.orange, bg = colors.black2 },
  BufferLineMiniIconsOrangeSelected = { fg = colors.orange, bg = colors.black },
  BufferLineMiniIconsAzure = { fg = colors.teal, bg = colors.black2 },
  BufferLineMiniIconsAzureSelected = { fg = colors.teal, bg = colors.black },
  BufferLineMiniIconsCyan = { fg = colors.cyan, bg = colors.black2 },
  BufferLineMiniIconsCyanSelected = { fg = colors.cyan, bg = colors.black },
  BufferLineMiniIconsPurple = { fg = colors.purple, bg = colors.black2 },
  BufferLineMiniIconsPurpleSelected = { fg = colors.purple, bg = colors.black },
  BufferLineMiniIconsBlue = { fg = colors.blue, bg = colors.black2 },
  BufferLineMiniIconsBlueSelected = { fg = colors.blue, bg = colors.black },
  BufferLineMiniIconsRed = { fg = colors.red, bg = colors.black2 },
  BufferLineMiniIconsRedSelected = { fg = colors.red, bg = colors.black },
  BufferLineMiniIconsGreen = { fg = colors.green, bg = colors.black2 },
  BufferLineMiniIconsGreenSelected = { fg = colors.green, bg = colors.black },
  BufferLineMiniIconsGrey = { fg = colors.white, bg = colors.black2 },
  BufferLineMiniIconsGreySelected = { fg = colors.white, bg = colors.black },
}
