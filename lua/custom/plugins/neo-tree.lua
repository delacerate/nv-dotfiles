return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          hide_hidden = false,
          hide_gitignored = false,
          always_show = { -- remains visible even if other settings would normally hide it
            '.vscode',
            '.jenkinsfiles',
          },
        },
      },
    }
  end,
  vim.keymap.set('n', '<C-e>', ':Neotree toggle filesystem reveal right<CR>', { noremap = true, silent = true }),
}
