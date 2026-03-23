local M = {}

function M.get(c)
  return {
    ['@comment'] = { link = 'Comment' },
    ['@comment.documentation'] = { fg = c.fg_idle },
    ['@comment.error'] = { fg = c.red, bold = true },
    ['@comment.note'] = { fg = c.teal, bold = true },
    ['@comment.todo'] = { link = 'Todo' },
    ['@comment.warning'] = { fg = c.amber, bold = true },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { fg = c.rust },
    ['@constructor'] = { fg = c.cyan },
    ['@module'] = { fg = c.teal },
    ['@label'] = { link = 'Label' },

    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = c.cyan },
    ['@string.regexp'] = { fg = c.teal },
    ['@string.special'] = { fg = c.cyan },
    ['@character'] = { link = 'Character' },
    ['@character.special'] = { fg = c.cyan },
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    ['@number.float'] = { link = 'Float' },

    ['@function'] = { link = 'Function' },
    ['@function.builtin'] = { fg = c.rust },
    ['@function.call'] = { fg = c.rust },
    ['@function.method'] = { fg = c.rust },
    ['@function.method.call'] = { fg = c.rust },
    ['@function.macro'] = { fg = c.rust },

    ['@variable'] = { fg = c.fg_alt },
    ['@variable.builtin'] = { fg = c.rust },
    ['@variable.parameter'] = { fg = c.fg },
    ['@variable.member'] = { fg = c.fg_idle },
    ['@property'] = { fg = c.fg_idle },
    ['@field'] = { fg = c.fg_idle },

    ['@type'] = { link = 'Type' },
    ['@type.builtin'] = { fg = c.cyan },
    ['@type.definition'] = { link = 'Typedef' },
    ['@attribute'] = { fg = c.amber },

    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.conditional'] = { link = 'Conditional' },
    ['@keyword.directive'] = { fg = c.rust },
    ['@keyword.exception'] = { link = 'Exception' },
    ['@keyword.function'] = { fg = c.olive },
    ['@keyword.import'] = { link = 'Include' },
    ['@keyword.operator'] = { fg = c.olive },
    ['@keyword.repeat'] = { link = 'Repeat' },
    ['@keyword.return'] = { fg = c.olive },
    ['@keyword.storage'] = { fg = c.cyan },

    ['@operator'] = { link = 'Operator' },
    ['@punctuation.bracket'] = { fg = c.fg_alt },
    ['@punctuation.delimiter'] = { fg = c.subtle },
    ['@punctuation.special'] = { fg = c.cyan },

    ['@markup.heading'] = { fg = c.olive_bright, bold = true },
    ['@markup.strong'] = { bold = true },
    ['@markup.italic'] = { italic = true },
    ['@markup.underline'] = { underline = true },
    ['@markup.strikethrough'] = { strikethrough = true },
    ['@markup.quote'] = { fg = c.muted },
    ['@markup.math'] = { fg = c.violet },
    ['@markup.raw'] = { fg = c.teal },
    ['@markup.raw.block'] = { fg = c.teal },
    ['@markup.link'] = { fg = c.cyan, underline = true },
    ['@markup.link.label'] = { fg = c.amber },
    ['@markup.link.url'] = { fg = c.cyan, underline = true },
    ['@markup.list'] = { fg = c.amber },

    ['@tag'] = { fg = c.teal },
    ['@tag.attribute'] = { fg = c.amber },
    ['@tag.delimiter'] = { fg = c.subtle },

    ['@diff.plus'] = { fg = c.olive_bright },
    ['@diff.minus'] = { fg = c.red },
    ['@diff.delta'] = { fg = c.amber },
  }
end

return M
