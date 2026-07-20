--- Credits to original theme https://github.com/marko-cerovac/material.nvim for existing
-- This is a modified version of it

local M = {}

M.base_30 = {
  white = "#435862", -- confirmed
  darker_black = "#F2F2F2",
  black = "#fafafa", --  nvim bg
  black2 = "#EBEBEB",
  one_bg = "#EBEBEB",
  one_bg2 = "#E1E1E1",
  one_bg3 = "#D9D9D9",
  grey = "#C4C4C4",
  grey_fg = "#C4C4C4",
  grey_fg2 = "#BDBDBD",
  light_grey = "#B3B3B3",
  red = "#e53935",
  baby_pink = "#FF5370",
  pink = "#FF5370",
  line = "#EBEBEB", -- for lines like vertsplit
  green = "#91b859",
  vibrant_green = "#a7c67a",
  nord_blue = "#4e73ae",
  blue = "#6182b8",
  yellow = "#F59717",
  sun = "#f6a434",
  purple = "#7c4dff",
  dark_purple = "#9671ff",
  teal = "#39ADB5",
  orange = "#f76d47",
  cyan = "#39adb5",
  statusline_bg = "#F2F2F2",
  lightbg = "#e7e7e8",
  pmenu_bg = "#00BCD4",
  folder_bg = "#6e98eb",
}

-- Base16 colors taken from:
M.base_16 = {
  base00 = "#fafafa",
  base01 = "#EEEEEE",
  base02 = "#E7E7E8",
  base03 = "#D2D4D5",
  base04 = "#C4C4C4",
  base05 = "#435862",
  base06 = "#7E8EAA",
  base07 = "#546e7a",
  base08 = M.base_30.yellow,
  base09 = "#F76D47",
  base0A = "#00BCD4",
  base0B = "#91B859",
  base0C = "#39ADB5",
  base0D = "#6182B8",
  base0E = "#7C4DFF",
  base0F = "#E53935",
}

M.polish_hl = {
  treesitter = {
    ["@operator"] = { fg = M.base_30.cyan },
    ["@variable"] = { fg = M.base_16.base07 },
    ["@module"] = { fg = M.base_16.base07 },
    ["@variable.member"] = { fg = M.base_16.base07 },

    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@variable.parameter"] = { fg = M.base_30.orange },
    ["@operator"] = { fg = M.base_30.cyan },
    ["@punctuation.delimiter"] = { fg = M.base_30.cyan },
    ["@punctuation.bracket"] = { fg = M.base_30.cyan },
    ["@punctuation.special"] = { fg = M.base_30.teal },
    ["@function.macro"] = { fg = M.base_30.pink },
    ["@keyword.storage"] = { fg = M.base_30.purple },
  },

  syntax = {
    Operator = { fg = M.base_30.cyan },
    StorageClass = { fg = M.base_30.purple },
    Repeat = { fg = M.base_30.purple },
    Define = { fg = M.base_30.blue },
  },

  telescope = {
    TelescopeSelection = { bg = M.base_30.one_bg },
  },
}

M.type = "light"

M = require("base46").override_theme(M, "material-lighter")

return M
