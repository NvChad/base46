-- credit to original theme: https://github.com/amedoeyes/eyes.nvim

local M = {}

M.base_30 = {
  white = "#E0E0E0",
  darker_black = "#1C1C1C",
  black = "#1C1C1C", -- nvim bg
  black2 = "#2A2A2A",
  one_bg = "#2A2A2A",
  one_bg2 = "#363636",
  one_bg3 = "#454545",
  grey = "#555555",
  grey_fg = "#666666",
  grey_fg2 = "#787878",
  light_grey = "#999999",
  red = "#E0E0E0",
  baby_pink = "#C2C2C2",
  pink = "#ABABAB",
  line = "#363636", -- for lines like vertsplit
  green = "#C2C2C2",
  vibrant_green = "#E0E0E0",
  blue = "#999999",
  nord_blue = "#ABABAB",
  yellow = "#E0E0E0",
  sun = "#C2C2C2",
  purple = "#ABABAB",
  dark_purple = "#999999",
  teal = "#787878",
  orange = "#C2C2C2",
  cyan = "#999999",
  statusline_bg = "#2A2A2A",
  lightbg = "#2A2A2A",
  pmenu_bg = "#363636",
  folder_bg = "#787878",
}

M.base_16 = {
  base00 = "#1C1C1C",
  base01 = "#2A2A2A",
  base02 = "#363636",
  base03 = "#454545",
  base04 = "#555555",
  base05 = "#999999",
  base06 = "#ABABAB",
  base07 = "#C2C2C2",
  base08 = "#E0E0E0",
  base09 = "#E0E0E0",
  base0A = "#E0E0E0",
  base0B = "#C2C2C2",
  base0C = "#999999",
  base0D = "#787878",
  base0E = "#ABABAB",
  base0F = "#666666",
}

M.polish_hl = {
  defaults = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "eyes")

return M
