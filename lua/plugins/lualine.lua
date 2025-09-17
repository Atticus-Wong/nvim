return {
  'nvim-lualine/lualine.nvim',
  event = 'ColorScheme',
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = '#e0def4', bg = '#15191F' }, -- Text on your custom bg
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          insert = {
            a = { fg = '#31748f', bg = '#15191F' }, -- Pine
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          visual = {
            a = { fg = '#c4a7e7', bg = '#15191F' }, -- Iris
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          replace = {
            a = { fg = '#eb6f92', bg = '#15191F' }, -- Love
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          command = {
            a = { fg = '#f6c177', bg = '#15191F' }, -- Gold
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          inactive = {
            a = { fg = '#15191F', bg = '#15191F' },
            b = { fg = '#9ccfd8', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
        },
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end
}
