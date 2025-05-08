local M = {}

M.base_30 = {
  white = "#7287FD",
  darker_black = "#E6E9EF",
  black = "#EFF1F5",
  black2 = "#DCE0E8",
  one_bg = "#CCD0DA",
  one_bg2 = "#BCC0CC",
  one_bg3 = "#ACB0BE",
  grey = "#9CA0B0",
  grey_fg = "#8C8FA1",
  grey_fg2 = "#7C7F93",
  light_grey = "#5C5F77",
  red = "#E64553",
  baby_pink = "#DD7878",
  pink = "#EA76CB",
  line = "#ACB0BE",
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
  lightbg = "#EFF1F5",
  pmenu_bg = "#7C7F93",
  folder_bg = "#5C5F77",
}

M.base_16 = {
  base00 = "#EFF1F5",
  base01 = "#E6E9EF",
  base02 = "#DCE0E8",
  base03 = "#CCD0DA",
  base04 = "#BCC0CC",
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
