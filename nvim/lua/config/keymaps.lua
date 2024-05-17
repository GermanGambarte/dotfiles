local keymap = vim.keymap.set
-- swap selected lines
keymap('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Swap whit line below' })
keymap('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Swap whit line above' })

keymap('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap('n', '<leader>a', 'ggVG', { desc = 'Select all' })
keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')
keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

-- buffers
keymap('n', '<S-h>', '<cmd>bprevious<CR>')
keymap('n', '<S-l>', '<cmd>bnext<CR>')
keymap('n', '<leader>bd', '<cmd>:bdelete<CR>')

-- greatest remap ever
keymap('n', '<leader>p', [["+]])

-- next greatest remap ever : asbjornHaland
keymap({ 'n', 'v' }, '<leader>y', [["+y]])
keymap({ 'n', 'v' }, '<leader>p', [["+p]])
keymap({ 'n', 'v' }, '<leader>d', [["+d]])

keymap('n', 'Q', '<nop>')
keymap('n', '<C-s>', '<cmd>w<CR>')
keymap('n', '<C-S>', '<cmd>wa<CR>')

keymap(
  'n',
  '<leader>e',
  "<cmd>lua require('oil').toggle_float()<CR>",
  { desc = 'Toogle tree' }
)

keymap('n', '<leader>ch', function()
  vim.lsp.inlay_hint(0, nil)
end, { desc = 'Toggle Inlay Hints' })
