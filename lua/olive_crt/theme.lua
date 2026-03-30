local config = require('olive_crt.config')
local palette = require('olive_crt.palette')
local util = require('olive_crt.util')

local M = {}

local function terminal_colors(c)
  local t = c.terminal

  vim.g.terminal_color_background = t.background
  vim.g.terminal_color_foreground = t.foreground

  vim.g.terminal_color_0 = t.color0
  vim.g.terminal_color_1 = t.color1
  vim.g.terminal_color_2 = t.color2
  vim.g.terminal_color_3 = t.color3
  vim.g.terminal_color_4 = t.color4
  vim.g.terminal_color_5 = t.color5
  vim.g.terminal_color_6 = t.color6
  vim.g.terminal_color_7 = t.color7
  vim.g.terminal_color_8 = t.color8
  vim.g.terminal_color_9 = t.color9
  vim.g.terminal_color_10 = t.color10
  vim.g.terminal_color_11 = t.color11
  vim.g.terminal_color_12 = t.color12
  vim.g.terminal_color_13 = t.color13
  vim.g.terminal_color_14 = t.color14
  vim.g.terminal_color_15 = t.color15
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
