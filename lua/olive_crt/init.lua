local config = require('olive_crt.config')

local M = {}

function M.setup(opts)
  config.setup(opts)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd.hi('clear')
  end

  vim.g.colors_name = 'olive-crt'

  require('olive_crt.theme').load()
end

return M
