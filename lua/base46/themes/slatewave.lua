-- Slatewave for NvChad (base46 theme).
-- Slate below, teal above. A dark theme built on a slate foundation with a
-- teal signature and sky / rose / purple / amber accents.
--
-- Raw hexes mirror neovim-slatewave/lua/slatewave/palette.lua, which in turn
-- mirrors vscode-slatewave. When that palette changes, update the values here.
--
-- Install: copy this file to ~/.config/nvim/lua/themes/slatewave.lua and set
--   M.base46 = { theme = "slatewave" } in your chadrc. See the README.

local M = {}

-- === Palette (single source of truth for this file) ==========================

-- slate foundation
local slate_950 = "#020617"
local slate_900 = "#0f172a"
local slate_800 = "#1e293b"
local slate_700 = "#334155"
local slate_600 = "#475569"
local slate_500 = "#64748b"
local slate_400 = "#94a3b8"
local slate_300 = "#cbd5e1"
local slate_200 = "#e2e8f0"
local slate_100 = "#f1f5f9"

-- teal signature
local teal_400 = "#2dd4bf"
local teal_300 = "#5eead4" -- primary accent
local teal_200 = "#99f6e4"

-- accents
local sky_400 = "#38bdf8"
local sky_300 = "#7dd3fc"
local cyan_300 = "#67e8f9"
local purple = "#B388FF"
local purple_light = "#c4b5fd"
local rose_400 = "#fb7185"
local red_500 = "#ef5350"
local amber_400 = "#fbbf24"
local amber_700 = "#b45309"
local orange = "#fb923c"

-- === base_30: UI / chrome colors ============================================

M.base_30 = {
  white = slate_200,
  darker_black = "#21252b", -- slate_chrome: nvim-tree / darker panels
  black = "#282c34", -- slate_editor: Normal background
  black2 = "#2d323c",
  one_bg = "#323843",
  one_bg2 = "#3a4150",
  one_bg3 = "#434b59",
  grey = "#545c6b",
  grey_fg = "#5e6675",
  grey_fg2 = "#68707f",
  light_grey = "#7a8393",
  red = red_500,
  baby_pink = rose_400,
  pink = rose_400,
  line = "#333a45", -- vertsplit / lines
  green = teal_300,
  vibrant_green = teal_400,
  nord_blue = sky_400,
  blue = sky_300,
  yellow = amber_400,
  sun = amber_400,
  purple = purple,
  dark_purple = purple_light,
  teal = teal_300,
  orange = orange,
  cyan = cyan_300,
  statusline_bg = "#23272f",
  lightbg = "#353b46",
  pmenu_bg = teal_300,
  folder_bg = teal_300,
}

-- === base_16: syntax colors =================================================

M.base_16 = {
  base00 = "#282c34", -- default bg
  base01 = "#2d323c", -- lighter bg (cursorline / statusline chrome)
  base02 = slate_700, -- selection bg (Visual)
  base03 = slate_500, -- comments, invisibles
  base04 = slate_600, -- dark fg (line numbers)
  base05 = slate_200, -- default fg
  base06 = "#eef2f7", -- light fg
  base07 = "#f8fafc", -- lightest fg
  base08 = rose_400, -- variables / tags
  base09 = rose_400, -- numbers, constants, booleans
  base0A = teal_200, -- types, classes
  base0B = teal_300, -- strings
  base0C = cyan_300, -- support, escapes
  base0D = sky_300, -- functions, methods
  base0E = sky_400, -- keywords
  base0F = amber_700, -- deprecated, embedded
}

M.type = "dark"

-- === polish_hl: nail the Slatewave scope -> color mapping ====================
-- base46 gets most UI from the tables above; these overrides reproduce the
-- exact syntax intent shared with the standalone Neovim and VSCode themes
-- (e.g. sky keywords vs. purple storage, teal strings, rose numbers).

