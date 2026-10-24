local colors = require("base46").get_theme_tb "base_30"
local opts = require("nvconfig").base46

local hl = {
  IblIndent = { fg = colors.line },
  IblScope = { fg = colors.grey },
}

local scopehl = opts.transparency and { underline = true } or { bg = colors.black2 }

for i = 1, 7, 1 do
  hl["@ibl.scope.underline." .. i] = scopehl
end

return hl
