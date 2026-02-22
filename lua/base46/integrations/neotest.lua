local colors = require("base46").get_theme_tb "base_30"

local highligths = {
  NeotestPassed = { fg = colors.green },
  NeotestRunning = { fg = colors.yellow },
  NeotestFailed = { fg = colors.red },
  NeotestSkipped = { fg = colors.blue },
  NeotestTest = { fg = colors.grey_fg },
  NeotestNamespace = { fg = colors.vibrant_green },
  NeotestFocused = { fg = colors.yellow },
  NeotestFile = { fg = colors.cyan },
  NeotestDir = { fg = colors.blue },
  NeotestBorder = { fg = colors.blue },
  NeotestIndent = { fg = colors.grey_fg2 },
  NeotestExpandMarker = { fg = colors.grey_fg2 },
  NeotestAdapterName = { fg = colors.purple, bold = true },
  NeotestWinSelect = { fg = colors.blue },
  NeotestMarked = { fg = colors.blue },
  NeotestTarget = { fg = colors.blue },
}

return highligths
