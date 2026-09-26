-- Credits to original https://github.com/rebelot/kanagawa.nvim
-- This is the "lotus" (light) variant, modified version of it
local M = {}
M.base_30 = {
  white = "#545464",
  darker_black = "#e5ddb0",
  black = "#f2ecbc", --  nvim bg
  black2 = "#dcd5ac",
  one_bg = "#d5cea3",
  one_bg2 = "#dcd7ba",
  one_bg3 = "#c9cbd1",
  grey = "#8a8980",
  grey_fg = "#716e61",
  grey_fg2 = "#a09cac",
  light_grey = "#766b90",
  red = "#c84053",
  baby_pink = "#d9a594",
  pink = "#b35b79",
  line = "#e7dba0", -- for lines like vertsplit
  green = "#6f894e",
  vibrant_green = "#6e915f",
  nord_blue = "#9fb5c9",
  blue = "#4d699b",
  yellow = "#de9800",
  sun = "#f9d791",
  purple = "#624c83",
  dark_purple = "#5d57a3",
  teal = "#4e8ca2",
  orange = "#cc6d00",
  cyan = "#5e857a",
  statusline_bg = "#dcd5ac",
  lightbg = "#e5ddb0",
  pmenu_bg = "#766b90",
  folder_bg = "#4d699b",
}
M.base_16 = {
  base00 = "#f2ecbc",
  base01 = "#dcd5ac",
  base02 = "#b5cbd2",
  base03 = "#c9cbd1",
  base04 = "#716e61",
  base05 = "#8a8980",
  base06 = "#716e61",
  base07 = "#545464",
  base08 = "#c84053",
  base09 = "#cc6d00",
  base0A = "#de9800",
  base0B = "#6f894e",
  base0C = "#4e8ca2",
  base0D = "#4d699b",
  base0E = "#624c83",
  base0F = "#d7474b",
}
M.polish_hl = {
  treesitter = {
    ["@keyword.import"] = { fg = M.base_30.purple },
    ["@uri"] = { fg = M.base_30.blue },
    ["@tag.delimiter"] = { fg = M.base_30.red },
    ["@variable.member.key"] = { fg = M.base_30.white },
    ["@punctuation.bracket"] = { fg = M.base_30.pmenu_bg },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
  },
  syntax = {
    Number = { fg = M.base_30.baby_pink },
  },
}
M.type = "light"
M = require("base46").override_theme(M, "kanagawa_lotus")
return M
