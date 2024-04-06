return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<C-S-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
    { '<C-S-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
    { '<C-S-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
    { '<C-S-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
    { '<C-S-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  },
}
