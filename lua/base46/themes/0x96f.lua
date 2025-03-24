-- credits to original theme https://github.com/filipjanevski/0x96f-term-theme
-- This is just a modified version of it

local M = {}

M.base_30 = {
  white = "#ff7272",
  darker_black = "#1F1D20",
  black = "#262427", --  nvim bg
  black2 = "#333036",
  one_bg = "#262427",
  one_bg2 = "#242226",
  one_bg3 = "#1F1D20",
  grey = "#545452",
  grey_fg = "#545452",
  grey_fg2 = "#545452",
  light_grey = "#545452",
  red = "#ebb9b9",
  baby_pink = "#EAC1C1",
  pink = "#E9D1D1",
  line = "#2d2d37", -- for lines like vertsplit
  green = "#bcdf59",
  vibrant_green = "#bcdf59",
  blue = "#49cae4",
  nord_blue = "#49cae4",
  yellow = "#ffca58",
  sun = "#ffca58",
  purple = "#a093e2",
  dark_purple = "#a093e2",
  teal = "#aee8f4",
  orange = "#ffca58",
  cyan = "#aee8f4",
  statusline_bg = "#333036",
  lightbg = "#2e2e38",
  pmenu_bg = "#ff7272",
  folder_bg = "#ff7272",
}

M.base_16 = {
  base00 = "#262427",
  base01 = "#ff7272",
  base02 = "#bcdf59",
  base03 = "#ffca58",
  base04 = "#49cae4",
  base05 = "#a093e2",
  base06 = "#aee8f4",
  base07 = "#fcfcfa",
  base08 = "#545452",
  base09 = "#ff8787",
  base0A = "#c6e472",
  base0B = "#ffd271",
  base0C = "#64d2e8",
  base0D = "#aea3e6",
  base0E = "#baebf6",
  base0F = "#fcfcfa",
}

M.type = "dark"

M = require("base46").override_theme(M, "0x96f")

return M
