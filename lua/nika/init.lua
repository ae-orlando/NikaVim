vim.uv = vim.uv or vim.loop

local M = {}

---@param opts? NikaVimConfig
function M.setup(opts)
  require("nika.config").setup(opts)
end

return M
