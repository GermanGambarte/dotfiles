return {
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
        -- colors = { -- add/modify theme and palette colors
        --   palette = {},
        --   theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        -- },
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            LazyNormal = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
            -- TELESCOPE
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = {
              fg = theme.ui.fg_dim,
              bg = theme.ui.bg_m1,
            },
            TelescopeResultsBorder = {
              fg = theme.ui.bg_m1,
              bg = theme.ui.bg_m1,
            },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = {
              bg = theme.ui.bg_dim,
              fg = theme.ui.bg_dim,
            },
            -- DARK COMPLETION
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
            PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },

            -- CHANGE STRINGS COLORS
            -- Assign a static color to strings
            String = { italic = true },
            -- theme colors will update dynamically when you change theme!
            SomePluginHl = { bold = true },
          }
        end,
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
      })
      -- vim.cmd([[colorscheme rose-pine-moon]])
    end,
  },
}
