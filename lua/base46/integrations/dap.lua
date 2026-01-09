local colors = require("base46").get_theme_tb "base_30"

return {
  -- Dap
  DapBreakpoint = { fg = colors.red },
  DapBreakpointCondition = { fg = colors.yellow },
  DapBreakPointRejected = { fg = colors.orange },
  DapLogPoint = { fg = colors.cyan },
  DapStopped = { fg = colors.baby_pink },
  DapStoppedLine = { bg = colors.one_bg },

  -- DapUI
  DAPUIScope = { fg = colors.cyan },
  DAPUIType = { fg = colors.dark_purple },
  DAPUIValue = { fg = colors.cyan },
  DAPUIVariable = { fg = colors.white },
  DapUIModifiedValue = { fg = colors.orange },
  DapUIDecoration = { fg = colors.cyan },
  DapUIThread = { fg = colors.green },
  DapUIStoppedThread = { fg = colors.cyan },
  DapUISource = { fg = colors.lavender },
  DapUILineNumber = { fg = colors.cyan },
  DapUIFloatBorder = { fg = colors.cyan },

  DapUIWatchesEmpty = { fg = colors.baby_pink },
  DapUIWatchesValue = { fg = colors.green },
  DapUIWatchesError = { fg = colors.baby_pink },

  DapUIBreakpointsPath = { fg = colors.cyan },
  DapUIBreakpointsInfo = { fg = colors.green },
  DapUIBreakPointsCurrentLine = { fg = colors.green, bold = true },
  DapUIBreakpointsDisabledLine = { fg = colors.grey_fg2 },

  DapUIStepOver = { fg = colors.blue },
  DapUIStepOverNC = { fg = colors.blue },
  DapUIStepInto = { fg = colors.blue },
  DapUIStepIntoNC = { fg = colors.blue },
  DapUIStepBack = { fg = colors.blue },
  DapUIStepBackNC = { fg = colors.blue },
  DapUIStepOut = { fg = colors.blue },
  DapUIStepOutNC = { fg = colors.blue },
  DapUIStop = { fg = colors.red },
  DapUIStopNC = { fg = colors.red },
  DapUIPlayPause = { fg = colors.green },
  DapUIPlayPauseNC = { fg = colors.green },
  DapUIRestart = { fg = colors.green },
  DapUIRestartNC = { fg = colors.green },
  DapUIUnavailable = { fg = colors.grey_fg },
  DapUIUnavailableNC = { fg = colors.grey_fg },

  -- DapView
  NvimDapViewMissingData = { fg = colors.baby_pink },
  NvimDapViewFileName = { fg = colors.vibrant_green },
  NvimDapViewLineNumber = { fg = colors.cyan },
  NvimDapViewSeparator = { fg = colors.light_grey },

  NvimDapViewThread = { fg = colors.green },
  NvimDapViewThreadStopped = { fg = colors.cyan },
  NvimDapViewThreadError = { fg = colors.baby_pink },

  NvimDapViewFrameCurrent = { fg = colors.orange },

  NvimDapViewExceptionFilterEnabled = { fg = colors.green },
  NvimDapViewExceptionFilterDisabled = { fg = colors.light_grey },

  NvimDapViewTab = { fg = colors.light_grey, bg = colors.black2 },
  NvimDapViewTabSelected = { fg = colors.white, bg = colors.black },

  NvimDapViewControlNC = { fg = colors.grey_fg },
  NvimDapViewControlPlay = { fg = colors.green },
  NvimDapViewControlPause = { fg = colors.orange },
  NvimDapViewControlStepInto = { fg = colors.blue },
  NvimDapViewControlStepOut = { fg = colors.blue },
  NvimDapViewControlStepOver = { fg = colors.blue },
  NvimDapViewControlStepBack = { fg = colors.blue },
  NvimDapViewControlRunLast = { fg = colors.green },
  NvimDapViewControlTerminate = { fg = colors.red },
  NvimDapViewControlDisconnect = { fg = colors.red },

  NvimDapViewWatchExpr = { fg = colors.vibrant_green },
  NvimDapViewWatchMore = { fg = colors.light_grey },
  NvimDapViewWatchError = { fg = colors.baby_pink },
  NvimDapViewWatchUpdated = { fg = colors.orange },

  NvimDapViewBoolean = { link = "Boolean" },
  NvimDapViewString = { link = "String" },
  NvimDapViewNumber = { link = "Number" },
  NvimDapViewFloat = { link = "Float" },
  NvimDapViewFunction = { link = "Function" },
  NvimDapViewConstant = { link = "Constant" },
}
