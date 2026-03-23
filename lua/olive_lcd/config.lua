local M = {}

M.defaults = {
  transparent = false,
  styles = {
    comments = {},
    keywords = { bold = true },
    functions = {},
    strings = {},
    variables = {},
  },
  plugins = {
    telescope = true,
    gitsigns = true,
    which_key = true,
    cmp = true,
    neo_tree = true,
    oil = true,
    notify = true,
    mini = true,
    treesitter_context = true,
  },
  overrides = {},
}

M.options = vim.deepcopy(M.defaults)

local function merge(base, extra)
  return vim.tbl_deep_extend('force', base, extra or {})
end

function M.setup(opts)
  M.options = merge(vim.deepcopy(M.defaults), opts)
end

return M
