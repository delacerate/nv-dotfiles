return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      ['<leader>e'] = { name = 'Git', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = '[Y]Database', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = '[L]azyGit', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[F]ile search', _ = 'which_key_ignore' },
      ['<leader>x'] = { name = '[X]Trouble', _ = 'which_key_ignore' },
      ['<leader>n'] = { name = '[N]otes', _ = 'which_key_ignore' },
    }
  end,
}
