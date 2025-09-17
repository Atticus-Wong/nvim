-- lua/plugins/rose-pine.lua
function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#13161a" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "#13161a" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        palette = {
          main = {
            base = '#13161a',
            overlay = '#26292e'
          }
        }

      })

      vim.cmd("colorscheme rose-pine")
      ColorMyPencils()
    end,
  },
}
