return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  'rebelot/kanagawa.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('kanagawa').setup {
      theme = 'dark',
      options = {
        italic_comments = true,
        italic_keywords = true,
        italic_functions = true,
        italic_variables = true,
      },
    }

    -- Load the colorscheme here
    vim.cmd.colorscheme 'kanagawa-wave'

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
}
