require 'kickstart.options'
require 'custom.keymap'
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {

  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  { import = 'custom.plugins' },
  { import = 'custom.lsp' },
  { import = 'custom.git' },
  { import = 'custom.theme' },
  { import = 'custom.notes' },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
