local colors = require("base46").get_theme_tb "base_30"

local highligths = {
  GitSignsAdd = { fg = colors.green },
  GitSignsChange = { fg = colors.blue },
  GitSignsDelete = { fg = colors.red },
  GitSignsAddNr = { fg = colors.green },
  GitSignsChangeNr = { fg = colors.blue },
  GitSignsDeleteNr = { fg = colors.red },
  GitSignsAddLn = { fg = colors.green },
  GitSignsDeleteLn = { fg = colors.red },
  GitSignsCurrentLineBlame = { fg = colors.grey_fg },
}

return highligths
