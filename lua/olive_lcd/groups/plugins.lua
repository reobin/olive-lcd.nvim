local M = {}

function M.get(c, opts)
  local groups = {}

  if opts.plugins.telescope then
    groups.TelescopeNormal = { fg = c.fg, bg = c.bg_float }
    groups.TelescopeBorder = { fg = c.border, bg = c.bg_float }
    groups.TelescopeTitle = { fg = c.olive_bright, bg = c.bg_float, bold = true }
    groups.TelescopePromptTitle = { fg = c.bg, bg = c.olive_bright, bold = true }
    groups.TelescopeSelection = { bg = c.selection }
    groups.TelescopeMatching = { fg = c.amber, bold = true }
  end

  if opts.plugins.gitsigns then
    groups.GitSignsAdd = { fg = c.olive_bright }
    groups.GitSignsChange = { fg = c.amber }
    groups.GitSignsDelete = { fg = c.red }
    groups.GitSignsCurrentLineBlame = { fg = c.subtle }
  end

  if opts.plugins.which_key then
    groups.WhichKey = { fg = c.olive_bright }
    groups.WhichKeyDesc = { fg = c.fg }
    groups.WhichKeyGroup = { fg = c.teal }
    groups.WhichKeySeparator = { fg = c.subtle }
    groups.WhichKeyValue = { fg = c.muted }
  end

  if opts.plugins.cmp then
    groups.CmpItemAbbr = { fg = c.fg }
    groups.CmpItemAbbrDeprecated = { fg = c.subtle, strikethrough = true }
    groups.CmpItemAbbrMatch = { fg = c.amber, bold = true }
    groups.CmpItemAbbrMatchFuzzy = { fg = c.amber }
    groups.CmpItemKind = { fg = c.teal }
    groups.CmpItemMenu = { fg = c.muted }
  end

  if opts.plugins.neo_tree then
    groups.NeoTreeNormal = { fg = c.fg, bg = c.bg_alt }
    groups.NeoTreeNormalNC = { fg = c.fg, bg = c.bg_alt }
    groups.NeoTreeDirectoryName = { fg = c.teal }
    groups.NeoTreeDirectoryIcon = { fg = c.olive }
    groups.NeoTreeFileNameOpened = { fg = c.amber }
    groups.NeoTreeGitAdded = { fg = c.olive_bright }
    groups.NeoTreeGitModified = { fg = c.amber }
    groups.NeoTreeGitDeleted = { fg = c.red }
    groups.NeoTreeRootName = { fg = c.olive_bright, bold = true }
  end

  if opts.plugins.oil then
    groups.OilDir = { fg = c.teal }
    groups.OilDirIcon = { fg = c.olive }
    groups.OilChange = { fg = c.amber }
    groups.OilCopy = { fg = c.olive_bright }
    groups.OilMove = { fg = c.rust }
    groups.OilPurge = { fg = c.red }
    groups.OilTrash = { fg = c.red }
  end

  if opts.plugins.notify then
    groups.NotifyERRORBorder = { fg = c.red }
    groups.NotifyWARNBorder = { fg = c.amber }
    groups.NotifyINFOBorder = { fg = c.cyan }
    groups.NotifyDEBUGBorder = { fg = c.subtle }
    groups.NotifyTRACEBorder = { fg = c.violet }
    groups.NotifyERRORTitle = { fg = c.red }
    groups.NotifyWARNTitle = { fg = c.amber }
    groups.NotifyINFOTitle = { fg = c.cyan }
    groups.NotifyDEBUGTitle = { fg = c.subtle }
    groups.NotifyTRACETitle = { fg = c.violet }
  end

  if opts.plugins.mini then
    groups.MiniStatuslineModeNormal = { fg = c.bg, bg = c.olive_bright, bold = true }
    groups.MiniStatuslineModeInsert = { fg = c.bg, bg = c.teal, bold = true }
    groups.MiniStatuslineModeVisual = { fg = c.bg, bg = c.amber, bold = true }
    groups.MiniStatuslineModeReplace = { fg = c.bg, bg = c.rust, bold = true }
    groups.MiniStatuslineModeCommand = { fg = c.bg, bg = c.violet, bold = true }
    groups.MiniIndentscopeSymbol = { fg = c.border }
    groups.MiniJump = { fg = c.bg, bg = c.search_current, bold = true }
    groups.MiniStarterHeader = { fg = c.olive_bright }
    groups.MiniStarterItem = { fg = c.fg }
    groups.MiniStarterQuery = { fg = c.amber }
  end

  if opts.plugins.treesitter_context then
    groups.TreesitterContext = { bg = c.bg_alt }
    groups.TreesitterContextLineNumber = { fg = c.subtle, bg = c.bg_alt }
    groups.TreesitterContextBottom = { sp = c.border, underline = true }
  end

  groups.LazyButton = { fg = c.fg, bg = c.bg_alt }
  groups.LazyButtonActive = { fg = c.bg, bg = c.olive_bright, bold = true }
  groups.LazyComment = { fg = c.muted }
  groups.LazyDimmed = { fg = c.subtle }
  groups.LazyH1 = { fg = c.bg, bg = c.olive_bright, bold = true }
  groups.LazySpecial = { fg = c.amber }
  groups.TodoBgTODO = { fg = c.bg, bg = c.search_current, bold = true }
  groups.TodoBgFIX = { fg = c.bg, bg = c.red, bold = true }
  groups.TodoBgWARN = { fg = c.bg, bg = c.amber, bold = true }
  groups.TodoBgNOTE = { fg = c.bg, bg = c.teal, bold = true }

  return groups
end

return M
