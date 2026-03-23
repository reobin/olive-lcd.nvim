local config = require('olive_lcd.config')

local M = {}

function M.setup(opts)
  config.setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd.hi('clear')
  end

  vim.g.colors_name = 'olive-lcd'

  require('olive_lcd.theme').load()
end

return M
