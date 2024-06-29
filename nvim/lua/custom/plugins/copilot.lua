return {
  {
    'github/copilot.vim',
    config = function()
      vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]
      vim.keymap.set('n', '<leader>cp', '<cmd>Copilot enable<CR>', { desc = 'copilot enable' }, { silent = true })
      vim.keymap.set('n', '<leader>cd', '<cmd>Copilot disable<CR>', { desc = 'copilot disable' }, { silent = true })
      vim.keymap.set('n', '<leader>cs', '<cmd>Copilot status<CR>', { desc = 'copilot status' }, { silent = true })
    end,
  },
}
