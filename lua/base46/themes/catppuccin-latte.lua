local M = {}

M.base_30 = {
  white = "#7287FD",
  darker_black = "#E6E9EF",
  black = "#EFF1F5",
  black2 = "#dbdfe9",
  one_bg = "#d1d6e3",
  one_bg2 = "#c7cddd",
  one_bg3 = "#bdc4d7",
  grey = "#b3bbd1",
  grey_fg = "#a9b2cb",
  grey_fg2 = "#9fa9c5",
  light_grey = "#8b97b9",
  red = "#E64553",
  baby_pink = "#DD7878",
  pink = "#EA76CB",
  line = "#d4d6dc",
  green = "#40A02B",
  vibrant_gree = "#179299",
  nord_blue = "#1E66F5",
  blue = "#04A5E5",
  yellow = "#DF8E1D",
  sun = "#DFAF1D",
  purple = "#8839EF",
  dark_purple = "#DD7878",
  teal = "#179299",
  orange = "#FE640B",
  cyan = "#209FB5",
  statusline_bg = "#DCE0E8",
  lightbg = "#d0d5df",
  pmenu_bg = "#6c6e83",
  folder_bg = "#666983",
}

M.base_16 = {
  base00 = "#EFF1F5",
  base01 = "#e5e8ef",
  base02 = "#dbdfe9",
  base03 = "#c3c7d3",
  base04 = "#b3b7c5",
  base05 = "#4C4F69",
  base06 = "#5C5F77",
  base07 = "#6C6F85",
  base08 = "#E64553",
  base09 = "#FE640B",
  base0A = "#DF8E1D",
  base0B = "#40A02B",
  base0C = "#04A5E5",
  base0D = "#1E66F5",
  base0E = "#8839EF",
  base0F = "#FE640B",
}

M.polish_hl = {
  treesitter = {
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "light"

M = require("base46").override_theme(M, "catppuccin_latte")

return M
