local M = {}

M.base_30 = {
  white = "#1b1f23",
  black = "#f5f5f5",
  darker_black = "#ebebeb",
  black2 = "#e0e0e0",
  one_bg = "#f5f5f5",
  one_bg2 = "#ececec",
  one_bg3 = "#e5e5e5",
  grey = "#9ea7b1",
  grey_fg = "#6e7681",
  grey_fg2 = "#8b949e",
  light_grey = "#5c6166",
  red = "#d64545",
  baby_pink = "#e87c7c",
  pink = "#f29999",
  line = "#e0e0e0",
  green = "#238636",
  vibrant_green = "#2ea043",
  nord_blue = "#0969da",
  blue = "#0969da",
  seablue = "#39c5cf",
  yellow = "#bb8009",
  sun = "#d4a72c",
  purple = "#8250df",
  dark_purple = "#6f4ecf",
  teal = "#2c9ab7",
  orange = "#d9822b",
  cyan = "#2c9ab7",
  todo = "#d4a72c",
  note = "#8250df",
  soft_green = "#85e89d",
  statusline_bg = "#e7e7e7",
  lightbg = "#d7d7d7",
  pmenu_bg = "#0969da",
  folder_bg = "#68727d",
}

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.one_bg2,
  base02 = M.base_30.one_bg3,
  base03 = M.base_30.grey,
  base04 = M.base_30.grey_fg,
  base05 = M.base_30.white,
  base06 = "#2f363d",
  base07 = "#3b4045",
  base08 = M.base_30.red,
  base09 = M.base_30.baby_pink,
  base0A = M.base_30.yellow,
  base0B = M.base_30.green,
  base0C = M.base_30.teal,
  base0D = M.base_30.blue,
  base0E = M.base_30.purple,
  base0F = M.base_30.soft_green,
}

M.polish_hl = {
  defaults = {
    LineNr = { fg = M.base_30.grey },
    CursorLineNr = { fg = M.base_30.blue, bold = true },
    Search = { fg = M.base_30.black2, bg = M.base_30.light_grey },
    IncSearch = { fg = M.base_30.white, bg = M.base_30.blue },
    CurSearch = { fg = M.base_30.white, bg = M.base_30.blue },
    Substitute = { fg = M.base_30.black2, bg = M.base_30.light_grey },
  },
  treesitter = {
    ["@variable"] = { fg = M.base_30.white },
    ["@variable.builtin"] = { fg = M.base_30.blue },
    ["@variable.parameter"] = { fg = M.base_30.white },
    ["@variable.parameter.builtin"] = { fg = M.base_30.blue },
    ["@variable.member"] = { fg = M.base_30.white },

    ["@constant"] = { fg = M.base_30.yellow },
    ["@constant.builtin"] = { fg = M.base_30.yellow },
    ["@constant.macro"] = { fg = M.base_30.yellow },

    ["@function"] = { fg = M.base_30.blue },
    ["@function.builtin"] = { fg = M.base_30.blue },
    ["@function.call"] = { fg = M.base_30.blue },
    ["@function.macro"] = { fg = M.base_30.red },
    ["@function.method"] = { fg = M.base_30.blue },
    ["@function.method.call"] = { fg = M.base_30.blue },
    ["@constructor"] = { fg = M.base_30.purple },

    ["@type"] = { fg = M.base_30.teal },
    ["@type.builtin"] = { fg = M.base_30.teal },
    ["@type.definition"] = { fg = M.base_30.teal },

    ["@keyword"] = { fg = M.base_30.red },
    ["@keyword.function"] = { fg = M.base_30.red },
    ["@keyword.operator"] = { fg = M.base_30.red },
    ["@keyword.conditional"] = { fg = M.base_30.red },
    ["@keyword.return"] = { fg = M.base_30.red },

    ["@property"] = { fg = M.base_30.white },
    ["@attribute"] = { fg = M.base_30.purple },

    ["@string"] = { fg = M.base_30.green },
    ["@string.documentation"] = { fg = M.base_30.grey_fg, italic = true },
    ["@string.escape"] = { fg = M.base_30.orange },
    ["@string.special"] = { fg = M.base_30.yellow },

    ["@boolean"] = { fg = M.base_30.yellow },
    ["@number"] = { fg = M.base_30.yellow },

    ["@comment.todo"] = { fg = M.base_30.todo, bold = true },
    ["@comment.note"] = { fg = M.base_30.note },

    ["@markup.heading"] = { fg = M.base_30.blue, bold = true },
    ["@markup.bold"] = { fg = M.base_30.white, bold = true },
    ["@markup.italic"] = { fg = M.base_30.white, italic = true },
    ["@markup.link"] = { fg = M.base_30.blue, underline = false },
    ["@markup.list"] = { fg = M.base_30.white },
  },
}

M.type = "light"

M = require("base46").override_theme(M, "sunrise_breeze")

return M
