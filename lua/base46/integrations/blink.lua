local base16 = require("base46").get_theme_tb "base_16"
local colors = require("base46").get_theme_tb "base_30"
local mixcolors = require("base46.colors").mix
local generate_color = require("base46.colors").change_hex_lightness

local black2_l = generate_color(colors.black2, 6)
local black2_d = generate_color(colors.black2, -6)

local highlights = {
  BlinkCmpMenu = { bg = colors.black },
  BlinkCmpMenuBorder = { fg = colors.grey_fg },
  BlinkCmpMenuSelection = { link = "PmenuSel", bold = true },
  BlinkCmpScrollBarThumb = { bg = colors.grey },
  BlinkCmpScrollBarGutter = { bg = colors.black2 },
  BlinkCmpLabel = { fg = colors.white },
  BlinkCmpLabelDeprecated = { fg = colors.red, strikethrough = true },
  BlinkCmpLabelMatch = { fg = colors.blue, bold = true },
  BlinkCmpLabelDetail = { fg = colors.light_grey },
  BlinkCmpLabelDescription = { fg = colors.light_grey },
  BlinkCmpSource = { fg = colors.grey_fg },
  BlinkCmpGhostText = { fg = colors.grey_fg },
  BlinkCmpDoc = { bg = colors.black },
  BlinkCmpDocBorder = { fg = colors.grey_fg },
  BlinkCmpDocSeparator = { fg = colors.grey },
  BlinkCmpDocCursorLine = { bg = colors.one_bg },
  BlinkCmpSignatureHelp = { bg = colors.black },
  BlinkCmpSignatureHelpBorder = { fg = colors.grey_fg },
  BlinkCmpSignatureHelpActiveParameter = { fg = colors.blue, bold = true },
}

-- Kind highlights
local kinds = {
  Constant = base16.base09,
  Function = base16.base0D,
  Identifier = base16.base08,
  Field = base16.base08,
  Variable = base16.base05,
  Snippet = colors.red,
  Text = base16.base0B,
  Structure = base16.base0E,
  Type = base16.base0A,
  Keyword = base16.base0E,
  Method = base16.base0D,
  Constructor = base16.base0C,
  Folder = base16.base07,
  Module = base16.base0A,
  Property = base16.base08,
  Enum = colors.blue,
  Unit = base16.base0E,
  Class = colors.teal,
  File = base16.base07,
  Interface = colors.green,
  Color = colors.white,
  Reference = base16.base05,
  EnumMember = colors.purple,
  Struct = base16.base0E,
  Value = colors.cyan,
  Event = colors.yellow,
  Operator = base16.base05,
  TypeParameter = base16.base08,
  Copilot = colors.green,
  Codeium = colors.vibrant_green,
  TabNine = colors.baby_pink,
  SuperMaven = colors.yellow,
}

for kind, color in pairs(kinds) do
  highlights["BlinkCmpKind" .. kind] = { fg = color }
end

-- style-specific overrides
local cmp_ui = require("nvconfig").ui.cmp

local styles = {
  default = {
    BlinkCmpMenuBorder = { fg = colors.grey_fg },
  },

  atom = {
    BlinkCmpMenu = { bg = colors.black2 },
    BlinkCmpDoc = { bg = colors.darker_black },
    BlinkCmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
  },

  atom_colored = {
    BlinkCmpMenu = { bg = colors.black2 },
    BlinkCmpDoc = { bg = colors.darker_black },
    BlinkCmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
  },

  flat_light = {
    BlinkCmpMenu = { bg = colors.black2 },
    BlinkCmpDoc = { bg = colors.darker_black },
    BlinkCmpMenuBorder = { fg = colors.black2, bg = colors.black2 },
    BlinkCmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
  },

  flat_dark = {
    BlinkCmpMenu = { bg = colors.darker_black },
    BlinkCmpDoc = { bg = colors.black2 },
    BlinkCmpMenuBorder = { fg = colors.darker_black, bg = colors.darker_black },
    BlinkCmpDocBorder = { fg = colors.black2, bg = colors.black2 },
  },
}

-- atom style: add bg to kinds
if cmp_ui.style == "atom" then
  for kind, _ in pairs(kinds) do
    local hl_name = "BlinkCmpKind" .. kind
    highlights[hl_name] = vim.tbl_deep_extend("force", highlights[hl_name] or {}, {
      bg = vim.o.bg == "dark" and black2_l or black2_d,
    })
  end
end

-- atom_colored: mix fg with black for bg
if cmp_ui.style == "atom_colored" then
  for kind, _ in pairs(kinds) do
    local hl_name = "BlinkCmpKind" .. kind
    local fg = highlights[hl_name] and highlights[hl_name].fg or colors.white
    highlights[hl_name] = {
      fg = fg,
      bg = mixcolors(fg, colors.black, 70),
    }
  end
end

-- merge style overrides
highlights = vim.tbl_deep_extend("force", highlights, styles[cmp_ui.style] or {})

return highlights
