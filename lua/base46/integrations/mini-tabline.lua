local colors = require("base46").get_theme_tb "base_30"

local config = require "nvconfig"

local highlights = {
  MiniTablineCurrent = {
    fg = colors.white,
    bg = colors.black,
    underline = true,
  },

  MiniTablineVisible = {
    fg = colors.white,
    bg = colors.black,
  },

  MiniTablineHidden = {
    fg = colors.light_grey,
    bg = colors.black2,
  },

  MiniTablineModifiedCurrent = {
    fg = colors.green,
    bg = colors.black,
    underline = true,
  },

  MiniTablineModifiedVisible = {
    fg = colors.green,
    bg = colors.black,
  },

  MiniTablineModifiedHidden = {
    fg = colors.red,
    bg = colors.black2,
  },

  MiniTablineTabpagesection = {
    fg = colors.black,
    bg = colors.blue,
  },
}

local hlgroups_glassy = {
  "MiniTablineCurrent",
  "MiniTablineVisible",
  "MiniTablineHidden",
  "MiniTablineModifiedCurrent",
  "MiniTablineModifiedVisible",
  "MiniTablineModifiedHidden",
}

if config.base46.transparency then
  for _, val in ipairs(hlgroups_glassy) do
    highlights[val].bg = "NONE"
  end
end

return highlights
