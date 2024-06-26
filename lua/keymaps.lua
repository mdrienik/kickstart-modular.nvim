-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Netrw remap
vim.keymap.set('n', '<leader>mn', vim.cmd.Ex, { desc = 'Show [N]etrw directory listing' })

-- other remaps
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Move the next line to the end of this line' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Jump [D]own half a page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Jump [U]p half a page' })

vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Search [n]ext keeping the search term centered' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Search [N]previous keeping the search term centered' })

vim.keymap.set('n', '<leader>Y', "'+Y", { desc = '[Y]ank selection to system clipboard' })

-- Move selection up and down
vim.keymap.set('v', '<C-down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', '<C-down>', ':m .+1<CR>==')
vim.keymap.set('n', '<C-up>', ':m .-2<CR>==')

-- setup Ctrl-s to save current file
vim.keymap.set('n', '<C-s>', vim.cmd.update)
vim.keymap.set('i', '<C-s>', vim.cmd.update)
-- vim: ts=2 sts=2 sw=2 et
