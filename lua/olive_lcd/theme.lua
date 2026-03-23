local config = require('olive_lcd.config')
local palette = require('olive_lcd.palette')
local util = require('olive_lcd.util')

local M = {}

local function terminal_colors(c)
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.olive
  vim.g.terminal_color_3 = c.amber
  vim.g.terminal_color_4 = c.cyan
  vim.g.terminal_color_5 = c.violet
  vim.g.terminal_color_6 = c.teal
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.subtle
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.olive_bright
  vim.g.terminal_color_11 = c.sand
  vim.g.terminal_color_12 = c.cyan
  vim.g.terminal_color_13 = c.violet
  vim.g.terminal_color_14 = c.teal
  vim.g.terminal_color_15 = c.cursor
end

function M.groups()
  local c = palette.get(vim.o.background)
  local opts = config.options

  return util.merge_groups(
    require('olive_lcd.groups.editor').get(c, opts),
    require('olive_lcd.groups.syntax').get(c, opts),
    require('olive_lcd.groups.treesitter').get(c, opts),
    require('olive_lcd.groups.lsp').get(c, opts),
    require('olive_lcd.groups.plugins').get(c, opts),
    opts.overrides
  )
end

function M.load()
  local c = palette.get(vim.o.background)

  vim.o.background = c.background
  terminal_colors(c)
  util.apply_all(M.groups())
end

return M
