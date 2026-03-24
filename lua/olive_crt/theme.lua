local config = require('olive_crt.config')
local palette = require('olive_crt.palette')
local util = require('olive_crt.util')

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
    require('olive_crt.groups.editor').get(c, opts),
    require('olive_crt.groups.syntax').get(c, opts),
    require('olive_crt.groups.treesitter').get(c, opts),
    require('olive_crt.groups.lsp').get(c, opts),
    require('olive_crt.groups.plugins').get(c, opts),
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
