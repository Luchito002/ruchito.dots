local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')


-- New tab
keymap.set('n', 'te', ':tabedit<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 'rl', '<C-w><')
keymap.set('n', 'rh', '<C-w>>')
keymap.set('n', 'rj', '<C-w>+')
keymap.set('n', 'rk', '<C-w>-')

-- :Explore like nerd tree
keymap.set('i', '<C-b>', '<Esc>:Lex<CR>:vertical resize 30<CR>', { noremap = true, silent = true })
keymap.set('n', '<C-b>', ':Lex<CR>:vertical resize 30<CR>', { noremap = true, silent = true })

-- Result
vim.keymap.set('n', 'n', 'nzzzv', { desc = "Goes to the next result on the search and put the cursor in the middle" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Goes to the prev result on the search and put the cursor in the middle" })
