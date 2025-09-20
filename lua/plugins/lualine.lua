return {
  'nvim-lualine/lualine.nvim',
  event = 'ColorScheme',
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = '#15191F', bg = '#e0def4' }, -- Iris
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          insert = {
            a = { fg = '#15191F', bg = '#31748f' }, -- Iris
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          visual = {
            a = { fg = '#15191F', bg = '#c4a7e7' }, -- Iris
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          replace = {
            a = { fg = '#eb6f92', bg = '#15191F' }, -- Love
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          command = {
            a = { fg = '#15191F', bg = '#f6c177' }, -- Iris
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
          inactive = {
            a = { fg = '#15191F', bg = '#15191F' },
            b = { fg = '#45464D', bg = '#15191F' }, -- Foam
            c = { fg = '#e0def4', bg = '#15191F' },
          },
        },
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
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
