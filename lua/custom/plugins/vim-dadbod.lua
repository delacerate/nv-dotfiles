return {
  { 'tpope/vim-dadbod' },
  {
    'kristijanhusak/vim-dadbod-ui',
    config = function()
      vim.keymap.set('n', '<leader>yu', ':DBUIToggle<CR>', { desc = 'DB toggle' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>ys', ':DBUISelect<CR>', { desc = 'DB select' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>ye', ':DBUIExecute<CR>', { desc = 'DB execute' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yr', ':DBUIRename<CR>', { desc = 'DB rename' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yc', ':DBUIClear<CR>', { desc = 'DB clear' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yp', ':DBUIPick<CR>', { desc = 'DB pick' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yf', ':DBUIFindBuffer<CR>', { desc = 'DB find buffer' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yl', ':DBUILastQueryInfo<CR>', { desc = 'DB last query' }, { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>yh', ':DBUIHelp<CR>', { desc = 'DB help' }, { noremap = true, silent = true })
      vim.g.db_ui_show_help = 0
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
}
