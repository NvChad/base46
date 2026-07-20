-- Credits to original theme for existing https://github.com/shaunsingh/oxocarbon.nvim
-- this is a modified version of it

local M = {}

M.base_30 = {
  white = "#f2f4f8",
  darker_black = "#0f0f0f",
  black = "#161616", --  nvim bg
  black2 = "#202020",
  one_bg = "#2a2a2a", -- real bg of onedark
  one_bg2 = "#343434",
  one_bg3 = "#3c3c3c",
  grey = "#464646",
  grey_fg = "#4c4c4c",
  grey_fg2 = "#555555",
  light_grey = "#5f5f5f",
  red = "#ee5396",
  baby_pink = "#ff7eb6",
  pink = "#be95ff",
  line = "#383747", -- for lines like vertsplit
  green = "#42be65",
  vibrant_green = "#08bdba",
  nord_blue = "#78a9ff",
  blue = "#33b1ff",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#3ddbd9",
  statusline_bg = "#202020",
  lightbg = "#2a2a2a",
  pmenu_bg = "#3ddbd9",
  folder_bg = "#78a9ff",
  lavender = "#c7d1ff",
}

M.base_16 = {
  base00 = "#161616",
  base01 = "#262626",
  base02 = "#393939",
  base03 = "#525252",
  base04 = "#dde1e6",
  base05 = "#f2f4f8",
  base06 = "#ffffff",
  base07 = "#08bdba",
  base08 = "#3ddbd9",
  base09 = "#78a9ff",
  base0A = "#ee5396",
  base0B = "#33b1ff",
  base0C = "#ff7eb6",
  base0D = "#42be65",
  base0E = "#be95ff",
  base0F = "#82cfff",
}

M.polish_hl = {
  treesitter = {
    ["@operator"] = { fg = M.base_30.cyan },
  },
  syntax = {
    Conditional = { fg = M.base_30.nord_blue },
    Tag = { fg = M.base_30.white },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "oxocarbon")

return M
