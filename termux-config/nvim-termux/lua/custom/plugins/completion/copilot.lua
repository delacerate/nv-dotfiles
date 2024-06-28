return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]
    require('copilot').setup {
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = false,
        auto_trigger = false,
      },
      -- filetypes = {
      --   yaml = false,
      --   markdown = false,
      --   help = false,
      --   gitcommit = false,
      --   gitrebase = false,
      --   hgcommit = false,
      --   svn = false,
      --   cvs = false,
      --   ["."] = false,
      -- },
      -- copilot_node_command = "node", -- Node.js version must be > 18.x
      -- server_opts_overrides = {},
    }
  end,
}
