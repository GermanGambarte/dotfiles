return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'auto',
      icons_enabled = false,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = { 'neo-tree' },
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          separator = { left = '', right = '' },
        },
      },
      lualine_b = {
        'branch',
        'diff',
        {
          'diagnostics',
        },
      },
      lualine_c = { 'filename' },
      lualine_x = { 'filesize' },
      lualine_y = {
        {
          'filetype',
          icons_enabled = false,
        },
      },
      lualine_z = {
        {
          'location',
          icon = '',
        },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { 'neo-tree', 'lazy' },
  },
}
