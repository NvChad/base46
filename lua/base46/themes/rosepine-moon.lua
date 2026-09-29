-- credits to original theme https://rosepinetheme.com/
-- this is a modified version of it

local M = {}

M.base_30 = {
  black = "#232136", --  nvim bg
  darker_black = "#1f1d30",
  white = "#e0def4",
  black2 = "#2a273f",
  one_bg = "#2a283e", -- real bg of onedark
  one_bg2 = "#393552",
  one_bg3 = "#44415a",
  grey = "#56526e",
  grey_fg = "#6e6a86",
  grey_fg2 = "#7a768e",
  light_grey = "#908caa",
  red = "#eb6f92",
  baby_pink = "#f297ab",
  pink = "#f5a3b5",
  line = "#2a283e", -- for lines like vertsplit
  green = "#95b1ac",
  vibrant_green = "#a3c4be",
  nord_blue = "#3e8fb0",
  blue = "#9ccfd8",
  yellow = "#f6c177",
  sun = "#f9cf8a",
  purple = "#c4a7e7",
  dark_purple = "#b89edb",
  teal = "#3e8fb0",
  orange = "#ea9a97",
  cyan = "#9ccfd8",
  statusline_bg = "#2a273f",
  lightbg = "#393552",
  pmenu_bg = "#c4a7e7",
  folder_bg = "#3e8fb0",
}

M.base_16 = {
  base00 = "#232136",
  base01 = "#2a273f",
  base02 = "#393552",
  base03 = "#6e6a86",
  base04 = "#908caa",
  base05 = "#e0def4",
  base06 = "#e0def4",
  base07 = "#56526e",
  base08 = "#eb6f92",
  base09 = "#f6c177",
  base0A = "#ea9a97",
  base0B = "#3e8fb0",
  base0C = "#9ccfd8",
  base0D = "#c4a7e7",
  base0E = "#f6c177",
  base0F = "#56526e",
}

M = require("base46").override_theme(M, "rosepine-moon")

M.type = "dark"

return M
