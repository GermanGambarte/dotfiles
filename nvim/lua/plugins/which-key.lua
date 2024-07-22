return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    window = {
      border = 'single',
    },
    plugins = { spelling = true },
  },
  config = function()
    local wk = require('which-key')
    wk.add({
      { '<leader>b', desc = '+buffers' },
      { '<leader>p', desc = 'paste from clipboard' },
      { '<leader>y', desc = 'yank to clipboard' },
      { '<leader>t', desc = 'open a terminal' },
      { '<leader>c', desc = '+code' },
      { '<leader>g', desc = '+git' },
      { '<leader>s', desc = '+search' },
      { '<leader>x', desc = '+diagnostics' },
    })
  end,
}
