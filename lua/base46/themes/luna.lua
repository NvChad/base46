-- Credits to original https://github.com/WTFox/luna.nvim

local M = {}

M.base_30 = {
  white = "#e4e4e8",
  darker_black = "#000000",
  black = "#060606", --  nvim bg
  black2 = "#1c1c1c",
  one_bg = "#1f1f1f",
  one_bg2 = "#333333",
  one_bg3 = "#403c41",
  grey = "#605958",
  grey_fg = "#7c7c7c",
  grey_fg2 = "#888888",
  light_grey = "#a8a8a8",
  red = "#e08585",
  baby_pink = "#c1a89c",
  pink = "#b09080",
  line = "#404040", -- for lines like vertsplit
  green = "#6fbe80",
  vibrant_green = "#89ca97",
  nord_blue = "#8c9cb8",
  blue = "#75a1c7",
  seablue = "#809ec0",
  yellow = "#d9a35a",
  sun = "#e6a17e",
  purple = "#c4a8d6",
  dark_purple = "#8d799a",
  teal = "#8eaca5",
  orange = "#e19067",
  cyan = "#83a7b3",
  statusline_bg = "#1c1c1c",
  lightbg = "#333333",
  pmenu_bg = "#75a1c7",
  folder_bg = "#75a1c7",
}

M.base_16 = {
  base00 = "#060606",
  base01 = "#1c1c1c",
  base02 = "#384048",
  base03 = "#7c7c7c",
  base04 = "#a8a8a8",
  base05 = "#e4e4e8",
  base06 = "#f0f0f0",
  base07 = "#ffffff",
  base08 = "#c7c7c7",
  base09 = "#e19067",
  base0A = "#d9a35a",
  base0B = "#9eb38e",
  base0C = "#83a7b3",
  base0D = "#75a1c7",
  base0E = "#e19067",
  base0F = "#a8a8a8",
}

-- honor luna's "non-flat floats": floats use a distinct, lighter elevated
-- surface instead of the near-black editor bg
M.polish_hl = {
  defaults = {
    NormalFloat = { bg = "#403c41" },
    FloatBorder = { fg = "#404040", bg = "#403c41" },
  },
  treesitter = {
    ["@type"] = { fg = M.base_30.purple },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "luna")

return M
