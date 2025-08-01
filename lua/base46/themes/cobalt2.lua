-- Credits to original https://github.com/lalitmee/cobalt2.nvim
-- Cobalt2 theme adapted for Base46

local M = {}

M.base_30 = {
  white = "#FFFFFF",
  darker_black = "#0f2a3f",
  black = "#193549", -- cobalt_bg
  black2 = "#1f3b50",
  one_bg = "#234157",
  one_bg2 = "#2d4b61",
  one_bg3 = "#37556b",
  grey = "#626262",
  grey_fg = "#808080",
  grey_fg2 = "#9E9E9E",
  light_grey = "#BCBCBC",
  red = "#FF0000",
  baby_pink = "#FF628C",
  pink = "#FF00FF",
  line = "#0d3a58", -- cursor_line
  green = "#3AD900",
  vibrant_green = "#88FF88",
  nord_blue = "#8fbfdc",
  blue = "#00AAFF",
  seablue = "#0088FF",
  yellow = "#FFC600",
  sun = "#F2ED7F",
  purple = "#967EFB",
  dark_purple = "#345FA8",
  teal = "#80FCFF",
  orange = "#FF9D00",
  cyan = "#80FCFF",
  statusline_bg = "#0d3a58",
  lightbg = "#234157",
  pmenu_bg = "#00AAFF",
  folder_bg = "#00AAFF",
}

M.base_16 = {
  base00 = "#193549", -- cobalt_bg
  base01 = "#234157",
  base02 = "#2d4b61",
  base03 = "#37556b",
  base04 = "#626262",
  base05 = "#BCBCBC",
  base06 = "#CCCCCC",
  base07 = "#FFFFFF",
  base08 = "#FF0000", -- red
  base09 = "#FF9D00", -- orange
  base0A = "#FFC600", -- yellow
  base0B = "#3AD900", -- green
  base0C = "#80FCFF", -- cyan/teal
  base0D = "#00AAFF", -- blue
  base0E = "#967EFB", -- purple
  base0F = "#FF628C", -- pink
}

M.type = "dark"

M = require("base46").override_theme(M, "cobalt2")

return M