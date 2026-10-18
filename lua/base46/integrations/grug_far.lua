local colors = require("base46").get_theme_tb "base_30"
local mix = require("base46.colors").mix

return {
  -- inputs
  GrugFarInputLabel = { fg = colors.blue, bold = true },
  GrugFarInputPlaceholder = { fg = colors.grey_fg, italic = true },

  -- top action bar
  GrugFarHelpHeader = { fg = colors.light_grey },
  GrugFarHelpHeaderKey = { fg = colors.purple, bold = true },

  -- help window
  GrugFarHelpWinHeader = { fg = colors.blue, bold = true },
  GrugFarHelpWinActionPrefix = { fg = colors.grey_fg },
  GrugFarHelpWinActionKey = { fg = colors.purple, bold = true },
  GrugFarHelpWinActionText = { fg = colors.white },
  GrugFarHelpWinActionDescription = { fg = colors.light_grey },

  -- results header
  GrugFarResultsHeader = { fg = colors.grey_fg },
  GrugFarResultsCmdHeader = { fg = colors.cyan, bold = true },
  GrugFarResultsStats = { fg = colors.green },
  GrugFarResultsActionMessage = { fg = colors.yellow },

  -- results list
  GrugFarResultsPath = { fg = colors.blue, bold = true },
  GrugFarResultsLineNr = { fg = colors.grey_fg },
  GrugFarResultsColumnNr = { fg = colors.grey },
  GrugFarResultsNumbersSeparator = { fg = colors.grey },
  GrugFarResultsCursorLineNo = { fg = colors.white, bold = true },
  GrugFarResultsNumberLabel = { fg = colors.grey_fg2 },
  GrugFarResultsLongLineStr = { fg = colors.grey_fg, italic = true },
  GrugFarResultsDiffSeparatorIndicator = { fg = colors.line },

  -- matches
  GrugFarResultsMatch = { fg = colors.yellow, bg = mix(colors.yellow, colors.black, 82), bold = true },
  GrugFarCurrentMatch = { fg = colors.black, bg = colors.yellow, bold = true },
  GrugFarResultsMatchAdded = { fg = colors.green, bg = mix(colors.green, colors.black, 82) },
  GrugFarResultsMatchRemoved = { fg = colors.red, bg = mix(colors.red, colors.black, 82), strikethrough = true },

  -- gutter indicators
  GrugFarResultsAddIndicator = { fg = colors.green },
  GrugFarResultsChangeIndicator = { fg = colors.orange },
  GrugFarResultsRemoveIndicator = { fg = colors.red },

  GrugFarVisualBufrange = { bg = colors.one_bg2 },
}
