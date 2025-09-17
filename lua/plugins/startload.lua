return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local db = require('dashboard')
    local pokemon = require('pokemon')
    pokemon.setup({
      number = '0143',
      size = 'auto',
    })
    db.setup({
      config = {
        header = pokemon.header(),
        shortcut = {
          --          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          --          {
          --            icon = ' ',
          --            icon_hl = '@variable',
          --            desc = 'Files',
          --            group = 'Label',
          --            action = 'Telescope find_files',
          --            key = 'f',
          --          },
        },
      },
    })
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons', 'ColaMint/pokemon.nvim' } }
}
