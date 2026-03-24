local M = {}

function M.apply(group, spec)
	vim.api.nvim_set_hl(0, group, spec)
end

function M.apply_all(groups)
	for group, spec in pairs(groups) do
		M.apply(group, spec)
	end
end

function M.merge_groups(...)
	local result = {}

	for _, group_set in ipairs({ ... }) do
		for group, spec in pairs(group_set or {}) do
			result[group] = spec
		end
	end

	return result
end

return M
