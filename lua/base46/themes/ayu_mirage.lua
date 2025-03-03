-- Based on Ayu Mirage colors from:
-- https://github.com/mbadolato/iTerm2-Color-Schemes

local M = {}

M.base_30 = {
  -- Background colors (from the ghostty config)
  black = "#1F2430",       -- Background Color
  darker_black = "#191e2a", -- Darker than background (palette 0)
  black2 = "#272D38",      -- Slightly lighter than background
  
  -- Foreground colors
  white = "#CBCCC6",       -- Foreground Color
  
  -- UI element colors
  one_bg = "#272D38",      -- Slightly lighter than bg
  one_bg2 = "#2E3440",     -- Lighter than one_bg
  one_bg3 = "#353B46",     -- Lighter than one_bg2
  line = "#272D38",        -- Line highlight
  statusline_bg = "#242B38", -- Statusline background
  lightbg = "#33415E",     -- Light background (Selection Background)
  
  -- Text colors
  grey = "#686868",        -- Comment color (palette 8)
  grey_fg = "#767676",     -- Lighter than grey
  grey_fg2 = "#878787",    -- Lighter than grey_fg
  light_grey = "#C7C7C7",  -- palette 7
  
  -- Syntax colors from ghostty config
  red = "#ED8274",         -- palette 1
  baby_pink = "#F28779",   -- palette 9
  pink = "#F28779",        -- Same as baby_pink
  
  green = "#A6CC70",       -- palette 2
  vibrant_green = "#BAE67E", -- palette 10
  
  yellow = "#FAD07B",      -- palette 3
  sun = "#FFD580",         -- palette 11
  
  blue = "#6DCBFA",        -- palette 4
  nord_blue = "#73D0FF",   -- palette 12
  
  purple = "#CFBAFA",      -- palette 5
  dark_purple = "#D4BFFF", -- palette 13
  
  teal = "#90E1C6",        -- palette 6
  cyan = "#95E6CB",        -- palette 14
  
  orange = "#FFCC66",      -- cursor-color
  
  -- UI specific colors
  pmenu_bg = "#FFCC66",    -- Popup menu background (cursor-color)
  folder_bg = "#73D0FF",   -- Folder icon color (palette 12)
}

M.base_16 = {
  base00 = "#1F2430",     -- Background
  base01 = "#232834",     -- Lighter background
  base02 = "#33415E",     -- Selection background
  base03 = "#3D4752",     -- Comments, invisibles
  base04 = "#607080",     -- Dark foreground
  base05 = "#CBCCC6",     -- Default foreground
  base06 = "#DCDFE4",     -- Light foreground
  base07 = "#FFFFFF",     -- Light background (palette 15)
  
  -- Syntax highlighting colors (from palette colors)
  base08 = "#ED8274",     -- Variables, red (palette 1)
  base09 = "#FFCC66",     -- Numbers, constants, orange (cursor-color)
  base0A = "#FAD07B",     -- Classes, yellow (palette 3)
  base0B = "#A6CC70",     -- Strings, green (palette 2)
  base0C = "#90E1C6",     -- Support, teal (palette 6)
  base0D = "#6DCBFA",     -- Functions, tag names, blue (palette 4)
  base0E = "#CFBAFA",     -- Keywords, purple (palette 5)
  base0F = "#F28779",     -- Deprecated, special, orange-red (palette 9)
}

-- Optional: Add custom syntax highlighting polish
M.polish_hl = {
  Statement = { fg = M.base_30.orange },
  Type = { fg = M.base_30.blue },
  Constant = { fg = M.base_30.purple },
  Function = { fg = M.base_30.yellow },
  Special = { fg = M.base_30.sun },
  Keyword = { fg = M.base_30.pink },
  Operator = { fg = M.base_30.cyan },
  String = { fg = M.base_30.green },
}

M = require("base46").override_theme(M, "ayu_mirage")

M.type = "dark"

return M
