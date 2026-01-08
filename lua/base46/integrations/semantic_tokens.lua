local theme = require("base46").get_theme_tb "base_16"

return {

  ["@lsp.type.comment"] = { link = "Comment" },

  --
  ["@lsp.type.operator"] = { fg = theme.base05 },
  ["@lsp.type.punctuation"] = { fg = theme.base05 },
  ["@lsp.type.variable"] = { fg = theme.base05 },
  ["@lsp.type.attributeBracket"] = { fg = theme.base05 },

  --
  ["@lsp.type.macro"] = { fg = theme.base08 },
  ["@lsp.type.formatSpecifier"] = { fg = theme.base08 },
  ["@lsp.type.namespace"] = { fg = theme.base08 },
  ["@lsp.type.parameter"] = { fg = theme.base08 },
  ["@lsp.type.property"] = { fg = theme.base08 },
  ["@lsp.type.decorator"] = { fg = theme.base08 },
  ["@lsp.type.builtinAttribute"] = { fg = theme.base08 },
  ["@lsp.type.generic"] = { fg = theme.base08 },

  --
  ["@lsp.type.boolean"] = { fg = theme.base09 },
  ["@lsp.type.enumMember"] = { fg = theme.base09 },
  ["@lsp.type.const"] = { fg = theme.base09 },
  ["@lsp.type.number"] = { fg = theme.base09 },
  ["@lsp.type.selfKeyword"] = { fg = theme.base09 },
  ["@lsp.type.selfTypeKeyword"] = { fg = theme.base09 },
  ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = theme.base09 },
  ["@lsp.typemod.variable.defaultLibrary"] = { fg = theme.base09 },
  ["@lsp.typemod.variable.static"] = { fg = theme.base09 },

  --
  ["@lsp.type.struct"] = { fg = theme.base0A, sp = "none" },
  ["@lsp.type.class"] = { fg = theme.base0A, sp = "none" },
  ["@lsp.type.builtinType"] = { fg = theme.base0A },
  ["@lsp.type.deriveHelper"] = { fg = theme.base0A },
  ["@lsp.type.enum"] = { fg = theme.base0A, sp = "none" },
  ["@lsp.type.interface"] = { fg = theme.base0A, sp = "none" },
  ["@lsp.type.typeAlias"] = { fg = theme.base0A },
  ["@lsp.typemod.class.defaultLibrary"] = { fg = theme.base0A },
  ["@lsp.typemod.enum.defaultLibrary"] = { fg = theme.base0A },
  ["@lsp.typemod.struct.defaultLibrary"] = { fg = theme.base0A },

  --
  ["@lsp.type.string"] = { fg = theme.base0B },

  --
  ["@lsp.type.escapeSequence"] = { fg = theme.base0C },
  ["@lsp.type.lifetime"] = { fg = theme.base0C },

  --
  ["@lsp.type.function"] = { fg = theme.base0D },
  ["@lsp.type.method"] = { fg = theme.base0D },
  ["@lsp.typemod.function.defaultLibrary"] = { fg = theme.base0D },
  ["@lsp.typemod.macro.defaultLibrary"] = { fg = theme.base0D },
  ["@lsp.typemod.method.defaultLibrary"] = { fg = theme.base0D },
  ["@lsp.typemod.variable.callable"] = { fg = theme.base0D },

  --
  ["@lsp.type.keyword"] = { fg = theme.base0E },
  ["@lsp.typemod.keyword.async"] = { fg = theme.base0E },
  --
}
