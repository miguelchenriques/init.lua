local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files,
{desc = 'Find Project Files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Find Git Files'})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end, {desc = 'Grep Search'})
vim.keymap.set('n', "<leader>kb", ':Telescope keymaps<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>',
{noremap = true})

require('telescope').setup {
    extensions = {
        file_browser = {
            theme = 'ivy',
            disable_netrw = true,
        }
    }
}

require('telescope').load_extension 'file_browser'