M.polish_hl = {
  syntax = {
    Comment = { fg = slate_500 },
    Constant = { fg = rose_400 },
    String = { fg = teal_300 },
    Character = { fg = teal_300 },
    Number = { fg = rose_400 },
    Float = { fg = rose_400 },
    Boolean = { fg = rose_400 },
    Identifier = { fg = slate_200 },
    Function = { fg = sky_300 },
    Statement = { fg = sky_400 },
    Conditional = { fg = sky_400 },
    Repeat = { fg = sky_400 },
    Label = { fg = sky_400 },
    Operator = { fg = slate_400 },
    Keyword = { fg = sky_400 },
    Exception = { fg = sky_400 },
    PreProc = { fg = purple },
    Include = { fg = sky_400 },
    Define = { fg = purple },
    Macro = { fg = amber_400 },
    PreCondit = { fg = sky_400 },
    Type = { fg = teal_200 },
    StorageClass = { fg = purple },
    Structure = { fg = teal_200 },
    Typedef = { fg = teal_200 },
    Special = { fg = amber_400 },
    SpecialChar = { fg = amber_400 },
    Tag = { fg = sky_400 },
    Delimiter = { fg = slate_400 },
    SpecialComment = { fg = slate_400, italic = true },
    Underlined = { fg = sky_400, underline = true },
  },

  treesitter = {
    -- Identifiers
    ["@variable"] = { fg = slate_200 },
    ["@variable.builtin"] = { fg = purple }, -- this / self / super
    ["@variable.parameter"] = { fg = slate_300, italic = true },
    ["@variable.parameter.builtin"] = { fg = slate_300, italic = true },
    ["@variable.member"] = { fg = slate_300 },
    ["@constant"] = { fg = rose_400 },
    ["@constant.builtin"] = { fg = rose_400 },
    ["@constant.macro"] = { fg = amber_400 },
    ["@module"] = { fg = teal_300 },
    ["@module.builtin"] = { fg = teal_300 },
    ["@label"] = { fg = sky_400 },

    -- Literals
    ["@string"] = { fg = teal_300 },
    ["@string.regexp"] = { fg = rose_400 },
    ["@string.escape"] = { fg = amber_400 },
    ["@string.special"] = { fg = amber_400 },
    ["@string.special.path"] = { fg = sky_400, underline = true },
    ["@string.special.symbol"] = { fg = purple },
    ["@string.special.url"] = { fg = sky_400, underline = true },
    ["@character"] = { fg = teal_300 },
    ["@character.special"] = { fg = amber_400 },
    ["@boolean"] = { fg = rose_400 },
    ["@number"] = { fg = rose_400 },
    ["@number.float"] = { fg = rose_400 },

    -- Types
    ["@type"] = { fg = teal_200 },
    ["@type.builtin"] = { fg = sky_400 },
    ["@type.definition"] = { fg = teal_200 },
    ["@type.qualifier"] = { fg = purple },
    ["@attribute"] = { fg = amber_400 },
    ["@attribute.builtin"] = { fg = amber_400 },
    ["@property"] = { fg = slate_300 },

    -- Functions
    ["@function"] = { fg = sky_300 },
    ["@function.builtin"] = { fg = sky_400 },
    ["@function.call"] = { fg = sky_300 },
    ["@function.macro"] = { fg = amber_400 },
    ["@function.method"] = { fg = sky_300 },
    ["@function.method.call"] = { fg = sky_300 },
    ["@constructor"] = { fg = teal_200 },
    ["@operator"] = { fg = slate_400 },

    -- Keywords
    ["@keyword"] = { fg = sky_400 },
    ["@keyword.coroutine"] = { fg = sky_400 },
    ["@keyword.function"] = { fg = purple },
    ["@keyword.operator"] = { fg = sky_400 },
    ["@keyword.import"] = { fg = sky_400 },
    ["@keyword.type"] = { fg = purple },
    ["@keyword.modifier"] = { fg = purple },
    ["@keyword.repeat"] = { fg = sky_400 },
    ["@keyword.return"] = { fg = sky_400 },
    ["@keyword.debug"] = { fg = amber_400 },
    ["@keyword.exception"] = { fg = sky_400 },
    ["@keyword.conditional"] = { fg = sky_400 },
    ["@keyword.conditional.ternary"] = { fg = sky_400 },
    ["@keyword.directive"] = { fg = purple },
    ["@keyword.directive.define"] = { fg = purple },
    ["@keyword.export"] = { fg = sky_400 },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = slate_400 },
    ["@punctuation.bracket"] = { fg = slate_400 },
    ["@punctuation.special"] = { fg = purple },

    -- Comments
    ["@comment"] = { fg = slate_500 },
    ["@comment.documentation"] = { fg = slate_500 },
    ["@comment.error"] = { fg = rose_400 },
    ["@comment.warning"] = { fg = amber_400 },
    ["@comment.hint"] = { fg = teal_300 },
    ["@comment.info"] = { fg = sky_400 },
    ["@comment.note"] = { fg = teal_300 },
    ["@comment.todo"] = { fg = slate_900, bg = amber_400, bold = true },

    -- Markup
    ["@markup.strong"] = { fg = sky_400, bold = true },
    ["@markup.italic"] = { fg = purple, italic = true },
    ["@markup.strikethrough"] = { fg = slate_500, strikethrough = true },
    ["@markup.underline"] = { fg = sky_400, underline = true },
    ["@markup.heading"] = { fg = teal_300, bold = true },
    ["@markup.heading.1"] = { fg = teal_300, bold = true },
    ["@markup.heading.2"] = { fg = sky_400, bold = true },
    ["@markup.heading.3"] = { fg = purple, bold = true },
    ["@markup.heading.4"] = { fg = teal_200, bold = true },
    ["@markup.heading.5"] = { fg = sky_300, bold = true },
    ["@markup.heading.6"] = { fg = slate_300, bold = true },
    ["@markup.quote"] = { fg = slate_400, italic = true },
    ["@markup.math"] = { fg = teal_200 },
    ["@markup.link"] = { fg = sky_400 },
    ["@markup.link.label"] = { fg = teal_300 },
    ["@markup.link.url"] = { fg = sky_400, underline = true },
    ["@markup.raw"] = { fg = teal_200 },
    ["@markup.raw.block"] = { fg = teal_200 },
    ["@markup.list"] = { fg = rose_400 },
    ["@markup.list.checked"] = { fg = teal_300 },
    ["@markup.list.unchecked"] = { fg = slate_500 },

    -- Diff
    ["@diff.plus"] = { fg = teal_300 },
    ["@diff.minus"] = { fg = rose_400 },
    ["@diff.delta"] = { fg = amber_400 },

    -- Tags (HTML / JSX / XML)
    ["@tag"] = { fg = sky_400 },
    ["@tag.builtin"] = { fg = sky_400 },
    ["@tag.attribute"] = { fg = purple },
    ["@tag.delimiter"] = { fg = slate_500 },

    -- LSP semantic tokens
    ["@lsp.type.enumMember"] = { fg = rose_400 },
    ["@lsp.type.macro"] = { fg = amber_400 },
    ["@lsp.type.selfKeyword"] = { fg = purple },
    ["@lsp.type.builtinType"] = { fg = sky_400 },
    ["@lsp.typemod.variable.readonly"] = { fg = rose_400 },
    ["@lsp.typemod.enumMember.readonly"] = { fg = rose_400 },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  },

  defaults = {
    -- Signature UI accents on top of the base46 defaults.
    CursorLineNr = { fg = teal_300, bold = true },
    MatchParen = { fg = teal_300, bold = true, underline = true },
    Directory = { fg = teal_300 },
    Title = { fg = teal_300, bold = true },
    Search = { fg = slate_900, bg = sky_400 },
    IncSearch = { fg = slate_900, bg = amber_400 },
    CurSearch = { fg = slate_900, bg = amber_400 },
  },
}

-- Lets users override this theme's colors from chadrc (base46.changed_themes).
-- Required for themes bundled in NvChad/base46; harmless for a custom theme.
M = require("base46").override_theme(M, "slatewave")

return M
