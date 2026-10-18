local colors = require("base46").get_theme_tb "base_30"
local mix = require("base46.colors").mix

return {
  CodeCompanionChatHeader = { fg = colors.blue, bold = true },
  CodeCompanionChatSeparator = { fg = colors.line },
  CodeCompanionChatFold = { fg = colors.grey_fg },
  CodeCompanionChatSubtext = { fg = colors.grey_fg, italic = true },
  CodeCompanionChatTokens = { fg = colors.grey_fg },
  CodeCompanionChatInfo = { fg = colors.cyan },
  CodeCompanionChatWarn = { fg = colors.yellow },
  CodeCompanionChatError = { fg = colors.red },
  CodeCompanionChatEditorContext = { fg = colors.purple, bg = mix(colors.purple, colors.black, 85) },
  CodeCompanionCLIPath = { fg = colors.teal },

  CodeCompanionChatTool = { fg = colors.orange, bg = mix(colors.orange, colors.black, 85) },
  CodeCompanionChatToolGroup = { fg = colors.orange, bold = true },
  CodeCompanionChatToolText = { fg = colors.light_grey },
  CodeCompanionChatToolPending = { fg = colors.yellow },
  CodeCompanionChatToolPendingIcon = { fg = colors.yellow },
  CodeCompanionChatToolInProgress = { fg = colors.blue },
  CodeCompanionChatToolInProgressIcon = { fg = colors.blue },
  CodeCompanionChatToolSuccess = { fg = colors.green },
  CodeCompanionChatToolSuccessIcon = { fg = colors.green },
  CodeCompanionChatToolFailure = { fg = colors.red },
  CodeCompanionChatToolFailureIcon = { fg = colors.red },

  CodeCompanionDiffAdd = { bg = mix(colors.green, colors.black, 85) },
  CodeCompanionDiffDelete = { bg = mix(colors.red, colors.black, 85) },
  CodeCompanionDiffText = { bg = mix(colors.blue, colors.black, 75) },
  CodeCompanionDiffTextDelete = { bg = mix(colors.red, colors.black, 70) },
  CodeCompanionDiffBanner = { fg = colors.black, bg = colors.blue, bold = true },
  CodeCompanionDiffBannerInline = { fg = colors.grey_fg, italic = true },

  CodeCompanionCodeReviewHeader = { fg = colors.grey_fg },
  CodeCompanionCodeReviewPath = { fg = colors.blue, bold = true },
  CodeCompanionCodeReviewAdded = { fg = colors.green },
  CodeCompanionCodeReviewRemoved = { fg = colors.red },
  CodeCompanionCodeReviewComment = { fg = colors.purple },
  CodeCompanionCodeReviewSent = { fg = colors.grey_fg },

  CodeCompanionVirtualText = { fg = colors.grey_fg, italic = true },
}
