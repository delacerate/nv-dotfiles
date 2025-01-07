return {
  'barrett-ruth/live-server.nvim',
  lazy = true,
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = true,
  vim.keymap.set('n', '<leader>ls', '<cmd>LiveServerStart<CR>', { desc = 'live server on' }, { noremap = true, silent = true }),
  vim.keymap.set('n', '<leader>lS', '<cmd>LiveServerStop<CR>', { desc = 'live server off' }, { noremap = true, silent = true }),
}
