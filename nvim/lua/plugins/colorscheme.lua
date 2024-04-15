return {
  {
    'marko-cerovac/material.nvim',
    config = function()
      vim.g.material_style = 'palenight'
      -- vim.cmd('colorscheme material')
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        -- overrides = function(colors) -- add/modify highlights
        --   return {}
        -- end,
        theme = 'wave', -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      })

      -- setup must be called before loading
      vim.cmd('colorscheme kanagawa')
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup({
        variant = 'moon', -- auto, main, moon, or dawn
        dark_variant = 'moon', -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },

        groups = {
          border = 'muted',
          link = 'iris',
          panel = 'surface',

          error = 'love',
          hint = 'iris',
          info = 'foam',
          note = 'pine',
          todo = 'rose',
          warn = 'gold',

          git_add = 'foam',
          git_change = 'rose',
          git_delete = 'love',
          git_dirty = 'rose',
          git_ignore = 'muted',
          git_merge = 'iris',
          git_rename = 'pine',
          git_stage = 'iris',
          git_text = 'rose',
          git_untracked = 'subtle',

          h1 = 'iris',
          h2 = 'foam',
          h3 = 'rose',
          h4 = 'gold',
          h5 = 'pine',
          h6 = 'foam',
        },
      })
      -- vim.cmd([[colorscheme rose-pine-moon]])
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
}
