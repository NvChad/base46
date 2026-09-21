-- Credits to original theme https://github.com/kepano/flexoki/
-- This is a modified version of it

local M = {}

M.base_30 = {
  darker_black = "#171616",
  black = "#100F0F", --  bg (nvim bg)
  black2 = "#1C1B1A", -- bg2 (secondary bg)
  one_bg = "#282726", -- ui (borders)
  one_bg2 = "#343331", -- ui2 (hovered borders)
  one_bg3 = "#403E3C", -- ui3 (active borders)
  grey = "#575653", -- tx3 (faint text)
  grey_fg = "#6F6E69",
  grey_fg2 = "#878580", -- tx2 (muted text)
  light_grey = "#B7B5AC",
  white = "#CECDC3", -- tx1
  red = "#D14D41",
  baby_pink = "#d36da1",
  pink = "#CE5D97",
  green = "#879A39",
  vibrant_green = "#7e9f0e",
  nord_blue = "#4385BE",
  blue = "#4385BE",
  yellow = "#D0A215",
  sun = "#eabb2b",
  purple = "#8B7EC8",
  dark_purple = "#7f70c2",
  teal = "#519ABA",
  orange = "#DA702C",
  cyan = "#3AA99F",
  statusline_bg = "#171616",
  lightbg = "#292626",
}
M.base_30.pmenu_bg = M.base_30.cyan
M.base_30.folder_bg = M.base_30.blue
M.base_30.line = M.base_30.one_bg -- for lines like vertsplit

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.black2,
  base02 = M.base_30.one_bg,
  base03 = M.base_30.grey,
  base04 = M.base_30.grey_fg,
  base05 = M.base_30.white,
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = M.base_30.red,
  base09 = M.base_30.orange,
  base0A = M.base_30.purple,
  base0B = M.base_30.green,
  base0C = M.base_30.cyan,
  base0D = M.base_30.blue,
  base0E = M.base_30.yellow,
  base0F = M.base_30.teal,
}

local colors = {
  keyword = M.base_30.green,
  keyword_variable = M.base_30.blue,
  include = M.base_30.red,

  constructor = M.base_30.red,
  punctuation = M.base_30.grey_fg2,
  operator = M.base_30.grey_fg2,

  tag = M.base_30.white,
  type = M.base_30.orange,
  boolean = M.base_30.yellow,
  module = M.base_30.green,
  call = M.base_30.orange,
  variable = M.base_30.white,
  variable_builtin = M.base_30.blue,
  member = M.base_30.white,
  property = M.base_30.blue,
  attribute = M.base_30.orange,

  special = M.base_30.pink,
  specialChar = M.base_30.pink,

  comment = M.base_30.grey,
  number = M.base_30.purple,
  functions = M.base_30.orange,
  string = M.base_30.cyan,
  parameter = M.base_30.blue,
  constant = M.base_30.yellow,
}

M.polish_hl = {
  tbline = {
    TbFill = { bg = "NONE" },
    TbBufOn = { fg = M.base_30.white, bg = M.base_30.black },
    TbBufOnClose = { fg = M.base_30.red, bg = M.base_30.black },
    TbBufOff = { fg = M.base_30.grey, bg = "NONE" },
    TbBufOffClose = { bg = "NONE" },
    TbBufOnModified = { fg = M.base_30.green, bg = M.base_30.black },
    TbBufOffModified = { fg = M.base_30.red, bg = "NONE" },
  },
  telescope = {
    TelescopeResultsNormal = { fg = M.base_30.grey_fg2 },
    TelescopeSelection = { fg = M.base_30.white },
    TelescopeMatching = { fg = M.base_30.green, bg = "NONE", bold = true },
  },
  syntax = {
    Boolean = { fg = colors.boolean },
    Character = { fg = colors.specialChar },
    Conditional = { fg = colors.keyword },
    Constant = { fg = colors.constant },
    Define = { fg = colors.keyword_variable, sp = "none" },
    Delimiter = { fg = colors.punctuation },
    Float = { fg = colors.number },
    Variable = { fg = colors.variable },
    Function = { fg = colors.functions },
    Identifier = { fg = colors.keyword, sp = "none" },
    Include = { fg = colors.include },
    Keyword = { fg = colors.keyword },
    Label = { fg = colors.string },
    Number = { fg = colors.number },
    Operator = { fg = colors.operator, sp = "none" },
    Repeat = { fg = colors.keyword },
    Special = { fg = colors.special },
    SpecialChar = { fg = colors.specialChar },
    Statement = { fg = colors.constructor },
    StorageClass = { fg = colors.constructor },
    String = { fg = colors.string },
    Structure = { fg = colors.constructor },
    Tag = { fg = colors.tag },
    Type = { fg = colors.type, sp = "none" },
    Typedef = { fg = colors.type },
  },
  treesitter = {
    ["@keyword"] = { fg = colors.keyword_variable },
    ["@keyword.return"] = { fg = colors.keyword },
    ["@keyword.conditional"] = { fg = colors.keyword },
    ["@keyword.operator"] = { fg = colors.keyword },
    ["@keyword.function"] = { fg = colors.keyword },
    ["@keyword.repeat"] = { fg = colors.keyword },
    ["@keyword.exception"] = { fg = colors.keyword },

    ["@constant"] = { fg = colors.constant },
    ["@constant.builtin"] = { fg = colors.constant },
    ["@variable"] = { fg = colors.variable },
    ["@variable.builtin"] = { fg = colors.variable_builtin },
    ["@variable.member"] = { fg = colors.member },
    ["@variable.parameter"] = { fg = colors.parameter },
    ["@attribute"] = { fg = colors.attribute },
    ["@property"] = { fg = colors.property },

    ["@tag.attribute"] = { bg = colors.tag },
    ["@tag"] = { bg = colors.tag },

    ["@string"] = { fg = colors.string },
    ["@string.special.url"] = { bg = colors.string },
    ["@markup.link.url"] = { bg = colors.string },

    ["@punctuation.bracket"] = { fg = colors.punctuation },
    ["@punctuation.delimiter"] = { fg = colors.punctuation },

    ["@operator"] = { fg = colors.operator },
    ["@constructor"] = { fg = colors.constructor },

    ["@function.call"] = { fg = colors.call },
    ["@function.method.call"] = { fg = colors.call },
    ["@function.builtin"] = { fg = colors.keyword },

    ["@type.builtin"] = { fg = colors.type },

    ["@number"] = { fg = colors.number },
    ["@number.float"] = { fg = colors.number },

    ["@comment"] = { fg = colors.comment },
    ["@function"] = { fg = colors.functions },
    ["@module"] = { fg = colors.module },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "flexoki")

return M
