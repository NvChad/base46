local colors = require("base46").get_theme_tb "base_30"
local mix = require("base46.colors").mix
return {
  MarkviewPalette0 = { fg = colors.red, bg = mix(colors.blue, colors.black, 90) },
  MarkviewPalette1 = { fg = colors.orange, bg = mix(colors.yellow, colors.black, 90) },
  MarkviewPalette2 = { fg = colors.yellow, bg = mix(colors.green, colors.black, 90) },
  MarkviewPalette3 = { fg = colors.green, bg = mix(colors.teal, colors.black, 90) },
  MarkviewPalette4 = { fg = colors.blue, bg = mix(colors.purple, colors.black, 90) },
  MarkviewPalette5 = { fg = colors.purple, bg = mix(colors.pink, colors.black, 90) },
}
