local M = {}

function M.setup(opts)
  if not (opts and opts.colorscheme) then return end

  vim.schedule(function()
    pcall(vim.cmd.colorscheme, opts.colorscheme)
  end)
end

return M
