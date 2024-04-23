require 'kickstart.options'
require 'custom.keymap'
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
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
  { import = 'custom.plugins.autoformat' },
  { import = 'custom.plugins.theme' },
  { import = 'custom.plugins.lsp' },
  { import = 'custom.plugins.git' },
  { import = 'custom.plugins.completion' },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
