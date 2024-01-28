return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      -- vim.cmd([[colorscheme rose-pine]])
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    opts = {
      -- transparent_mode = true,
      contrast = 'hard',
      palette_overrides = {
        dark1 = '#282828',
        -- dark2 = "#32302f",
        -- dark1 = "#1c1c1c",
        dark2 = '#3c3836',
        dark3 = '#504945',
        dark4 = '#303030',
      },
      overrides = {
        -- ['@tag'] = { fg = '#83a598' },
        -- ['@tag.attribute'] = { fg = '#fabd2f' },
        -- ['@tag.delimiter'] = { fg = '#83a598' },
        -- DiffDelete = { fg = '#282828' },
        -- DiffAdd = { fg = '#282828' },
        -- DiffChange = { fg = '#282828' },
        -- SignColumn = { bg = '#1d2021' },
      },
    },
    config = function()
      -- vim.cmd([[colorscheme gruvbox]])
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
