local M = {}

function M.get(c)
  return {
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.amber },
    DiagnosticInfo = { fg = c.cyan },
    DiagnosticHint = { fg = c.olive_bright },
    DiagnosticOk = { fg = c.teal },

    DiagnosticSignError = { fg = c.red },
    DiagnosticSignWarn = { fg = c.amber },
    DiagnosticSignInfo = { fg = c.cyan },
    DiagnosticSignHint = { fg = c.olive_bright },
    DiagnosticSignOk = { fg = c.teal },

    DiagnosticVirtualTextError = { fg = c.red, bg = c.error_bg },
    DiagnosticVirtualTextWarn = { fg = c.amber, bg = c.warn_bg },
    DiagnosticVirtualTextInfo = { fg = c.cyan, bg = c.info_bg },
    DiagnosticVirtualTextHint = { fg = c.olive_bright, bg = c.hint_bg },
    DiagnosticVirtualTextOk = { fg = c.teal, bg = c.hint_bg },

    DiagnosticFloatingError = { fg = c.red },
    DiagnosticFloatingWarn = { fg = c.amber },
    DiagnosticFloatingInfo = { fg = c.cyan },
    DiagnosticFloatingHint = { fg = c.olive_bright },
    DiagnosticFloatingOk = { fg = c.teal },

    DiagnosticUnderlineError = { sp = c.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.amber, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.cyan, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.olive_bright, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.teal, undercurl = true },

    LspReferenceText = { bg = c.selection },
    LspReferenceRead = { bg = c.selection },
    LspReferenceWrite = { bg = c.selection, bold = true },
    LspReferenceTarget = { fg = c.amber, bold = true },
    LspInlayHint = { fg = c.muted, bg = c.bg_alt },
    LspCodeLens = { fg = c.subtle },
    LspCodeLensSeparator = { fg = c.subtle },
    LspSignatureActiveParameter = { fg = c.bg, bg = c.search_current, bold = true },

    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.decorator'] = { fg = c.rust },
    ['@lsp.type.enum'] = { fg = c.cyan },
    ['@lsp.type.enumMember'] = { fg = c.amber },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.interface'] = { fg = c.teal },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.type.macro'] = { fg = c.rust },
    ['@lsp.type.method'] = { link = '@function.method' },
    ['@lsp.type.namespace'] = { fg = c.teal },
    ['@lsp.type.parameter'] = { link = '@variable.parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.string'] = { link = '@string' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.typeParameter'] = { fg = c.cyan },
    ['@lsp.type.variable'] = { link = '@variable' },

    ['@lsp.mod.defaultLibrary'] = { fg = c.rust },
    ['@lsp.mod.deprecated'] = { strikethrough = true, fg = c.subtle },
    ['@lsp.mod.readonly'] = { italic = true },
    ['@lsp.mod.static'] = { fg = c.amber },
    ['@lsp.mod.async'] = { italic = true },

    ['@lsp.typemod.variable.readonly'] = { fg = c.violet, italic = true },
    ['@lsp.typemod.function.async'] = { fg = c.amber, italic = true },
  }
end

return M
