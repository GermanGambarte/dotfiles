return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      local keymap = vim.keymap

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ['<C-k>'] = actions.move_selection_previous,
              ['<C-j>'] = actions.move_selection_next,
              ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
          file_ignore_patterns = {
            'codegen.ts',
            '.git',
            'lazy-lock.json',
            'node_modules',
            '%.lock',
            'schema.gql',
          },
          dynamic_preview_title = true,
          path_display = { 'smart' },
        },
        pickers = {
          find_files = {
            theme = 'dropdown',
            hidden = true,
          },
          buffers = {
            theme = 'dropdown',
            hidden = true,
          },
          help_tags = {
            theme = 'dropdown',
            hidden = true,
          },
          live_grep = {
            theme = 'dropdown',
            hidden = true,
          },
          lsp_references = {
            theme = 'dropdown',
          },
          lsp_definitions = {
            theme = 'dropdown',
          },
        },
      })

      keymap.set(
        'n',
        '<leader>ff',
        '<cmd>Telescope find_files<cr>',
        { desc = 'Fuzzy find files in cwd' }
      )
      keymap.set(
        'n',
        '<leader>fb',
        '<cmd>Telescope buffers<cr>',
        { desc = 'Show open buffers' }
      )
      keymap.set(
        'n',
        '<leader>fg',
        '<cmd>Telescope live_grep<cr>',
        { desc = 'Find string in cwd' }
      )
      keymap.set(
        'n',
        '<leader>fh',
        '<cmd>Telescope help_tags<cr>',
        { desc = 'Find string under cursor in cwd' }
      )
    end,
  },
}
