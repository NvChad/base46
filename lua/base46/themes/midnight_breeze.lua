local M = {}

M.base_30 = {
  white = "#c9d1d9",
  black = "#0d1117",
  darker_black = "#070a0d",
  black2 = "#121619",
  one_bg = "#161b22",
  one_bg2 = "#1b2128",
  one_bg3 = "#21262d",
  grey = "#313641",
  grey_fg = "#434b59",
  grey_fg2 = "#4f5969",
  light_grey = "#8b949e",
  red = "#fb6f6f",
  baby_pink = "#ffa3a0",
  pink = "#ffb3a8",
  line = "#21262d",
  green = "#56d364",
  vibrant_green = "#57d27d",
  nord_blue = "#58a6ff",
  blue = "#58a6ff",
  seablue = "#39c5cf",
  yellow = "#ffdf5d",
  sun = "#f0b000",
  purple = "#bc8cff",
  dark_purple = "#a259ff",
  teal = "#39c5cf",
  orange = "#ffab70",
  cyan = "#39c5cf",
  statusline_bg = "#161b22",
  lightbg = "#212831",
  pmenu_bg = "#58a6ff",
  folder_bg = "#6e7681",
}

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.one_bg,
  base02 = M.base_30.one_bg3,
  base03 = M.base_30.grey,
  base04 = M.base_30.grey_fg,
  base05 = M.base_30.white,
  base06 = "#d3dbe3",
  base07 = "#dde5ed",
  base08 = M.base_30.red,
  base09 = M.base_30.baby_pink,
  base0A = M.base_30.yellow,
  base0B = M.base_30.green,
  base0C = M.base_30.teal,
  base0D = M.base_30.blue,
  base0E = M.base_30.purple,
  base0F = "#85e89d",
}

M.polish_hl = {
  defaults = {
    LineNr = { fg = M.base_30.grey },
    CursorLineNr = { fg = M.base_30.blue, bold = true },
    Search = { fg = M.base_30.white, bg = M.base_30.one_bg3 },
    IncSearch = { fg = M.base_30.black, bg = M.base_30.blue },
    CurSearch = { fg = M.base_30.black, bg = M.base_30.blue },
    Substitute = { fg = M.base_30.white, bg = M.base_30.one_bg3 },
  },
  treesitter = {
    ["@variable"] = { fg = M.base_30.light_grey },
    ["@variable.builtin"] = { fg = M.base_30.blue },
    ["@variable.parameter"] = { fg = M.base_30.light_grey },
    ["@variable.parameter.builtin"] = { fg = M.base_30.blue },
    ["@variable.member"] = { fg = M.base_30.light_grey },

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

    ["@property"] = { fg = M.base_30.light_grey },
    ["@attribute"] = { fg = M.base_30.purple },

    ["@string"] = { fg = M.base_30.green },
    ["@string.documentation"] = { fg = M.base_30.grey_fg, italic = true },
    ["@string.escape"] = { fg = M.base_30.orange },
    ["@string.special"] = { fg = M.base_30.yellow },

    ["@boolean"] = { fg = M.base_30.yellow },
    ["@number"] = { fg = M.base_30.yellow },

    ["@comment.todo"] = { fg = "#ffc658", bold = true },
    ["@comment.note"] = { fg = M.base_30.purple },

    ["@markup.heading"] = { fg = M.base_30.blue, bold = true },
    ["@markup.bold"] = { fg = M.base_30.white, bold = true },
    ["@markup.italic"] = { fg = M.base_30.white, italic = true },
    ["@markup.link"] = { fg = M.base_30.blue, underline = false },
    ["@markup.list"] = { fg = M.base_30.light_grey },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "midnight_breeze")

return M
