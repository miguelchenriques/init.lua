local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = 'Find Project Files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Find Git Files'})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.inputp("Grep > ") });
end, {desc = 'Grep Search'})
