local M = {}

M.config = {
  dir = '~/notes',
  date_format = '%Y-%m-%d',
  open_cmd = 'tabnew',
}

function M.open(name)
  local dir = vim.fn.expand(M.config.dir)
  vim.fn.mkdir(dir, 'p')
  vim.cmd('cd ' .. dir)

  local filename = name or os.date(M.config.date_format)
  local filepath = dir .. '/' .. filename .. '.md'
  vim.cmd(M.config.open_cmd .. ' ' .. filepath)
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', M.config, opts or {})
end

return M
