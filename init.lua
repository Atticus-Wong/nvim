vim.g.mapleader = ' '

require("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3
vim.keymap.set("n", "<space>x", ":.lua<CR>")

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- lsp config keymaps
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)

vim.diagnostic.config({
  virtual_text = {
    source = "if_many",
    prefix = '● ',
  },
  underline = true,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Create a local variable to track the virtual text state
local show_virtual_text = true

-- Define a function to toggle the virtual text
local function toggle_virtual_text()
  show_virtual_text = not show_virtual_text
  vim.diagnostic.config({
    virtual_text = show_virtual_text
  })
end

-- Create the keymap
vim.keymap.set("n", "<leader>td", toggle_virtual_text, { desc = "Toggle Virtual Text Diagnostics" })
