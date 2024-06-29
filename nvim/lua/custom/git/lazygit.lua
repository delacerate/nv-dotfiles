return {
  'kdheepak/lazygit.nvim',
  Lazy = true,
  command = 'LazyGit',
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('telescope').load_extension 'lazygit'
  end,
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  vim.cmd [[autocmd BufEnter * :lua require("lazygit.utils").project_root_dir()]],
  vim.keymap.set('n', '<leader>lg', '<cmd>Telescope lazygit<CR>', { noremap = true, silent = true }),
}
