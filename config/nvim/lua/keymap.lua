-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')

-- Search files
vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').find_files)

-- CRUD
vim.keymap.set('n', '<leader>w', ':w<CR>')

