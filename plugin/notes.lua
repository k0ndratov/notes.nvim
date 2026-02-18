local notes = require('notes')

vim.api.nvim_create_user_command('Note', function(opts)
  notes.open(opts.args ~= '' and opts.args or nil)
end, { nargs = '?' })

vim.keymap.set('n', '<leader>no', function() notes.open() end, { desc = 'Daily note' })
vim.keymap.set('n', '<leader>nn', function() notes.browse() end, { desc = 'Browse notes' })
