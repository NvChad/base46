-- credits to original theme https://github.com/vague-theme/vague.nvim
local M = {}

M.base_30 = {
  white = "#cdcdcd",
  black = "#141415",
  darker_black = "#0e0e10",
  black2 = "#1c1c24",
  one_bg = "#252530",
  one_bg2 = "#2c2c38",
  one_bg3 = "#33333f",
  grey = "#606079",
  grey_fg = "#686886",
  grey_fg2 = "#73738f",
  light_grey = "#878787",
  red = "#d8647e",
  baby_pink = "#bb9dbd",
  pink = "#c48282",
  line = "#252530",
  green = "#7fa563",
  vibrant_green = "#95b37a",
  nord_blue = "#7e98e8",
  blue = "#6e94b2",
  seablue = "#9bb4bc",
  yellow = "#f3be7c",
  sun = "#e8b589",
  purple = "#aeaed1",
  dark_purple = "#9d8fbf",
  teal = "#90a0b5",
  orange = "#e0a363",
  cyan = "#b4d4cf",
  statusline_bg = "#1c1c24",
  lightbg = "#252530",
  pmenu_bg = "#405065",
  folder_bg = "#6e94b2",

  lavender = "#c3c3d5",
}

M.base_16 = {
  base00 = "#141415",
  base01 = "#1c1c24",
  base02 = "#333738",
  base03 = "#252530",
  base04 = "#606079",
  base05 = "#cdcdcd",
  base06 = "#c3c3d5",
  base07 = "#e8e8ef",

  base08 = "#d8647e",
  base09 = "#e0a363",
  base0A = "#f3be7c",
  base0B = "#7fa563",
  base0C = "#b4d4cf",
  base0D = "#6e94b2",
  base0E = "#aeaed1",
  base0F = "#bb9dbd",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@variable.builtin"] = { fg = M.base_30.cyan },
    ["@variable.parameter"] = { fg = M.base_30.baby_pink },

    ["@property"] = { fg = M.base_30.lavender },
    ["@field"] = { fg = M.base_30.lavender },

    ["@function"] = { fg = M.base_30.pink },
    ["@function.call"] = { fg = M.base_30.pink },
    ["@method"] = { fg = M.base_30.pink },
    ["@method.call"] = { fg = M.base_30.pink },

    ["@string"] = { fg = M.base_30.sun },
    ["@number"] = { fg = M.base_30.orange },
    ["@constant"] = { fg = M.base_30.purple },

    ["@keyword"] = { fg = M.base_30.blue },
    ["@type"] = { fg = M.base_30.seablue },
    ["@type.builtin"] = { fg = M.base_30.seablue },

    ["@operator"] = { fg = M.base_30.teal },
    ["@constructor"] = { fg = M.base_30.cyan },
    ["@tag"] = { fg = M.base_30.cyan },
    ["@tag.delimiter"] = { fg = M.base_30.light_grey },

    ["@comment"] = { fg = M.base_30.grey },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "vague")

return M
